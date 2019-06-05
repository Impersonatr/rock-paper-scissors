class Game

  attr_reader :started

  def start
    @started = true
  end

  def started?
    self.started || false
  end

  def play(left = nil, right = nil)
    raise 'Game must first be started' unless started?
    return nil unless (left && right)
    
	if(left == right)
	  "Tie game. Try again!"
	elsif ((left == :rock && right == :scissors) || (right == :rock && left == :scissors))
      "Rock beats scissors!"
	elsif ((left == :paper && right == :rock) || (right == :rock && left == :paper))
      "Paper beats rock!"
	elsif ((left == :scissors && right == :paper) || (right == :paper && left == :scissors))
      "Scissors beats paper!"
    else
      :UNKNOWN
    end
  end

end