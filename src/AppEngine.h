#ifndef APPENGINE_H
#define APPENGINE_H

#include <QObject>

class AppEngine : public QObject
{
    Q_OBJECT
public:
    explicit AppEngine(QObject *parent = nullptr);

public slots:
    void print();

signals:
};

#endif // APPENGINE_H
