
module Country
  extend self

  def all
    COUNTRIES.values
  end

  def names
   all.map{|country| country["name"]}
  end

  def with_postal_code
    Hash[all.map{|country| [country['alpha2'],country['name']] if country["postal_code"]}.compact]
  end

  def without_postal_code
    Hash[all.map{|country| [country['alpha2'],country['name']] unless country["postal_code"]}.compact]
  end

  def alpha2(country_name='')
     country= all.select{|country| country["name"].upcase.eql?(country_name.upcase)}.first
     country["alpha2"] if country
  end

end