session = DropboxSession.new(ENV['DROPBOX_APP_KEY'], ENV['DROPBOX_APP_SECRET'])

session.get_request_token

authorize_url = session.get_authorize_url

# Make the user sign in and authorize this token
puts "Зайди по ссылке и нажми 'Можно'. У тебя есть 45 секунд на это"
puts "АВТОРИЗАЦИЯ:", authorize_url

sleep(45)

# This will fail if the user did not visit the above URL and hit 'Allow'
session.get_access_token

client = DropboxClient.new(session, ENV['DROPBOX_ACCESS_TYPE'])
puts "linked account:", client.account_info().inspect

files = client.metadata('/Public/medvedev')['contents']

# wi.photos.create(image: File.open('/home/artur/Изображения/1.jpg', 'rb'))
%w(fasad heating indor kindergarten minfin wc)

# ['repair', 'Ремонтно-строительные работы']

WorkItem.destroy_all

repair_items = ['Изготовление, монтаж, ремонт металлических конструкций', 'Установка дверных и оконных блоков',
                'Полы (деревянные, бетонные, ламинат, линолеум и т.д.)', ['Штукатурно-малярные работы', 'indor'],
                ['Сантехнические работы', 'wc'], 'Земляные работы', 'Фундаменты', 'Кровли', ['Фасады', 'fasad']]

repair_items.each do |item|
  if item.is_a? String
    WorkItem.create work_type: 'repair', name: item
  else
    wi = WorkItem.create work_type: 'repair', name: item[0]
    images = files.select {|f| f['path'].include? item[1]}
    images.each do |image|
      file = File.new('image.jpg', 'wb')
      file.puts client.get_file(image['path'])
      wi.photos.create(image: file)
    end
  end
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