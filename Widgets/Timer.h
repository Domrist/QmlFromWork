#pragma once

#include <QObject>
#include <qqml.h>
#include <QString>
#include <QPainter>

#include <QQuickPaintedItem>

class Timer : public QQuickPaintedItem
{
	Q_OBJECT
	Q_PROPERTY(QString aName READ getAName WRITE setAName NOTIFY aNameChanged )
public:
	Timer(QQuickItem * parent = nullptr);

	QString getAName();

	void setAName(const QString & string);

	void paint(QPainter * a_painter) override;

private:
	QString _aName;

signals:
	void aNameChanged();

};
