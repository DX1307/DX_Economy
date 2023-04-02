Config = {}


Config["Key"] = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118, ["Enter"] = 191
}


Config["discord"]   = ""                        -- แจ้งเตือนดิสคอร์ดเช็คการขายของ
Config["OpenUI"]    = true                      -- เปิด UI
Config["onhotkeys"] = false                      -- เปิด/ปิดฟังก์ชั่นใช้งานปุ่ม
Config["oncommand"] = false                      -- เปิด/ปิดฟังก์ชั่นใช้งานคำสั่ง /economy
Config['keyControl']      = 38                  -- ปุ่มกดจุดขาย
Config['Notification'] = ''  -- Notification สำหรับ ปุ่มกดจุดขาย
Config["hotkey"]    = Config["Key"]['F7']       --ตั้งค่าปุ่ม

Config["TextaSher"]     = 'Press [~r~E~s~] Open ~g~Economy'  -- ข้อความบนหัว NPC
Config['Fontfile']      = ''             -- Font

Config["num"]       = 50                       -- จำนวนสินค้าที่จะลดราคา
Config["discount"]  = 5                         -- ลดกี่เปอเซ็น
Config["incre"]     = 5                         -- เพิ่มกี่เปอเซ็น
Config["randomprice"] = true                    --สุ่มราคาทุกครั้งเวลารีเซิฟ
Config["drawmarker"]  = false                   --เปิดรูปตัว $
Config["TimeToResetPrice"] = 30
Config.Blips		= true
Config["zones"] = {
	sell = { coords = vector3(45.98, -1749.25, 29.63)},

}


-- หลอกโพเสด
Config["destroy_label"] = "กำลังเสนอขายของ"
Config["destroy_time"]  = 2




--- ส่วนของNPC
Config['Npcped'] = 0xCF623A2C                   -- Name
Config['Npcname'] = 'u_m_y_antonb'              -- Hash
Config["HeadingNpc"] = 51.55                  --การหัดหน้า NPC

Config["listitem"] = {

	item1 = {id  = 1 , 
		item  = "durian_box" , 
		label = "ทุเรียน แพ็ค" , 
		price = 15, 
		pricemin = 15 , 
		pricemax = 45 , 
		randomprice = true, -- สุ่มราคาทุกครั้งที่กดขาย
		typemoney = true, -- true เงินเขียว  false เงินแดง
		checkcount = true -- true เช็คจำนวน  false ไม่เช็คจำนวน
	},

	item2 = {id  = 1 , 
		item  = "pearl_box" , 
		label = "ไข่มุก แพ็ค" , 
		price = 15, 
		pricemin = 15 , 
		pricemax = 45 , 
		randomprice = true, -- สุ่มราคาทุกครั้งที่กดขาย
		typemoney = true, -- true เงินเขียว  false เงินแดง
		checkcount = true -- true เช็คจำนวน  false ไม่เช็คจำนวน
	},

	item3 = {id  = 1 , 
		item  = "honey_box" , 
		label = "น้ำผึ้ง แพ็ค" , 
		price = 15, 
		pricemin = 15 , 
		pricemax = 45 , 
		randomprice = true, -- สุ่มราคาทุกครั้งที่กดขาย
		typemoney = true, -- true เงินเขียว  false เงินแดง
		checkcount = true -- true เช็คจำนวน  false ไม่เช็คจำนวน
	},

	item4 = {id  = 1 , 
		item  = "onion_box" , 
		label = "หัวหอม แพ็ค" , 
		price = 15, 
		pricemin = 15 , 
		pricemax = 45 , 
		randomprice = true, -- สุ่มราคาทุกครั้งที่กดขาย
		typemoney = true, -- true เงินเขียว  false เงินแดง
		checkcount = true -- true เช็คจำนวน  false ไม่เช็คจำนวน
	},

	item5 = {id  = 1 , 
		item  = "mushoroom_box" , 
		label = "เห็ด แพ็ค" , 
		price = 15, 
		pricemin = 15 , 
		pricemax = 45 , 
		randomprice = true, -- สุ่มราคาทุกครั้งที่กดขาย
		typemoney = true, -- true เงินเขียว  false เงินแดง
		checkcount = true -- true เช็คจำนวน  false ไม่เช็คจำนวน
	},

	item6 = {id  = 1 , 
		item  = "cactus_box" , 
		label = "กระบองเพชร แพ็ค" , 
		price = 15, 
		pricemin = 15 , 
		pricemax = 45 , 
		randomprice = true, -- สุ่มราคาทุกครั้งที่กดขาย
		typemoney = true, -- true เงินเขียว  false เงินแดง
		checkcount = true -- true เช็คจำนวน  false ไม่เช็คจำนวน
	},

	item7 = {id  = 1 , 
		item  = "leather_bag" , 
		label = "กระเป๋าหนัง" , 
		price = 15, 
		pricemin = 100 , 
		pricemax = 500 , 
		randomprice = true, -- สุ่มราคาทุกครั้งที่กดขาย
		typemoney = false, -- true เงินเขียว  false เงินแดง
		checkcount = true -- true เช็คจำนวน  false ไม่เช็คจำนวน
	},

	item8 = {id  = 1 , 
		item  = "herbun" , 
		label = "สมุนไพร" , 
		price = 15, 
		pricemin = 15 , 
		pricemax = 45 , 
		randomprice = true, -- สุ่มราคาทุกครั้งที่กดขาย
		typemoney = true, -- true เงินเขียว  false เงินแดง
		checkcount = true -- true เช็คจำนวน  false ไม่เช็คจำนวน
	},

	item9 = {id  = 1 , 
		item  = "herbun" , 
		label = "สมุนไพร" , 
		price = 15, 
		pricemin = 15 , 
		pricemax = 45 , 
		randomprice = true, -- สุ่มราคาทุกครั้งที่กดขาย
		typemoney = true, -- true เงินเขียว  false เงินแดง
		checkcount = true -- true เช็คจำนวน  false ไม่เช็คจำนวน
	},

	item10 = {id  = 1 , 
		item  = "diamond" , 
		label = "เพชร" , 
		price = 100, 
		pricemin = 100 , 
		pricemax = 1200 , 
		randomprice = true, -- สุ่มราคาทุกครั้งที่กดขาย
		typemoney = true, -- true เงินเขียว  false เงินแดง
		checkcount = true -- true เช็คจำนวน  false ไม่เช็คจำนวน
	},

	item11 = {id  = 1 , 
		item  = "gold" , 
		label = "ทอง" , 
		price = 25, 
		pricemin = 25 , 
		pricemax = 60 , 
		randomprice = true, -- สุ่มราคาทุกครั้งที่กดขาย
		typemoney = true, -- true เงินเขียว  false เงินแดง
		checkcount = true -- true เช็คจำนวน  false ไม่เช็คจำนวน
	},

	item12 = {id  = 1 , 
		item  = "iron" , 
		label = "เหล็ก" , 
		price = 15, 
		pricemin = 15 , 
		pricemax = 40 , 
		randomprice = true, -- สุ่มราคาทุกครั้งที่กดขาย
		typemoney = true, -- true เงินเขียว  false เงินแดง
		checkcount = true -- true เช็คจำนวน  false ไม่เช็คจำนวน
	},

	item13 = {id  = 1 , 
		item  = "copper" , 
		label = "ทองแดง" , 
		price = 10, 
		pricemin = 10 , 
		pricemax = 20 , 
		randomprice = true, -- สุ่มราคาทุกครั้งที่กดขาย
		typemoney = true, -- true เงินเขียว  false เงินแดง
		checkcount = true -- true เช็คจำนวน  false ไม่เช็คจำนวน
	},

	item14 = {id  = 1 , 
		item  = "wood_box" , 
		label = "ไม้ เเพ็ค" , 
		price = 15, 
		pricemin = 15 , 
		pricemax = 40 , 
		randomprice = true, -- สุ่มราคาทุกครั้งที่กดขาย
		typemoney = true, -- true เงินเขียว  false เงินแดง
		checkcount = true -- true เช็คจำนวน  false ไม่เช็คจำนวน
	},

	item15 = {id  = 1 , 
		item  = "notz_crystal1" , 
		label = "เศษหิน" , 
		price = 1, 
		pricemin = 1 , 
		pricemax = 5 , 
		randomprice = true, -- สุ่มราคาทุกครั้งที่กดขาย
		typemoney = true, -- true เงินเขียว  false เงินแดง
		checkcount = true -- true เช็คจำนวน  false ไม่เช็คจำนวน
	},

	item16 = {id  = 1 , 
		item  = "box_jail" , 
		label = "กระดาษลัง" , 
		price = 10, 
		pricemin = 10 , 
		pricemax = 15 , 
		randomprice = true, -- สุ่มราคาทุกครั้งที่กดขาย
		typemoney = true, -- true เงินเขียว  false เงินแดง
		checkcount = true -- true เช็คจำนวน  false ไม่เช็คจำนวน
	},

	item17 = {id  = 1 , 
		item  = "box_jail" , 
		label = "กระดาษลัง" , 
		price = 10, 
		pricemin = 10 , 
		pricemax = 15 , 
		randomprice = true, -- สุ่มราคาทุกครั้งที่กดขาย
		typemoney = true, -- true เงินเขียว  false เงินแดง
		checkcount = true -- true เช็คจำนวน  false ไม่เช็คจำนวน
	},

	item18 = {id  = 1 , 
		item  = "coinschamp" , 
		label = "เหรียญคราฟ" , 
		price = 1, 
		pricemin = 1 , 
		pricemax = 2 , 
		randomprice = true, -- สุ่มราคาทุกครั้งที่กดขาย
		typemoney = true, -- true เงินเขียว  false เงินแดง
		checkcount = true -- true เช็คจำนวน  false ไม่เช็คจำนวน
	},

	item19 = {id  = 1 , 
		item  = "catfish" , 
		label = "ปลา" , 
		price = 10, 
		pricemin = 10 , 
		pricemax = 30 , 
		randomprice = true, -- สุ่มราคาทุกครั้งที่กดขาย
		typemoney = true, -- true เงินเขียว  false เงินแดง
		checkcount = true -- true เช็คจำนวน  false ไม่เช็คจำนวน
	},

	item20 = {id  = 1 , 
		item  = "pig" , 
		label = "หมู" , 
		price = 15, 
		pricemin = 15 , 
		pricemax = 400 , 
		randomprice = true, -- สุ่มราคาทุกครั้งที่กดขาย
		typemoney = true, -- true เงินเขียว  false เงินแดง
		checkcount = true -- true เช็คจำนวน  false ไม่เช็คจำนวน
	},

	item21 = {id  = 1 , 
		item  = "chicken" , 
		label = "ไก่" , 
		price = 10, 
		pricemin = 10 , 
		pricemax = 500 , 
		randomprice = true, -- สุ่มราคาทุกครั้งที่กดขาย
		typemoney = true, -- true เงินเขียว  false เงินแดง
		checkcount = true -- true เช็คจำนวน  false ไม่เช็คจำนวน
	},

	item22 = {id  = 1 , 
		item  = "chicken" , 
		label = "ไก่" , 
		price = 10, 
		pricemin = 10 , 
		pricemax = 500 , 
		randomprice = true, -- สุ่มราคาทุกครั้งที่กดขาย
		typemoney = true, -- true เงินเขียว  false เงินแดง
		checkcount = true -- true เช็คจำนวน  false ไม่เช็คจำนวน
	},

	item23 = {id  = 1 , 
		item  = "rubbish" , 
		label = "ขยะ" , 
		price = 1, 
		pricemin = 1 , 
		pricemax = 2 , 
		randomprice = true, -- สุ่มราคาทุกครั้งที่กดขาย
		typemoney = true, -- true เงินเขียว  false เงินแดง
		checkcount = true -- true เช็คจำนวน  false ไม่เช็คจำนวน
	},

	item24 = {id  = 1 , 
		item  = "coal" , 
		label = "ถ่าน" , 
		price = 10, 
		pricemin = 10 , 
		pricemax = 25 , 
		randomprice = true, -- สุ่มราคาทุกครั้งที่กดขาย
		typemoney = true, -- true เงินเขียว  false เงินแดง
		checkcount = true -- true เช็คจำนวน  false ไม่เช็คจำนวน
	},

	item24 = {id  = 1 , 
		item  = "gun_powder" , 
		label = "ถ่าน" , 
		price = 10, 
		pricemin = 10 , 
		pricemax = 25 , 
		randomprice = true, -- สุ่มราคาทุกครั้งที่กดขาย
		typemoney = true, -- true เงินเขียว  false เงินแดง
		checkcount = true -- true เช็คจำนวน  false ไม่เช็คจำนวน
	},
}