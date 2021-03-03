
class Cult
   
    attr_reader :name, :slogan,:location, :founding_year
    
    @@all = []
    
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

    #all bloodoaths tied to the cult
    def bloodoaths
        BloodOath.all.select {|object|object.cult == self}
    end

    #all the followers in a specific cult
    def cult_followers
        bloodoaths.map {|bloodoaths|bloodoaths.follower}
    end

    #add a follower to the cult
    def recruit_follower(follower)
        cult_followers << follower
    end

    #returns an integer that is the number of followers a cult has
    def cult_population
        cult_followers.size
    end

    #takes a name as a string and returns 
    #a cult whose instance mathes the argument
    def self.find_by_name(name)
        all.find {|cult|cult.name==name}
    end

    def self.find_by_location(location)
        all.find {|cult|cult.location==location}
    end

    def self.find_by_founding_year(year)
        all.find {|cult|cult.founding_year==year}
    end

    #find the average age of a cult
    def average_age
        cult_followers.map {|follower|follower.age}.sum.to_f / cult_population.to_f
    end

    
    #prints out the mottos of all the followers of this cult
    def mottos
        cult_followers.map {|follower|follower.motto}
    end

    def my_followers_mottos
        puts mottos
    end

    #least popular cult, the one with the least number of followers
    def self.least_popular
        #follower_count = hash.new(0)
        all.min_by {|object|object.cult_followers.count}
        
    end

    def self.most_common_location
        var= all.max_by {|object|object.location}
        puts var.location
    end

end




puts "cult"