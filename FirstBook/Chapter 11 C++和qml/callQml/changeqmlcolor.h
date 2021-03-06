#ifndef CHANGEQMLCOLOR_H
#define CHANGEQMLCOLOR_H

#include <QObject>
#include <QTimer>

class ChangeQmlColor : public QObject
{
    Q_OBJECT
public:
    explicit ChangeQmlColor(QObject *target, QObject *parent = nullptr);
    ~ChangeQmlColor();

signals:

public slots:
    void onTimeout();

private:
    QTimer m_timer;
    QObject *m_target;
};

#endif // CHANGEQMLCOLOR_H
