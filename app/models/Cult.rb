
class Cult
    @@all = []
    @@followers = []
    attr_accessor :name, :location, :founding_year, :slogan

    def initialize(name,location,founding_year,slogan)
        @name=name
        @location=location
        @founding_year=founding_year
        @slogan=slogan
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower)
        @@followers << follower
    end

    def cult_follower
        BloodOath.all.select {|object|self==object.cult}
    end

    def cult_population
        cult_follower.size
    end    

    def self.find_by_name(name)
        BloodOath.all.select {|object| name == object.follower.name} 
    end

    def self.find_by_location(location)
        array = BloodOath.all.select {|object| location == object.cult.location} 
        array = array.map {|bloodoath|bloodoath.cult}
        array.uniq
    end

    def self.find_by_founding_year(year)
        array = BloodOath.all.select {|object| year == object.cult.founding_year} 
        array = array.map {|bloodoath|bloodoath.cult}
        array.uniq
    end

    def average_age
        # array = BloodOath.all.select {|object|self==object.cult}
        # array.map {|object|object.age}
        new_array = []
        BloodOath.all.each do |object|
            if object.cult == self
                new_array << object.follower.age
            end
        end
        var = new_array.sum.to_f / new_array.size.to_f
    end

    def my_followers_mottos
        array = BloodOath.all.select {|object|self==object.cult}
        array.map {|object|object.follower.life_motto}
        #binding.pry
            # array=[]
            # BloodOath.all.each do |object|
            #   if self==object.cult
            #     array << object.follower.life_motto
            #   end
            # end
            # array
    end

    def self.least_popular
        pop = 100000000000000000000000
        cult = nil
        Cult.all.each do |object|
            #binding.pry
            if object.cult_population.length < pop 
                pop = object.cult_population.length
                cult = object
                #binding.pry
            end
        end
        cult
       
        # all.min_by {|object| object.}
    end

    def self.most_popular
        all.max_by {|object| object.cult_follower.count}
    end

    def self.most_common_location
        all.find {|cult|cult == self.most_popular}.location
    end





end




puts "cult"