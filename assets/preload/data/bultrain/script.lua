function onUpdate(elapsed)
    if curStep >= 1408 then doTweenAlpha('camGameFadeOut', 'camHUD', 0, 1.1, 'linear') end
    if curStep == 1503 then setProperty("camZooming", false) doTweenZoom("ZoomOut", "camGame", 1, 14*crochet/1000, "sineInOut") end
    if curStep == 1535 then setProperty('camGame.visible', false) end
end