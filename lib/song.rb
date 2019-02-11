class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
end

y = new Song("hello")
puts y.name