require 'HTTParty'
require 'json'

class Product
  url = 'https://fomotograph-api.udacity.com/products.json'
  DATA = HTTParty.get(url)['photos']
end
