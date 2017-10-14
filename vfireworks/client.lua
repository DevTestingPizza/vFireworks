Citizen.CreateThread(function()
    if not HasNamedPtfxAssetLoaded("scr_indep_fireworks") then
        RequestNamedPtfxAsset("scr_indep_fireworks")
        while not HasNamedPtfxAssetLoaded("scr_indep_fireworks") do
            Citizen.Wait(1)
        end
        print('done')
    end
    if not HasNamedPtfxAssetLoaded("proj_xmas_firework") then
        RequestNamedPtfxAsset("proj_xmas_firework")
        while not HasNamedPtfxAssetLoaded("proj_xmas_firework") do
            Citizen.Wait(1)
        end
        print('done')
    end
    while true do
        Citizen.Wait(math.random() * 1000)
        --if IsControlPressed(0, 21) then
            UseParticleFxAssetNextCall("proj_xmas_firework")
            local part = StartParticleFxNonLoopedAtCoord("scr_firework_xmas_repeat_burst_rgw", 59.0+ (math.random() * 25), 7223.0 + (math.random() * 25), 32.5, 0.0, 0.0, 0.0, math.random() * 0.3 + 0.5, false, false, false, false)
            UseParticleFxAssetNextCall("scr_indep_fireworks")
            local part = StartParticleFxNonLoopedAtCoord("scr_indep_firework_shotburst", 59.0+ (math.random() * 25), 7223.0 + (math.random() * 25), 2.5, 0.0, 0.0, 0.0, math.random() * 1.0 + 1.0, false, false, false, false)
            Citizen.Wait(math.random()*500)
            UseParticleFxAssetNextCall("proj_xmas_firework")
            local part = StartParticleFxNonLoopedAtCoord("scr_firework_xmas_spiral_burst_rgw", 59.0+ (math.random() * 25), 7223.0 + (math.random() * 25), 23.5, 0.0, 0.0, 0.0, math.random() * 0.3 + 0.5, false, false, false, false)
            UseParticleFxAssetNextCall("scr_indep_fireworks")
            local part = StartParticleFxNonLoopedAtCoord("scr_indep_firework_trailburst", 59.0+ (math.random() * 25), 7223.0 + (math.random() * 25), 2.5, 0.0, 0.0, 0.0, math.random() * 1.0 + 1.0, false, false, false, false)
            Citizen.Wait(math.random()*500)
            UseParticleFxAssetNextCall("scr_indep_fireworks")
            local part = StartParticleFxNonLoopedAtCoord("scr_indep_firework_trailburst", 59.0+ (math.random() * 25), 7223.0 + (math.random() * 25), 2.5, 0.0, 0.0, 0.0, math.random() * 1.0 + 1.0, false, false, false, false)
            Citizen.Wait(math.random()*500)
            UseParticleFxAssetNextCall("scr_indep_fireworks")
            local part = StartParticleFxNonLoopedAtCoord("scr_indep_firework_shotburst", 59.0+ (math.random() * 25), 7223.0 + (math.random() * 25), 2.5, 0.0, 0.0, 0.0, math.random() * 1.0 +1.0, false, false, false, false)
        --end
    end
end)
