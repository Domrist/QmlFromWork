#include "WidgetTwo.h"
#include <QDebug>


#include <thread>
#include "../ModelView/Presenter.h"


WidgetTwo::WidgetTwo(QObject * parent)
	: BaseWidget(parent)
{
	createQmlObject();
	std::thread t = std::thread([this](){
		std::this_thread::sleep_for(std::chrono::milliseconds(5000));
		setaZPos(1000);
	});

	t.detach();
}



void WidgetTwo::update()
{
	qDebug() << "WidgetTwo update";
}



float WidgetTwo::getaZPos()
{
	return _zPos;
}



void WidgetTwo::setaZPos(float newValue)
{
	_zPos = newValue;
	emit aZPosChanged();
}



void WidgetTwo::writeToModel(Model * a_model)
{
	qDebug() << "WidgetTwo write data to model";
}


void WidgetTwo::udpateView(Model * a_model, View * a_view)
{
	// denis - update view by data
}
