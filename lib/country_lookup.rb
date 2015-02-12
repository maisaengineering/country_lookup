require File.join(File.dirname(__FILE__), 'country.rb')
require File.join(File.dirname(__FILE__), 'phone_number.rb')

COUNTRIES = YAML.load_file(File.join(File.dirname(__FILE__), 'data', 'countries.yml'))
