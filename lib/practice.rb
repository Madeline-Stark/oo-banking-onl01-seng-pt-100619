# Check Learn dashboard every Monday (changes usually posted Friday prev week)


#Before your pod, please Slack me what lesson you’re currently on, if you’re on track, or behind, and any blockers you have. 
#(ex: On Track, Current Lesson: Intro to Arrays, Blockers: Struggling with time management) Please do this even if you can't make a pod meeting that week.

# Identify self in different contexts:
class Cat 
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all 
        puts self
    end

    def meow 
        puts "meow"
        puts self
    end


end 
taro = Cat.new("taro")
Cat.all
taro.meow

# Breakout rooms:
# driver + navigator 

# Go over solution
# If time, do triangle classification lab