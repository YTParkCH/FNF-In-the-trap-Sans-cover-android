function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'blue' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'bluebones'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'noteSplashes')
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false) --Miss Hit
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has penalties
			end
		end
	end
end
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'blue' then
		if not isSustainNote then
		setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.1');
		end
	end
end
	