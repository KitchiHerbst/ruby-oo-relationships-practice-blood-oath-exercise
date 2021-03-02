
class Follower
    @@all = []
    attr_reader :name 
    attr_accessor :age, :life_motto

    def initialize(name,age,life_motto)
        @name=name
        @age=age
        @life_motto=life_motto
        @@all << self

    end

    def self.all
        @@all
    end

    def bloodoaths
        BloodOath.all.select {|object|self==object.follower}
    end

    def cults
        bloodoaths.map {|object|object.cult}
    end

    def join_cult(cult)
        BloodOath.new(self,cult)
    end

    def self.of_a_certain_age(age)
        Follower.all.select {|object|object.age >= age}
    end

    def my_cults_slogans
        cults.map {|cult|cult.slogan}
    end

    def self.most_active
        @@all.max_by {|object|object.cults.length}
    end

    def self.top_ten
        all.sort {|object|object.cults.length}.reverse[0..10]
    end
    

end
puts "Followers"