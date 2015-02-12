
module Country
  extend self
  def names
   all.map{|country| COUNTRIES[country]["name"]}
  end

  def all
    COUNTRIES.keys
  end

end