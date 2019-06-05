class Game

  attr_reader :started

  def start
    @started = true
	@finished = false
  end

  def started?
    self.started || false
  end
  
  def finished?
    self.finished || false
  end

  def play(left = nil, right = nil)
    raise 'Game must first be started' unless started?
    return nil unless (left && right)
    
	if(left == right)
	  "Tie game. Try again!"
	elsif ((left == :rock && right == :scissors) || (right == :rock && left == :scissors))
	  @finished = true
      "Rock beats scissors!"
	elsif ((left == :paper && right == :rock) || (right == :rock && left == :paper))
      @finished = true
	  "Paper beats rock!"
	elsif ((left == :scissors && right == :paper) || (right == :paper && left == :scissors))
      @finished = true
	  "Scissors beats paper!"
    else
      :UNKNOWN
    end
  end

end