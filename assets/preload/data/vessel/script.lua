startedPlaying = false
finishedGameover = false

function onUpdate(elapsed)
    if inGameOver and not startedPlaying and not finishedGameover then
        setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0.2);
    end
    if not finishedGameover and getProperty('boyfriend.animation.curAnim.name') == 'deathLoop' and not startedPlaying then
        math.randomseed(curBeat * 4)
        soundName = string.format('fatalGameover/fatalGameover-%i', math.random(1, 5))
        playSound(soundName, 1, 'voiceFatal')
        startedPlaying = true
    end
end

function onGameOverConfirm(reset)
    finishedGameover = true;
end

function onSoundFinished(tag)
    if tag == 'voiceFatal' and not finishedGameover then
        soundFadeIn(nil, 4, 0.2, 1)
    end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)

    health = getProperty('health')
    if getProperty('health') > 0.5 then
        setProperty('health', health- 0.01);
    end
end
