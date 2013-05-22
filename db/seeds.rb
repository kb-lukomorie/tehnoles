# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# ['repair', 'Ремонтно-строительные работы']

WorkItem.destroy_all

repair_items = ['Изготовление, монтаж, ремонт металлических конструкций',
'Установка дверных и оконных блоков',
'Полы (деревянные, бетонные, ламинат, линолеум и т.д.)',
'Штукатурно-малярные работы',
'Сантехнические работы',
'Земляные работы',
'Фундаменты',
'Кровли',
'Фасады']
repair_items.each do |name|
  WorkItem.create work_type: 'repair', name: name
end

# ['development', 'Малоэтажное строительство']

dev_items = ["Земляные работы", "Фундаменты", "Сети (водоснабжение, канализация, электричество)",
             "Гидроизоляция", "Шумо-теплоизоляция", "Бетонные и каменные работы", "Кровельные работы", "
             Устройство внутренних инженерных систем", "Облицовочные работы", "Ограждения (заборы)"]

dev_items.each do |name|
  WorkItem.create work_type: 'development', name: name
end
# ['eco', 'Реализация товаров из Японии']

eco_items = ["Ионизатор активатор воды", "Косметический прибор", "Бады"]

eco_items.each do |name|
  WorkItem.create work_type: 'eco', name: name
end
