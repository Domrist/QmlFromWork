#include "WidgetThree.h"
#include <QDebug>


WidgetThree::WidgetThree(QObject * parent)
	: BaseWidget(parent)
{
}



void WidgetThree::update()
{
	qDebug() << "WidgetThree update";
}



void WidgetThree::writeToModel(Model * a_model)
{
	qDebug() << "WidgetThree write data to model";
}



void WidgetThree::udpateView(Model * a_model, View * a_view)
{
	qDebug() << "WidgetThree update view by data from model";
}
