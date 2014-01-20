monster_game ={"monster1" => 500, "monster2" => 500}
5.times do |rounds|
	puts "Round #{rounds + 1}:"
	monster_game.each do |key, value|
		if key == "monster1" 
			damage = rand(0..100)
			puts "#{key} attacks monster2 with #{damage} damgage"
			@monster2 = value - damage
			monster_game["monster2"] -= damage 
			puts "monster2's health is now #{@monster2}/500"
		else
			damage = rand(0..100)
			puts "#{key} attacks monster2 with #{damage} damgage"
			@monster1 = value - damage
			monster_game["monster1"] -= damage
			puts "monste1's health is now #{@monster1}/500"
		end
	end
end
if @monster1 < @monster2
	puts "Winner is Monster2"
else
	puts "Winner is Monster1"
end