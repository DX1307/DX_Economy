RegisterFontFile(Config['Fontfile'])
fontId1 = RegisterFontId(Config['Fontfile'])


Citizen.CreateThread(function()
   
      RequestModel(GetHashKey(Config['Npcname']))
      while not HasModelLoaded(GetHashKey(Config['Npcname'])) do
        Wait(1)
      end
	  for k,v in pairs(Config["zones"]) do
      ped =  CreatePed(4, Config['Npcped'],v.coords.x,v.coords.y, v.coords.z-1, 3374176, false, true)
      SetEntityHeading(ped, Config["HeadingNpc"])
      FreezeEntityPosition(ped, true)
      SetEntityInvincible(ped, true)
      SetBlockingOfNonTemporaryEvents(ped, true)
      TaskPlayAnim(ped,"penguin@2fingers_up","penguin_2_fingers_up", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
	  end	
end)