#include "AppEngine.h"
#include <QDebug>
AppEngine::AppEngine(QObject *parent)
    : QObject{parent}
{
    port = new QSerialPort(this);
}

void AppEngine::openPort(int speed, int bits, int stopBits)
{
    port->setBaudRate(speed);

}
