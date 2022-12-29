function onUpdate(elapsed)
    if curStep == 655 then setProperty("camZooming", false) doTweenZoom("sirenZoomOut", "camGame", 1.2, 12*crochet/1000, "sineInOut") end --1 zoomIN --0.01 ZoomOut
    if curStep == 720 then setProperty("camZooming", false) doTweenZoom("sirenZoomOut", "camGame", 1.2, 12*crochet/1000, "sineInOut") end --1 zoomIN --0.01 ZoomOut
    if curStep == 1551 then doTweenAlpha('camGameFadeOut', 'camHUD', 0, 0.6, 'linear') end
    if curStep >= 1808 then doTweenAlpha('camGameFadeOut', 'camHUD', 1, 0.6, 'linear') end
    if curStep >= 2368 then doTweenAlpha('camGameFadeOut', 'camHUD', 0, 0.1, 'linear') end
    if curStep >= 2368 then doTweenAlpha('camGameFadeOut', 'camGame', 0, 0.3, 'linear') end
end