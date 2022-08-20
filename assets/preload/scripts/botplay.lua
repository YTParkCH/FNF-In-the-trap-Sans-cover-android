function onUpdate()
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.V') then
        setProperty('cpuControlled', true)
    end
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.B') then
        setProperty('cpuControlled', false)
    end
end