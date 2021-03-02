
class BloodOath

    @@all = []
    attr_reader :follower, :cult, :initiation_date

    def initialize(follower,cult,initiation_date)
        @follower=follower
        @cult=cult
        @initiation_date= initiation_date
        @@all << self
    end

    def self.all
        @@all
    end

    def self.first_oath
        all.find {|object|object.follower}
    end

end



puts "Bloodoath"