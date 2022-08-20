function onCreate()
    if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
		downscroll = true;
	elseif getPropertyFromClass('ClientPrefs', 'downScroll') == false then
		downscroll = false;
	end
	
	makeLuaSprite('Manifesting', 'bg/CyanVignette', 0, 0);
	setObjectCamera('Manifesting', 'other')
	setProperty('Manifesting.alpha', 0)
	scaleObject('Manifesting', 0.81, 0.78)
	addLuaSprite('Manifesting', true)
	precacheImage('bg/CyanVignette')
end

function onEvent(name, value1, value2)
	if name == 'Manifest' then
		playSound('sans/eye')
		doTweenAlpha('ManifestingAlpha', 'Manifesting', 1, 0.25, 'linear')
		runTimer('Manifested', 0.75)
---------------------------------------------------------------------------------------------------------------------------------------------------------------
		if tonumber(value1) == 1 then
			gameAngle = math.random(1,4)
			if gameAngle == 1 then
				doTweenAngle('HUD', 'camGame', 0, 1, 'smootherStepInOut')
				for i=0, 3 do
					noteTweenX('X'..i, i, _G['defaultOpponentStrumX'..i], 1, 'smootherStepInOut')
					if downscroll then
						setPropertyFromGroup('opponentStrums', i,  'downScroll', true)
					else
						setPropertyFromGroup('opponentStrums', i,  'downScroll', false)
					end	
					noteTweenY('Y'..i, i, _G['defaultOpponentStrumY'..i], 1, 'smootherStepInOut')
				end
				for i=4, 7 do
					noteTweenX('X'..i, i, _G['defaultPlayerStrumX'..i-4], 1, 'smootherStepInOut')
					if downscroll then
						setPropertyFromGroup('playerStrums', i-4,  'downScroll', true)
					else
						setPropertyFromGroup('playerStrums', i-4,  'downScroll', false)
					end
					noteTweenY('Y'..i, i, _G['defaultPlayerStrumY'..i-4], 1, 'smootherStepInOut')
				end
			elseif gameAngle == 3 then
				doTweenAngle('HUD', 'camGame', 180, 1, 'smootherStepInOut')
				for i=0, 3 do
					noteTweenX('X'..i, i, _G['defaultPlayerStrumX'..i], 1, 'smootherStepInOut')
					if downscroll then
						setPropertyFromGroup('opponentStrums', i,  'downScroll', true)
					else
						setPropertyFromGroup('opponentStrums', i,  'downScroll', false)
					end	
					noteTweenY('Y'..i, i, _G['defaultOpponentStrumY'..i], 1, 'smootherStepInOut')
				end
				for i=4, 7 do
					noteTweenX('X'..i, i, _G['defaultOpponentStrumX'..i-4], 1, 'smootherStepInOut')
					if downscroll then
						setPropertyFromGroup('playerStrums', i-4,  'downScroll', true)
					else
						setPropertyFromGroup('playerStrums', i-4,  'downScroll', false)
					end
					noteTweenY('Y'..i, i, _G['defaultPlayerStrumY'..i-4], 1, 'smootherStepInOut')
				end
			elseif gameAngle == 2 then
				doTweenAngle('HUD', 'camGame', -90, 1, 'smootherStepInOut')
				for i=0, 3 do
					noteTweenX('X'..i, i, _G['defaultOpponentStrumX'..i], 1, 'smootherStepInOut')
					if downscroll then
						noteTweenY('Y'..i, i, _G['defaultOpponentStrumY'..i]-430, 1, 'smootherStepInOut')
					else
						noteTweenY('Y'..i, i, _G['defaultOpponentStrumY'..i]+450, 1, 'smootherStepInOut')
					end
					if downscroll then
						setPropertyFromGroup('opponentStrums', i,  'downScroll', false)
					else
						setPropertyFromGroup('opponentStrums', i,  'downScroll', true)
					end	
				end
				for i=4, 7 do
					noteTweenX('X'..i, i, _G['defaultPlayerStrumX'..i-4], 1, 'smootherStepInOut')
					noteTweenY('Y'..i, i, _G['defaultPlayerStrumY'..i-4], 1, 'smootherStepInOut')
					if downscroll then
						setPropertyFromGroup('playerStrums', i-4,  'downScroll', true)
					else
						setPropertyFromGroup('playerStrums', i-4,  'downScroll', false)
					end
				end
			elseif gameAngle == 4 then
				doTweenAngle('HUD', 'camGame', 90, 1, 'smootherStepInOut')
				for i=0, 3 do
					noteTweenX('X'..i, i, _G['defaultOpponentStrumX'..i], 1, 'smootherStepInOut')
					noteTweenY('Y'..i, i, _G['defaultOpponentStrumY'..i], 1, 'smootherStepInOut')
					if downscroll then
						setPropertyFromGroup('opponentStrums', i,  'downScroll', true)
					else
						setPropertyFromGroup('opponentStrums', i,  'downScroll', false)
					end	
				end
				for i=4, 7 do
					noteTweenX('X'..i, i, _G['defaultPlayerStrumX'..i-4], 1, 'smootherStepInOut')
					if downscroll then
						noteTweenY('Y'..i, i, _G['defaultPlayerStrumY'..i-4]-430, 1, 'smootherStepInOut')
					else
						noteTweenY('Y'..i, i, _G['defaultPlayerStrumY'..i-4]+450, 1, 'smootherStepInOut')
					end
					if downscroll then
						setPropertyFromGroup('playerStrums', i-4,  'downScroll', false)
					else
						setPropertyFromGroup('playerStrums', i-4,  'downScroll', true)
					end
				end
			end
		elseif tonumber(value1) == 0 then
			doTweenAngle('HUD', 'camGame', 0, 1, 'smootherStepInOut')
			for i=0, 3 do
				noteTweenX('X'..i, i, _G['defaultOpponentStrumX'..i], 1, 'smootherStepInOut')
				if downscroll then
					setPropertyFromGroup('opponentStrums', i,  'downScroll', true)
				else
					setPropertyFromGroup('opponentStrums', i,  'downScroll', false)
				end	
				noteTweenY('Y'..i, i, _G['defaultOpponentStrumY'..i], 1, 'smootherStepInOut')
			end
			for i=4, 7 do
				noteTweenX('X'..i, i, _G['defaultPlayerStrumX'..i-4], 1, 'smootherStepInOut')
				if downscroll then
					setPropertyFromGroup('playerStrums', i-4,  'downScroll', true)
				else
					setPropertyFromGroup('playerStrums', i-4,  'downScroll', false)
				end
				noteTweenY('Y'..i, i, _G['defaultPlayerStrumY'..i-4], 1, 'smootherStepInOut')
			end
		elseif tonumber(value1) == 2 then
			for i=4, 7 do
				rngScroll = math.random(1,10)
				if rngScroll%2 == 0 then
					if downscroll then
						setPropertyFromGroup('playerStrums', i-4,  'downScroll', true)
					else
						setPropertyFromGroup('playerStrums', i-4,  'downScroll', false)
					end
					noteTweenY('Y'..i, i, _G['defaultPlayerStrumY'..i-4], 1, 'smootherStepInOut')
				elseif rngScroll%2 ~= 0 then
					if downscroll then
						setPropertyFromGroup('playerStrums', i-4,  'downScroll', false)
					else
						setPropertyFromGroup('playerStrums', i-4,  'downScroll', true)
					end
					if downscroll then
						noteTweenY('Y'..i, i, _G['defaultPlayerStrumY'..i-4]-430, 1, 'smootherStepInOut')
					else
						noteTweenY('Y'..i, i, _G['defaultPlayerStrumY'..i-4]+450, 1, 'smootherStepInOut')
					end
				end
			end
		elseif tonumber(value1) == 3 then
			gameAngle = math.random(1,4)
			if gameAngle == 1 then
				doTweenAngle('HUD', 'camGame', 0, 1, 'smootherStepInOut')
				for i=0, 3 do
					noteTweenX('X'..i, i, _G['defaultOpponentStrumX'..i], 1, 'smootherStepInOut')
					if downscroll then
						setPropertyFromGroup('opponentStrums', i,  'downScroll', true)
					else
						setPropertyFromGroup('opponentStrums', i,  'downScroll', false)
					end	
					noteTweenY('Y'..i, i, _G['defaultOpponentStrumY'..i], 1, 'smootherStepInOut')
				end
				for i=4, 7 do
					noteTweenX('X'..i, i, _G['defaultPlayerStrumX'..i-4], 1, 'smootherStepInOut')
					if downscroll then
						setPropertyFromGroup('playerStrums', i-4,  'downScroll', true)
					else
						setPropertyFromGroup('playerStrums', i-4,  'downScroll', false)
					end
					noteTweenY('Y'..i, i, _G['defaultPlayerStrumY'..i-4], 1, 'smootherStepInOut')
				end
			elseif gameAngle == 2 then
				doTweenAngle('HUD', 'camGame', -180, 1, 'smootherStepInOut')
				for i=0, 3 do
					noteTweenX('X'..i, i, _G['defaultPlayerStrumX'..i], 1, 'smootherStepInOut')
					if downscroll then
						setPropertyFromGroup('opponentStrums', i,  'downScroll', true)
					else
						setPropertyFromGroup('opponentStrums', i,  'downScroll', false)
					end	
					noteTweenY('Y'..i, i, _G['defaultOpponentStrumY'..i], 1, 'smootherStepInOut')
				end
				for i=4, 7 do
					noteTweenX('X'..i, i, _G['defaultOpponentStrumX'..i-4], 1, 'smootherStepInOut')
					if downscroll then
						setPropertyFromGroup('playerStrums', i-4,  'downScroll', true)
					else
						setPropertyFromGroup('playerStrums', i-4,  'downScroll', false)
					end
					noteTweenY('Y'..i, i, _G['defaultPlayerStrumY'..i-4], 1, 'smootherStepInOut')
				end
			elseif gameAngle == 3 then
				doTweenAngle('HUD', 'camGame', -90, 1, 'smootherStepInOut')
				for i=0, 3 do
					noteTweenX('X'..i, i, _G['defaultOpponentStrumX'..i], 1, 'smootherStepInOut')
					if downscroll then
						noteTweenY('Y'..i, i, _G['defaultOpponentStrumY'..i]-430, 1, 'smootherStepInOut')
					else
						noteTweenY('Y'..i, i, _G['defaultOpponentStrumY'..i]+450, 1, 'smootherStepInOut')
					end
					if downscroll then
						setPropertyFromGroup('opponentStrums', i,  'downScroll', false)
					else
						setPropertyFromGroup('opponentStrums', i,  'downScroll', true)
					end	
				end
				for i=4, 7 do
					noteTweenX('X'..i, i, _G['defaultPlayerStrumX'..i-4], 1, 'smootherStepInOut')
					noteTweenY('Y'..i, i, _G['defaultPlayerStrumY'..i-4], 1, 'smootherStepInOut')
					if downscroll then
						setPropertyFromGroup('playerStrums', i-4,  'downScroll', true)
					else
						setPropertyFromGroup('playerStrums', i-4,  'downScroll', false)
					end
				end
			elseif gameAngle == 4 then
				doTweenAngle('HUD', 'camGame', 90, 1, 'smootherStepInOut')
				for i=0, 3 do
					noteTweenX('X'..i, i, _G['defaultOpponentStrumX'..i], 1, 'smootherStepInOut')
					noteTweenY('Y'..i, i, _G['defaultOpponentStrumY'..i], 1, 'smootherStepInOut')
					if downscroll then
						setPropertyFromGroup('opponentStrums', i,  'downScroll', true)
					else
						setPropertyFromGroup('opponentStrums', i,  'downScroll', false)
					end	
				end
				for i=4, 7 do
					noteTweenX('X'..i, i, _G['defaultPlayerStrumX'..i-4], 1, 'smootherStepInOut')
					if downscroll then
						noteTweenY('Y'..i, i, _G['defaultPlayerStrumY'..i-4]-430, 1, 'smootherStepInOut')
					else
						noteTweenY('Y'..i, i, _G['defaultPlayerStrumY'..i-4]+450, 1, 'smootherStepInOut')
					end
					if downscroll then
						setPropertyFromGroup('playerStrums', i-4,  'downScroll', false)
					else
						setPropertyFromGroup('playerStrums', i-4,  'downScroll', true)
					end
				end
			end
			for i=4, 7 do
				rngScroll = math.random(1,10)
				if rngScroll%2 == 0 then
					setPropertyFromGroup('playerStrums', i-4,  'downScroll', false)
					noteTweenY('Y'..i, i, _G['defaultPlayerStrumY'..i-4], 1, 'smootherStepInOut')
				elseif rngScroll%2 ~= 0 then
					setPropertyFromGroup('playerStrums', i-4,  'downScroll', true)
					if downscroll then
						noteTweenY('Y'..i, i, _G['defaultPlayerStrumY'..i-4]-430, 1, 'smootherStepInOut')
					else
						noteTweenY('Y'..i, i, _G['defaultPlayerStrumY'..i-4]+450, 1, 'smootherStepInOut')
					end
				end
			end
		end
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'Manifested' then
		doTweenAlpha('ManifestingAlpha', 'Manifesting', 0, 0.25, 'linear')
	end
end

--tonumber(value1)
--tonumber(value2)					