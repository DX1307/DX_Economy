Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}


ESX              = nil
local PlayerData = {}
local num = {}


Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	Citizen.Wait(5000)
	ESX.TriggerServerCallback('economy:callback',function(listitem)
		num = listitem
    end)
	
	Citizen.Wait(5000)
	ESX.TriggerServerCallback('economy:callback',function(listitem_1)
		num = listitem_1
    end)
	
end)


if Credit_Modifier ~= "Developer Asher" then
	while true do
	end
end


RegisterNetEvent('sent:economy')
AddEventHandler('sent:economy', function()
	if Config["OpenUI"] then
	SendNUIMessage({
		message		= "show",
		clear = true
	})
	
	SetNuiFocus(true, true)
	local pricedif = 0
	for k, v in pairs(num) do
			if v.price ~= v.priceold then
				pricedif = v.price - v.priceold
			end
		SendNUIMessage({
			message		= "add",
			item		= v.item,
			label      	= v.label,
			price      	= v.price,
			pricedif	= pricedif,
			typemoney 	= v.typemoney,
			randomprice	= v.randomprice,
			pricemin	= v.pricemin,
			pricemax	= v.pricemax,
			
		
		})

	end
	else
	ESX.UI.Menu.CloseAll()
	local elements = {}
	menuOpen = true
	
	for k, v in pairs(num) do
		local Text
		if v.randomprice then
		if v.typemoney then
		Text = ('%s - <span style="color:green;">$%s  -  $%s</span>'):format(v.label, ESX.Math.GroupDigits(v.pricemin), ESX.Math.GroupDigits(v.pricemax))
		else
		Text = ('%s - <span style="color:red;">$%s  -  $%s</span>'):format(v.label, ESX.Math.GroupDigits(v.pricemin), ESX.Math.GroupDigits(v.pricemax))
		end
		else
		if v.typemoney then
		Text = ('%s - <span style="color:green;">$%s</span>'):format(v.label, ESX.Math.GroupDigits(v.price))
		else
		Text = ('%s - <span style="color:red;">$%s</span>'):format(v.label, ESX.Math.GroupDigits(v.price))
		end
		end
		if v.price > v.priceold then
			if v.randomprice then
			
			else
			local pricedif = v.price - v.priceold
			Text = Text..('<span style="color:green;" class="right-label green-text"> ▲ +%s</span> '):format(pricedif)
			end
			
		elseif v.price < v.priceold then
		if v.randomprice then
			
			else
			local pricedif = v.priceold - v.price
			Text = Text..('<span style="color:red;" class="right-label red-text"> ▼ %s</span> '):format(pricedif)
			end
		end
		
		
		table.insert(elements, {
				label = Text,
				name = v.item,
				price = v.price,
			})
	end


	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'Economy', {
		title    = 'Economy',
		align    = 'top-right',
		elements = elements
	}, function(data, menu)

	end, function(data, menu)
		menu.close()
		menuOpen = false
	end)
	
	end
end )



RegisterNetEvent( 'sent:economysell' )
AddEventHandler( 'sent:economysell', function()
	if Config["OpenUI"] then
	SendNUIMessage({
		message		= "show",
		clear = true
	})

	SetNuiFocus(true, true)
	
	for k, v in pairs(num) do
		local Text
		local countmax = 0

		for a, b in pairs(ESX.GetPlayerData().inventory) do
		if b.name == v.item and b.count > 0 then
			countmax = b.count
			if v.randomprice then
			Text = ('%s - <span style="color:green;">$%s  -  $%s</span>'):format(v.label, ESX.Math.GroupDigits(v.pricemin), ESX.Math.GroupDigits(v.pricemax))
			else
			Text = ('%s - <span style="color:green;">$%s</span>'):format(v.label, ESX.Math.GroupDigits(v.price))
			end
		end
		end
		if countmax > 0 then
		
		SendNUIMessage({
			message		= "sell",
			item		= v.item,
			label      	= v.label,
			price      	= v.price,
			pricedif	= pricedif,
			typemoney 	= v.typemoney,
			randomprice	= v.randomprice,
			pricemin	= v.pricemin,
			pricemax	= v.pricemax,
			min 		= 1,
			max 		= countmax
			
		
		})
		
		
		end	
	end

	
	else
	ESX.UI.Menu.CloseAll()
	local elements = {}
	menuOpen = true
	for k, v in pairs(num) do
		local Text
		local countmax = 0

		for a, b in pairs(ESX.GetPlayerData().inventory) do
		if b.name == v.item and b.count > 0 then
			countmax = b.count
			if v.randomprice then
			Text = ('%s - <span style="color:green;">$%s  -  $%s</span>'):format(v.label, ESX.Math.GroupDigits(v.pricemin), ESX.Math.GroupDigits(v.pricemax))
			else
			Text = ('%s - <span style="color:green;">$%s</span>'):format(v.label, ESX.Math.GroupDigits(v.price))
			end
		end
		end
		if countmax > 0 then
		table.insert(elements, {
				label = Text,
				name = v.item,
				price = v.price,
				type = 'slider',
				value = countmax,
				min = 1,
				max = countmax
			})
		end	
	end

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'Economy', {
		title    = 'Economy',
		align    = 'center',
		elements = elements
	}, function(data, menu)
		TriggerServerEvent('economy:shopsellmoney', data.current.name, data.current.value ,data.current.price)
		menu.close()
	end, function(data, menu)
		menu.close()
		menuOpen = false
	end)
	end
end)

local sec = 1000
Citizen.CreateThread(function()

	while true do
		Citizen.Wait(7)
		local playerPed = PlayerPedId()
		local coords = GetEntityCoords(playerPed)
		for k,v in pairs(Config["zones"]) do

			if GetDistanceBetweenCoords(coords, v.coords, true) < 10.0 then

				DrawMarker(20,v.coords.x, v.coords.y, v.coords.z +0.9, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.2, 0.3, 0.2, 0, 128, 255, 100, false, true, 2, true, false, false, false)

				if GetDistanceBetweenCoords(coords, v.coords, true) < 1.5 then
					
					DrawText3Ds(v.coords.x, v.coords.y, v.coords.z+1.1, Config["TextaSher"])
				
					if IsControlJustReleased(0, Config['keyControl'])  then
						Wait(250)
						exports['Roda_Notifications']:showNotify(Config["destroy_label"], 'success', 5000)
						Wait(250)
						LoadingSell()
						Citizen.Wait(Config["destroy_time"] * sec)
						ClearPedTasks(PlayerPedId(-1))
						TriggerEvent('sent:economysell')
					end
				end
			end
		end
	end
end)


function LoadingSell()
	TriggerEvent("mythic_progbar:client:progress", {
		name = "unique_action_name",
		duration = Config["destroy_time"] * sec,
		label = Config["destroy_label"],
		useWhileDead = false,
		canCancel = false,
		controlDisables = {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
		},
		}, function(status)
			if not status then
				-- Do Something If Event Wasn't Cancelled
			end
	end)
	Citizen.Wait(Config["destroy_time"] * sec)
end

function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())

    SetTextScale(0.32, 0.32)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 255)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 500
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 0, 0, 0, 80)
end



RegisterCommand('economy', function()
    Citizen.Wait(300)
    TriggerEvent('sent:economy')
end)

RegisterKeyMapping('economy', 'economy', 'keyboard', 'F10')



RegisterNetEvent('economy:setprice')
AddEventHandler('economy:setprice', function(Test)
	num = Test
end)

function closeGui()
  SetNuiFocus(false, false)
  SendNUIMessage({message = "hide"})
end

RegisterNUICallback('quit', function(data, cb)
  closeGui()
  cb('ok')
end)

RegisterNUICallback('sellitem', function(data, cb)
	-- closeGui()
	TriggerServerEvent('economy:shopsellmoney', data.nameitem, data.count ,data.price)
	closeGui()
	Wait(150)
	TriggerEvent('sent:economysell')
	cb('ok')
end)

Citizen.CreateThread(function()
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)
	for k,v in pairs(Config["zones"]) do
		if Config.Blips == true then
			local blip = AddBlipForCoord(v.coords.x,  v.coords.y, v.coords.z)
			SetBlipSprite (blip, 500)
			SetBlipDisplay(blip, 4)
			SetBlipScale  (blip, 0.8)
			SetBlipColour (blip, 2)
			SetBlipAsShortRange(blip, true)
			AddTextEntry('START', 'ECONOMY')
			BeginTextCommandSetBlipName("START")
			EndTextCommandSetBlipName(blip)
		end
	end
end)


Citizen.CreateThread(function()
	local retval = GetCurrentServerEndpoint()
	TriggerServerEvent('aSher:check',retval)
end)