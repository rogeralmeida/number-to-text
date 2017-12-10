class NumberConverter

	MAX_SINGULAR_WORD_NUMBER = 19

	def initialize
		@singulars = {1 => "one", 2 => "two", 15 => "fifteen"}
		@tens = {2 => "twenty", 4 => "forty"}
		@hundreds = {1 => "one hundred and "} 
	end 

	def converter number
		as_text = ""
		remain_number = number

		if (remain_number > 99)
			hundreds_count = 0 
			while remain_number >= 100 do 
				remain_number -= 100
				hundreds_count += 1
			end
			as_text += @hundreds[hundreds_count] 
		end
		if (remain_number > MAX_SINGULAR_WORD_NUMBER)
			tens_count = 0
			while  remain_number >= 10 do
				remain_number -= 10
				tens_count += 1
			end
			as_text += @tens[tens_count]
		end
		if remain_number > 0
			as_text += as_text.empty? ? @singulars[remain_number] : " #{@singulars[remain_number]}"
		end
		as_text
	end
end