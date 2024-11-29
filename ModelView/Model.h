#pragma once

#include <QObject>
#include <QJsonObject>
#include <QJsonDocument>

class Presenter;

class Model : public QObject
{
public:

	Model(QObject * parent = nullptr);

	void setPresenter(Presenter * presenter);

	void writeBDToFile();

	void setFieldValue(QString a_fieldName, QVariant a_valueToSet);

	void startChange();

	QJsonObject & getJsonObject();

private:

	QJsonObject _jsonObject;
	QJsonDocument _jsonDocument;

	Presenter * _presenter{nullptr};
};
