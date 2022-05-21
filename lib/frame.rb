class Frame

    attr_reader :roll, :rolls, :frame_score

    def initialize
        @roll
        @rolls = []
    end

    def input_roll(roll)
        @roll = roll
        @rolls << @roll 
    end 

    def roll_less_than_ten?
        true if @roll <= 9
    end

    def frame_less_than_ten?
        @rolls.sum <= 9 ? true : false
    end

    def frame_score
        @frame_score = []
        @frame_score += @rolls if @rolls.sum <= 9
        @frame_score.sum
    end


end