# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Page.create "content"=>"<ol>\r\n\t<li>Изготовление, монтаж, ремонт металлических конструкций</li>\r\n\t<li>Установка дверных и оконных блоков</li>\r\n\t<li>Полы (деревянные, бетонные, ламинат, линолеум и т.д.)</li>\r\n\t<li>Штукатурно-малярные работы</li>\r\n\t<li>Сантехнические работы</li>\r\n\t<li>Земляные работы</li>\r\n\t<li>фундаменты</li>\r\n\t<li>Кровли</li>\r\n\t<li>Фасады</li>\r\n</ol>\r\n", "name"=>"repair", "title"=>"Ремонтно-строительные работы"
Page.create "name"=>"development", "title"=>"Малоэтажное строительство", "content"=>"<ol>\r\n\t<li style=\"margin-right: 0cm;\">Земляные работы</li>\r\n\t<li style=\"margin-right: 0cm;\">Фундаменты</li>\r\n\t<li style=\"margin-right: 0cm;\">Сети (водоснабжение, канализация, электричество)</li>\r\n\t<li style=\"margin-right: 0cm;\">Гидроизоляция</li>\r\n\t<li style=\"margin-right: 0cm;\">шумо-теплоизоляция</li>\r\n\t<li style=\"margin-right: 0cm;\">бетонные и каменные работы</li>\r\n\t<li style=\"margin-right: 0cm;\">Кровельные работы</li>\r\n\t<li style=\"margin-right: 0cm;\">Устройство внутренних инженерных систем</li>\r\n\t<li style=\"margin-right: 0cm;\">Облицовочные работы</li>\r\n\t<li style=\"margin-right: 0cm;\">Ограждения (заборы)</li>\r\n</ol>\r\n"
Page.create "name"=>"eco", "title"=>" Реализация товаров из Японии", "content"=>"<ol>\r\n\t<li style=\"margin-right: 0cm;\">Ионизатор активатор воды</li>\r\n\t<li style=\"margin-right: 0cm;\">Косметический прибор</li>\r\n\t<li style=\"margin-right: 0cm;\">Бады</li>\r\n</ol>\r\n"