
class BloodOath
    attr_reader :follower, :cult, :date

    @@all = []

    def initialize(follower,cult,date="2005")
        @follower=follower
        @cult=cult
        @date=date
        @@all << self
    end

    def self.all
        @@all
    end
    
    def initiation_date
        self.date
    end

    def self.first_oath
        all.find {|object|object}.follower
    end
    

end



puts "Bloodoath"