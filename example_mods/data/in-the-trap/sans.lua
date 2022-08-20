
function onCreate()
	makeLuaSprite('hp','hp',0,0)
	addLuaSprite('hp',false)
	setObjectCamera('hp','camHUD')
	scaleObject('hp',0.2,0.2)
	setProperty('hp.antialiasing',false)
	precacheImage('NM_sans/Sans_Shit_NM');
end
function onCreatePost()
    setProperty('healthBar.flipX',true)
	setProperty('hp.x',getProperty('healthBar.x')-20)
	setProperty('hp.y',getProperty('healthBar.y')-10)
	setProperty('gf.visible',false)
	setProperty('iconP1.visible',false)
	setProperty('iconP2.visible',false)
	setProperty('healthBar.scale.y',2.5)
	setProperty('healthBar.x',400)
	setProperty('iconP2.visible', false)
	setProperty('healthBarBG.visible',false)
	setProperty('timeBar.color',getColorFromHex('04E6FD'))
end
