[![Gem Version](https://badge.fury.io/rb/country_lookup.svg)](http://badge.fury.io/rb/country_lookup)

# CountryLookup

To validate country informations such as phone number, Postal code.It also help's in Parsing phone numbers based on country from a given string.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'country_lookup'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install country_lookup

##Usage
   This gem has two modules.  
   1. Country  
   2. Phone Number
    
#Country
  This module of gem helps to get countries information such as alpha2, country_code, international_prefix, national_number_lengths, postcode_regex etc..
                                                                  
###all
   It helps to get array of all the countries information.
```ruby
 Country.all
 => [{"alpha2"=>"AF", "name"=>"Afghanistan", "country_code"=>"93", "international_prefix"=>"00", "national_destination_code_lengths"=>[2], "national_number_lengths"=>[8, 9], "postal_code"=>true, "postcode_regex"=>nil}, ....]
```

###names
   To get array of all countries names. 
```ruby
 Country.names
 => ["Afghanistan", "Aland Islands" .....]
```
###with_postal_code
   To get all Countries with Postal codes.
   
```ruby
 Country.with_postal_code
 => {"AF"=>"Afghanistan", "AX"=>"Aland Islands",  ...}
```
###without_postal_code
    To get all Countries with Postal codes.
     
```ruby
 Country.with_postal_code
 => {"AO"=>"Angola", "AG"=>"Antigua and Barbuda", ....}
 ```
###alpha2
  To get alpha2 value of given country.
  
```ruby
 Country.alpha2("United States")
 => 'US'
 ```

#Phone Number: 

   This Module of Gem helps in identifying exact phone number and country code form a given string. Below are some of the methods.
   
###extract:
   From a given string it extract the phone number.
   
```ruby
 PhoneNumber.extract("+1(333) 555-2222")
 => 13335552222
```
###parse:
  It help to differentiate country code and phone number.
  
```ruby
 PhoneNumber.parse("+1(333) 555-2222")
 => {:country_code=>"1", :number=>"3335552222"}
```

###prefix_country_code:
  It help's to prepend country code to a given phone number as specified by the end user. If no country is specified, by default it assumes as 'US'.


By default it prefixes United State's country code.
```ruby
   PhoneNumber.prefix_country_code("3335552222")
   => 13335552222
```

If you want to prefix India's country code.
```ruby
 PhoneNumber.prefix_country_code("3335552222", 'IN')
 => "913335552222"
```

 If you want to prefix United Kingdom's country code.
```ruby
 PhoneNumber.prefix_country_code("3335552222", 'GB')
  => "443335552222"
```

###country_code
 it help to get country code for a given country
 
 ```ruby
  PhoneNumber.country_code('GB')
   => "44"
 ```

## Contributing

1. Fork it ( https://github.com/maisaengineering/country_lookup/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
