function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'orange' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'orangebones'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false)
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
end
function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'orange' then
		setProperty('health',0)
	end
end
	