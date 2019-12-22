class ScoreKeeper
    def initialize
      @total_score = 0
      @count = 0
    end
    def << (sc)
        @total_score += sc
        @count += 1
        self
    end
    def average
        fail "N○ sc○res" if @count == 0
        Float(@total_score) / @count
    end
end

scores = ScoreKeeper.new
scores << 10 << 20 << 40
puts "Average = #{scores.average}"

