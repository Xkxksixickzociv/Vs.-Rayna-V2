function onCreatePost()
    --addVCREffect('camgame')
    --addVCREffect('camhud', false)
    setProperty('timeBarBG.visible', false)
    setProperty('timeBar.visible', false)
    setProperty('timeTxt.visible', false)
    setProperty('scoreTxt.visible', false);
    setProperty('healthBar.x', 500);
    setProperty('healthBarBG.x', 500);
	setPropertyFromClass('ClientPrefs', 'timeBarType', 'Time Elapsed')
	setPropertyFromClass('ClientPrefs', 'songScoreType', 'Score Elapsed') 

    makeLuaText('score', 'SCORE', 0, 30, 635)
    setTextColor('score', 'FFFF00')
    setTextFont('score', 'sonic-1-hud-font.ttf')
    addLuaText('score')  
    
    makeLuaText('scorecount', '', 0, 30, 635)
    setTextFont('scorecount', 'sonic-1-hud-font.ttf')
    setProperty('scorecount.x', -20)
    addLuaText('scorecount')
    

    makeLuaText('time', 'TIME', 0, 30, 595)
    setTextFont('time', 'sonic-1-hud-font.ttf')
    setTextColor('time', 'FFFF00')
    addLuaText('time') 
	
	makeLuaText('timecount', '', 0, 30, 595)
    setTextFont('timecount', 'sonic-1-hud-font.ttf')
	addLuaText('timecount')
	
	makeLuaText('misses', 'MISSES', 0, 30, 555)
    setTextFont('misses', 'sonic-1-hud-font.ttf')
	setTextColor('misses', 'FFFF00')
	addLuaText('misses')
	
	makeLuaText('missescount', '', 0, 100, 555)
    setTextFont('missescount', 'sonic-1-hud-font.ttf')
	addLuaText('missescount')
	
	
	setTextSize('missescount', 45)
	setTextSize('misses', 45)
	setTextSize('time', 45)
    setTextSize('score', 45)
    setTextSize('scorecount', 45)
    setTextSize('timecount', 45) 

    if downscroll then
        setProperty('misses.y', 40)
        setProperty('time.y', 90)
        setProperty('score.y', 150)
        setProperty('timecount.y', 90)
        setProperty('scorecount.y', 150)
        setProperty('missescount.y', 40)
    end
	

end

function onUpdate(elapsed)
    setTextString('missescount', '         ' .. getProperty('songMisses'))
    setTextString('scorecount', '               ' .. getProperty('songScore'))
    setTextString('timecount', '       '  .. getTextString('timeTxt'))
end 

function onDestroy()
    setPropertyFromClass('ClientPrefs', 'timeBarType', 'Time Left')
end