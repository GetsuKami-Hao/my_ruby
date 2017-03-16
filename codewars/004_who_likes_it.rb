=begin
	Description:

	You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.

	Implement a function likes :: [String] -> String, which must take in input array, containing the names of people who like an item. It must return the display text as shown in the examples:

	likes [] // must be "no one likes this"
	likes ["Peter"] // must be "Peter likes this"
	likes ["Jacob", "Alex"] // must be "Jacob and Alex like this"
	likes ["Max", "John", "Mark"] // must be "Max, John and Mark like this"
	likes ["Alex", "Jacob", "Mark", "Max"] // must be "Alex, Jacob and 2 others like this"

	For more than 4 names, the number in and 2 others simply increases.
=end

require 'test/unit'

def likes(names)
	if names.empty?
		"no one likes this"
	elsif names.count == 1
		"#{names[0]} likes this"
	elsif names.count == 2
		names.each { |n| }.join(" and ") << " like this"
	elsif names.count == 3
		"#{names[0]}, #{names[1]} and #{names[2]} like this"
	else
		"#{names[0]}, #{names[1]} and #{names.count - 2} others like this"   
	end
end

def other_likes(names)
	case names.length
	when 0
		"no one likes this"
	when 1
		"%s likes this" % names
	when 2
		"%s and %s like this" % names
	when 3
		"%s, %s and %s like this" % names
	else
		"%s, %s and %s others like this" % [names[0],names[1],names.length-2]
	end
end

class TestBug < Test::Unit::TestCase
	def test_likes_method
		assert_equal(likes([]), 'no one likes this')
		assert_equal(likes(['Peter']), 'Peter likes this')
		assert_equal(likes(['Jacob', 'Alex']), 'Jacob and Alex like this')
		assert_equal(likes(['Max', 'John', 'Mark']), 'Max, John and Mark like this')
		assert_equal(likes(['Alex', 'Jacob', 'Mark', 'Max']), 'Alex, Jacob and 2 others like this')
	end

end
