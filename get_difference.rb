module GetDifference
	def self.get_difference a, b
	  difference = 0
	  
	  if a.length > b.length
	  	longer_sentence = a
	  	shorter_sentence = b
	  else 
	  	longer_sentence = b
	  	shorter_sentence = a 
	  end
	  longer_sentence.split("").each_with_index do |c, i|
	    if c != shorter_sentence[i]
	    	difference += 1
	    end
	  end
	  difference
	end
end