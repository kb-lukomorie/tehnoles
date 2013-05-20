WORK_TYPES = {repair: 'Ремонтно-строительные работы',
              development: 'Малоэтажное строительство',
              eco: 'Реализация товаров из Японии'}

# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Tehnoles3::Application.initialize!

require File.expand_path('../../lib/extensions/paperclip/helpers', __FILE__)