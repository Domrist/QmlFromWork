#include "Presenter.h"
#include "View.h"
#include "Model.h"

#include "BaseWidget.h"

Presenter::Presenter(QObject * parent)
	: QObject(parent)
{
	//
}



void Presenter::initialize(Model * model, View * view)
{
	_model = model;
	_view = view;
}



void Presenter::addWidget(BaseWidget * a_newWidget)
{
	if (a_newWidget == nullptr)
	{
		return;
	}

	_widgetCollection.push_back(a_newWidget);

	_view->addWidgetToQml(a_newWidget->createQmlObject());

}



void Presenter::updateModel()
{
	// update model with data given from ui
	for(auto & widget : _widgetCollection)
	{
		widget->writeToModel(_model);
	}

	_model->writeBDToFile();
}



void Presenter::updateView()
{
	// update view with data from model
	for(auto & widget : _widgetCollection)
	{

	}
}
