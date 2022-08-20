function onUpdate()
    for i = 0, getProperty('grpNoteSplashes.length')-1 do
        setPropertyFromGroup('grpNoteSplashes', i, 'offset.x', -20)
        setPropertyFromGroup('grpNoteSplashes', i, 'offset.y', -30)
    end
end