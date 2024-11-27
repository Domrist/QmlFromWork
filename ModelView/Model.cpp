#include "Model.h"

#include "Presenter.h"
#include <QFile>

Model::Model(QObject * parent)
	: QObject(parent)
{
	//
	_jsonObject["zHeight"] = 0;
	_jsonObject["aName"] = "";
}



void Model::setPresenter(Presenter * presenter)
{
	_presenter  = presenter;
}



void Model::writeBDToFile()
{
	QFile file("localBD");
	file.open(QFile::WriteOnly);
	_jsonDocument.setObject(_jsonObject);
	file.write(_jsonDocument.toJson());
}



void Model::setFieldValue(QString a_fieldName, QVariant a_valueToSet)
{
	if (!_jsonObject.contains(a_fieldName))
		return;

	// _jsonObject[a_fieldName].toObject().value( = a_valueToSet;
}
