module GetDifference
	def self.get_difference a, b
	  difference = 0
	  a.split("").each_with_index do |c, i|
	    if c != b[i]
	    	difference += 1
	    end
	  end
	  difference
	end
end