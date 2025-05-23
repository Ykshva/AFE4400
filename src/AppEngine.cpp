#include "AppEngine.h"
#include <QDebug>
AppEngine::AppEngine(QObject *parent)
    : QObject{parent}
{
    port = new QSerialPort(this);
    connect(port, &QSerialPort::readyRead, this, &AppEngine::readPortData);
}

AppEngine::~AppEngine()
{
    delete port;
}

void AppEngine::catchPortName(QString portName)
{
    port->setPortName(portName);
}

void AppEngine::openPort(int speed, int bits, int stopBits)
{
    port->setBaudRate(speed);
    port->setDataBits(QSerialPort::Data8);
    port->setStopBits(QSerialPort::OneStop);

    if(!port->open(QIODeviceBase::ReadWrite))
    {
        qDebug() << "ERROR to open port";

        QSerialPortInfo portInfo(*port);
        qDebug() << "Port:" << portInfo.portName() << "\n"
            << "Location:" << portInfo.systemLocation() << "\n"
            << "Description:" << portInfo.description() << "\n"
            << "Manufacturer:" << portInfo.manufacturer() << "\n"
            << "Serial number:" << portInfo.serialNumber() << "\n";
    }
    else
    {
        qDebug() << "port was opened";
    }

}

void AppEngine::detectAvailablePorts()
{
    auto listOfPorts = QSerialPortInfo::availablePorts();
    foreach (auto port, listOfPorts) {
        if(port.description() != "")
            namesOfPorts.push_back(port.portName() + port.serialNumber());
    }
}

void AppEngine::readPortData()
{    
    qDebug() << "HERE!!!";
    if(port->isOpen())
    {
        qDebug() << "HERE2!!!";
        emit dataChanged(port->readLine());
    }
}

void AppEngine::sendData(QString data)
{
    port->write(data.toStdString().c_str());
}
