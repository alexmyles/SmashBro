class SmashBro
    attr_accessor :name, :guide, :tierdata, :weight

    @@all=[]

    def initialize(name, guide, tierdata, weight)
        @name = name
        @guide = guide
        @tierdata = tierdata
        @weight = weight
        @@all << self
    end

    def self.all
        @@all
    end
end