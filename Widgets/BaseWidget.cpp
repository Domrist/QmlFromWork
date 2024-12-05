#include <QObject>
#include "BaseWidget.h"
#include <QDebug>

#include "../ModelView/Model.h" // shieeeet
#include "../ModelView/View.h"

#include "../ModelView/Presenter.h"

BaseWidget::BaseWidget(QQuickItem * parent):
	QQuickPaintedItem(parent)
{
}



void BaseWidget::update()
{

}



void BaseWidget::writeToModel(Model * a_model)
{
	// base update model
}



void BaseWidget::udpateView(Model * a_model, View * a_view)
{
	// base update of view
}



void BaseWidget::setIsVisible(bool a_newStatus)
{
	_isEnable = a_newStatus;
	emit isVisibleChanged();
}



bool BaseWidget::isVisible()
{
	return _isEnable;
}



std::string BaseWidget::createQmlObject()
{
	std::string res = "Item {\n";

	{	//	output of every Q_PROPERTY of Q_OBJECT
		/*auto mo = this->metaObject();

		std::vector<std::pair<QString, QVariant> > v;

		qDebug() << "## Properties of" << this << "##";
		do {
			qDebug() << "### Class" << mo->className() << "###";


			v.reserve(mo->propertyCount() - mo->propertyOffset());
			for (int i = mo->propertyOffset(); i < mo->propertyCount();++i)
				v.emplace_back(mo->property(i).name(),mo->property(i).read(this));
			// std::sort(v.begin(), v.end());

		} while((mo = mo->superClass()));

		for (auto &i : v)
			qDebug() << i.first << "=>" << i.second;
		*/
	}

	res += "\n}";

	return res;
}



void BaseWidget::paint(QPainter *painter)
{
	//

	qDebug() << "QQQQ";
}
