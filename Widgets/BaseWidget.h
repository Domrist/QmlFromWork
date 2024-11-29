#pragma once

#include <QObject>
#include <qqml.h>
#include <string>

#include "../ModelView/Presenter.h"
#include "../ModelView/Model.h"

class Model;
class View;

class BaseWidget : public QObject
{
	Q_OBJECT
	Q_PROPERTY(bool isVisible READ isVisible WRITE setIsVisible NOTIFY isVisibleChanged )

public:

	BaseWidget(QObject * parent = nullptr);

	Q_INVOKABLE virtual void update();
	Q_INVOKABLE void setIsVisible(bool newValue);

	bool isVisible();

	virtual void writeToModel(Model * a_model);
	virtual void udpateView(Model * a_model, View * a_view);

	std::string createQmlObject();

signals:
	void isVisibleChanged();

private:
	bool _isEnable{true};

};
