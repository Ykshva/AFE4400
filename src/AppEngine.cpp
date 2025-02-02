#include "AppEngine.h"
#include <QDebug>
AppEngine::AppEngine(QObject *parent)
    : QObject{parent}
{

}

void AppEngine::print()
{
    qDebug() << "button pressed";
}
