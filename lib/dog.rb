class Dog
	def initialize(name, breed, owner_name)
		@name = name
		@breed = breed
		@owner = owner_name
	end

	def name 
		@name
	end

	def bark
		"Woof!"
	end

	def breed
		@breed
	end

	def owner
		@owner
	end
end
