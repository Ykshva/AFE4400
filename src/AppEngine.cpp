#include "AppEngine.h"
#include <QDebug>
AppEngine::AppEngine(QObject *parent)
    : QObject{parent}
{

}

void AppEngine::print()
{
    qDebug() << comSettings.speed;
    qDebug() << comSettings.countOfBits;
    qDebug() << comSettings.countOfStopBits;
}

void AppEngine::setCOMSpeed(QString speed)
{
    comSettings.speed = speed;
}

void AppEngine::setCOMBits(QString bits)
{
    comSettings.countOfBits = bits;
}

void AppEngine::setCOMStopBits(QString stopBits)
{
    comSettings.countOfStopBits = stopBits;
}
