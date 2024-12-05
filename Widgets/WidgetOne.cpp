#include "WidgetOne.h"

#include <QDebug>


WidgetOne::WidgetOne(QQuickItem * parent)
	: BaseWidget(parent)
{
	createQmlObject();
}


QString WidgetOne::getAName()
{
	return _aName;
}



void WidgetOne::setAName(const QString & string)
{
	_aName = string;
	emit aNameChanged();
}




void WidgetOne::update()
{
	qDebug() << "WidgetOne update";
}



void WidgetOne::writeToModel(Model * a_model)
{
	qDebug() << "WidgetOnd write data to model";

}



void WidgetOne::udpateView(Model * a_model, View * a_view)
{
	qDebug() << "UPdate view with data from model";
	// take data from model
}



void WidgetOne::paint(QPainter *painter)
{
	qDebug() << "WOONE";
	QBrush  brush(Qt::red);               // выбираем цвет фона, ...
	QBrush  brushActive(Qt::red);       // активный цвет ободка, ...
	QBrush  brushNonActive(Qt::red); // не активный цвет ободка

	painter->setPen(Qt::NoPen);                             // Убираем абрис
	painter->setRenderHints(QPainter::Antialiasing, true);  // Включаем сглаживание

	painter->setBrush(brushNonActive);                          // Отрисовываем самый нижний фон в виде круга
	painter->drawEllipse(boundingRect().adjusted(1,1,-1,-1));   // с подгонкой под текущие размеры, которые

}
