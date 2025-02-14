class Zoo

    attr_accessor :name 
    attr_reader :location

    @@all = []

    def self.all
        @@all
    end

    def initialize(name, location)
        @name = name
        @location = location

        self.class.all << self
    end

    def animals
        Animal.all.select{|animal| animal.zoo == self}
    end

    def animal_species
        animals.map{|animal| animal.species}.uniq
    end

    def find_by_species(species)
        animals.select{|animal| animal.species == species}
    end

    def animal_nicknames
        animals.map{|animal| animal.nickname }
    end

    def self.find_by_location(location)
        all.select{|zoo| zoo.location == location}
    end

end
