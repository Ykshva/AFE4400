#ifndef APPENGINE_H
#define APPENGINE_H

#include <QSerialPort>
#include <QSerialPortInfo>
#include <QObject>
#include <QStringList>

class AppEngine : public QObject
{
    Q_OBJECT
public:
    explicit AppEngine(QObject *parent = nullptr);
    ~AppEngine();

private:
    QSerialPort* port;
    QStringList namesOfPorts;

public slots:   
    void catchPortName(QString portName);
    void openPort(int speed, int bits, int stopBits);
    void detectAvailablePorts();
    QStringList getNamesOfPorts() { return namesOfPorts; }

signals:
};

#endif // APPENGINE_H
