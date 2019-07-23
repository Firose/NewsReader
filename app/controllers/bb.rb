class User
	attr_reader :a
	def initialize(a)
		@name = "Firose"
	end
	def u()
		puts "hii #{@@name}"
	end
	def v
		puts "hello#{@@name}"
	end
end
su = User.u("i")
puts su