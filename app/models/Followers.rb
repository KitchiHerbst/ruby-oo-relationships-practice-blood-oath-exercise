
class Follower
    attr_reader :name, :age, :motto
    @@all =[]

    def initialize(name,age,motto)
        @name=name
        @age=age
        @motto=motto
        @@all << self
    end

    def self.all
        @@all
    end

    #gets all bloodoaths tied to this follower
    def bloodoaths
        BloodOath.all.select {|object|object.follower==self}
    end

    #gives an array of cults this person is in
    def cults
        bloodoaths.map {|object|object.cult}
    end

    #want to be able to join a cult
    def join_cult(cult)
        BloodOath.new(self,cult)
    end

    def self.of_a_certain_age(number)
        all.select {|object|object.age>=number}
    end

    #prints out all of the slogans for this followers cults
    def my_cults_slogans
        puts cults.map {|cult|cult.slogan}
    end

    # returns the follower instance who has joined the most cults
    def self.most_active
        all.max_by {|object|object.cults.length}
    end

    #returns an array of followers that are the 10 most active in cults
    def self.top_ten
        all.sort {|object|object.cults.length}.reverse[0..10]
    end

    #returns a unique `Array` of followers who are in the same cults as you
    def fellow_cult_members
        cults.each do |cult|
            
        

        
        end
    end

end
puts "Followers"