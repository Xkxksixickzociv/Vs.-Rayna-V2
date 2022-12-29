function onUpdate(elapsed)
    if curStep == 1536 then doTweenAlpha('camGameFadeOut', 'camHUD', 0, 0.6, 'linear') end
    if curStep == 1728 then setProperty("camZooming", false) doTweenZoom("ZoomOut", "camGame", 1, 14*crochet/1000, "sineInOut") end
    if curStep == 1780 then doTweenAlpha('camGameFadeOut', 'camGame', 0, 0.6, 'linear') end
    if curStep == 1810 then doTweenAlpha('camGameFadeOut', 'camGame', 1, 0.2, 'linear') end
    if curStep == 1822 then doTweenAlpha('camGameFadeOut', 'camHUD', 1, 0.4, 'linear') end
    if curStep >= 2368 then doTweenAlpha('camGameFadeOut', 'camGame', 0, 0.2, 'linear') end
end