#Использовать ".."
#Использовать 1bdd

КаталогПроекта = ОбъединитьПути(ТекущийСценарий().Каталог, "..");

КаталогФич = ОбъединитьПути(КаталогПроекта, "features");
ПутьФичи = ОбъединитьПути(КаталогПроекта, "features", АргументыКоманднойСтроки[0]);
Файл_КаталогФич = Новый Файл(КаталогФич);
ФайлФичи = Новый Файл(ПутьФичи);

ИсполнительБДД = Новый ИсполнительБДД;
РезультатВыполнения = ИсполнительБДД.ВыполнитьФичу(ФайлФичи, Файл_КаталогФич);
ИтоговыйРезультатВыполнения = ИсполнительБДД.ПолучитьИтоговыйСтатусВыполнения(РезультатВыполнения);

Сообщить(ИтоговыйРезультатВыполнения);
Если ИтоговыйРезультатВыполнения = ИсполнительБДД.ВозможныеСтатусыВыполнения().Сломался Тогда
	
	ВызватьИсключение 1;
	
КонецЕсли;