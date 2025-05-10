#include "AppEngine.h"
#include <QDebug>
AppEngine::AppEngine(QObject *parent)
    : QObject{parent}
{
    port = new QSerialPort(this);
}

AppEngine::~AppEngine()
{
    delete port;
}

void AppEngine::openPort(int speed, int bits, int stopBits)
{
    port->setBaudRate(speed);
    port->setDataBits(QSerialPort::Data8);
    port->setStopBits(QSerialPort::OneStop);
    port->setPortName("COM5");

    if(!port->open(QIODeviceBase::ReadWrite))
    {
        qDebug() << "ERROR to open port";
    }
    else
    {
        qDebug() << "port was opened";
    }

}
