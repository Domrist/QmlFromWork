#pragma once

#include <QObject>
#include <vector>
#include <string>

#include <QQmlEngine>
#include <QQmlApplicationEngine>



class BaseWidget;
class Presenter;

class View : QObject
{
public:
	View(QObject * parent = nullptr);

	void updateView();

	void updateModelReques(); // request to _presenter to swap data from ui to model

	void setPresenter(Presenter * presenter);

	void addWidgetToQml(std::string a_newElement);

	QQmlApplicationEngine & getEngine();

private:

	Presenter * _presenter;
	QQmlApplicationEngine _engine;

};