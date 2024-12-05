#include "Timer.h"

Timer::Timer(QQuickItem *parent)
	: QQuickPaintedItem(parent)
{
	//
}

void Timer::paint(QPainter * painter)
{
	QBrush  brush(Qt::red);
	QBrush  brushActive(Qt::black);
	QBrush  brushNonActive(Qt::green);

	painter->setPen(Qt::NoPen);

	painter->setBrush(brushNonActive);
	painter->drawEllipse(boundingRect().adjusted(1,1,-1,-1));
	painter->setBrush(brushActive);
	painter->drawPie(boundingRect().adjusted(1,1,-1,-1),
					 90*16,
					 0*16);

	painter->setBrush(brush);
	painter->drawEllipse(boundingRect().adjusted(10,10,-10,-10));
}


QString Timer::getAName()
{
	return _aName;
}



void Timer::setAName(const QString & a_string)
{
	_aName = a_string;
}
