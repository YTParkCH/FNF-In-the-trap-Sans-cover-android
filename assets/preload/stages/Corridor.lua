function onCreate()
	-- background shit
	makeLuaSprite('Corridor', 'Corridor', -300, -150);
	setScrollFactor('Corridor', 1, 1);

	addLuaSprite('Corridor', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end