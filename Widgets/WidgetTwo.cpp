#include "WidgetTwo.h"
#include <QDebug>


#include <thread>
// #include "../ModelView/Presenter.h"
// #include "../ModelView/Model.h"


WidgetTwo::WidgetTwo(QObject * parent)
	: BaseWidget(parent)
{
	createQmlObject();
	std::thread t = std::thread([this](){

		char s = 0;
		while(true)
		{
			setaZPos(++s);
			std::this_thread::sleep_for(std::chrono::milliseconds(50));
		}

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
	if (!a_model->getJsonObject().contains("zPosition"))
	{
		return;
	}

	a_model->getJsonObject()["zPosition"] = _zPos;

}


void WidgetTwo::udpateView(Model * a_model, View * a_view)
{
	// denis - update view by data
}
