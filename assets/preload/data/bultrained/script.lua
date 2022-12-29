function onUpdate(elapsed)
    if curStep >= 1407 then doTweenAlpha('camGameFadeOut', 'camHUD', 0, 1.1, 'linear') end
    -- if curStep == 1520 then setProperty("camZooming", false) doTweenZoom("ZoomOut", "camGame", 1, 14*crochet/1000, "sineInOut") end
    if curStep == 1536 then setProperty('camGame.visible', false) end
end