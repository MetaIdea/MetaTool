GAME_LIST = {"cnc3game.dat","cnc3ep1.dat", "lotrbfme2ep1.exe", "game.dat", "Generals.exe"}--, "ra3_1.12.game", "ra3ep1_1.0.game", "CNC4.game"}
GAME_LIST_REF = 
{
	["cnc3game.dat"]="CNC3",["cnc3ep1.dat"]="CNC3KW",
	["game.dat"]="BFME2",["lotrbfme2ep1.exe"]="BFME2ROTWK",["lotrbfme2.exe"]="BFME2",--["game.dat"]="BFME1",
	["Generals.exe"]="CNCZH",
	--["ra3_1.12.game"]="CNCRA3",
	--["ra3ep1_1.0.game"]="CNCRA3U",
	--["CNC4.game"]="CNC4",
}

CURRENTGAME = "CNC3"
GAME = {}

GAME.CNC3KW = {}
GAME.CNC3KW.PROCESS 		= "cnc3ep1.dat"
GAME.CNC3KW.FPSLIMIT 		= {["ADRESS"]="[00BE4F94]+52",["writeFkt"]=writeInteger,["ON"]=0,["OFF"]=1}
GAME.CNC3KW.GAMESPEED 		= {["ADRESS"]="[00BDD688]+23D0",["writeFkt"]=writeInteger}
GAME.CNC3KW.CAMZOOMLIMIT 	= {["ADRESS"]="[00BDD688]+44",["writeFkt"]=writeInteger,["ON"]=0,["OFF"]=1}
GAME.CNC3KW.CAMCLIPDEPTH 	= {["ADRESS"]="[00BE4F94]+970",["writeFkt"]=writeFloat,["ON"]=200,["OFF"]=1}
GAME.CNC3KW.FOG 			= {["ADRESS"]="cnc3ep1.dat+7E1002",["writeFkt"]=writeInteger,["ON"]=1,["OFF"]=0}
GAME.CNC3KW.AICOCONTROL 	= {["ADRESS"]="[00BEB22C]+86C",["writeFkt"]=writeInteger,["ON"]=1,["OFF"]=0}
GAME.CNC3KW.CAMERAPITCH 	= {["ADRESS"]="[cnc3ep1.dat+7DD688]+70",["writeFkt"]=writeFloat}
GAME.CNC3KW.CAMERAZOOMHEIGHT = {["ADRESS"]="[cnc3ep1.dat+007DD688]+40",["writeFkt"]=writeFloat}

GAME.CNC3 = {}
GAME.CNC3.PROCESS 			= "cnc3game.dat"
GAME.CNC3.FPSLIMIT 			= {["ADRESS"]="[cnc3game.dat+7EA278]+52",["writeFkt"]=writeInteger}
GAME.CNC3.GAMESPEED 		= {["ADRESS"]="[cnc3game.dat+7E1A28]+23D0",["writeFkt"]=writeInteger}
GAME.CNC3.CAMZOOMLIMIT 		= {["ADRESS"]="[cnc3game.dat+7E1A28]+44",["writeFkt"]=writeInteger}
GAME.CNC3.CAMCLIPDEPTH 		= {["ADRESS"]="[cnc3game.dat+7EA27C]+970",["writeFkt"]=writeFloat}
GAME.CNC3.FOG 				= {["ADRESS"]="cnc3game.dat+7E5346",["writeFkt"]=writeInteger}
GAME.CNC3.AICOCONTROL 		= {["ADRESS"]="[cnc3game.dat+7F0364]+86C",["writeFkt"]=writeInteger}
GAME.CNC3.CAMERAPITCH 		= {["ADRESS"]="[cnc3game.dat+007F06CC]+C0",["writeFkt"]=writeFloat}
GAME.CNC3.CAMERAZOOMHEIGHT 	= {["ADRESS"]="[cnc3game.dat+007E1A28]+40",["writeFkt"]=writeFloat}

GAME.BFME2ROTWK = {}
GAME.BFME2ROTWK.PROCESS 			= "game.dat"
GAME.BFME2ROTWK.FPSLIMIT 			= nil--{["ADRESS"]="[]+",["writeFkt"]=writeInteger}
GAME.BFME2ROTWK.GAMESPEED 			= {["ADRESS"]="[00DE447C]+23D4",["writeFkt"]=writeInteger}
GAME.BFME2ROTWK.CAMZOOMLIMIT 		= {["ADRESS"]="[00DE447C]+44",["writeFkt"]=writeInteger}
GAME.BFME2ROTWK.CAMCLIPDEPTH 		= {["ADRESS"]="[00DE4364]+950",["writeFkt"]=writeFloat}
GAME.BFME2ROTWK.FOG 				= nil --{["ADRESS"]="",["writeFkt"]=writeInteger}
GAME.BFME2ROTWK.AICOCONTROL 		= nil--{["ADRESS"]="[]+",["writeFkt"]=writeInteger}
GAME.BFME2ROTWK.CAMERAPITCH 		= {["ADRESS"]="[00DE447C]+70",["writeFkt"]=writeFloat}
GAME.BFME2ROTWK.CAMERAZOOMHEIGHT 	= {["ADRESS"]="[00DE447C]+40",["writeFkt"]=writeFloat}
--EXTRA
GAME.BFME2ROTWK.FPS					= {["ADRESS"]="[00DE4324]+0C",["writeFkt"]=writeInteger,["ON"]=60,["OFF"]=30} --no fps limit toggle needed, but this here is limited to 60, and unlimited in windowed mode 
--toadd: commandpoints, AI state, uncover map fog of war (only sp)

GAME.BFME2 = {}
GAME.BFME2.PROCESS 				= "game.dat"
GAME.BFME2.FPSLIMIT 			= nil
GAME.BFME2.GAMESPEED 			= {["ADRESS"]="[00DFEA3C]+23D4",["writeFkt"]=writeInteger}
GAME.BFME2.CAMZOOMLIMIT 		= {["ADRESS"]="[00DFEA3C]+44",["writeFkt"]=writeInteger}
GAME.BFME2.CAMCLIPDEPTH 		= {["ADRESS"]="[00DFE758]+950",["writeFkt"]=writeFloat}
GAME.BFME2.FOG 					= nil
GAME.BFME2.AICOCONTROL 			= nil
GAME.BFME2.CAMERAPITCH 			= {["ADRESS"]="[00DFEA3C]+70",["writeFkt"]=writeFloat}
GAME.BFME2.CAMERAZOOMHEIGHT 	= {["ADRESS"]="[00DFEA3C]+40",["writeFkt"]=writeFloat}
--EXTRA
GAME.BFME2.FPS					= {["ADRESS"]="[00DFE710]+0C",["writeFkt"]=writeInteger,["ON"]=60,["OFF"]=30}

GAME.CNCZH = {}
GAME.CNCZH.PROCESS 				= "Generals.exe"
GAME.CNCZH.FPSLIMIT 			= nil
GAME.CNCZH.GAMESPEED 			= {["ADRESS"]="[00A29B00]+08",["writeFkt"]=writeInteger}
GAME.CNCZH.CAMZOOMLIMIT 		= nil
GAME.CNCZH.CAMCLIPDEPTH 		= nil
GAME.CNCZH.FOG 					= nil
GAME.CNCZH.AICOCONTROL 			= nil
GAME.CNCZH.CAMERAPITCH 			= {["ADRESS"]="[00A2B5FC]+138",["writeFkt"]=writeFloat}
GAME.CNCZH.CURRENTCAMERAZOOMHEIGHT 	= {["ADRESS"]="[00A2B5FC]+44",["writeFkt"]=writeFloat}
GAME.CNCZH.MAXCAMERAZOOMHEIGHT 	= {["ADRESS"]="[00A2A21C]+178",["writeFkt"]=writeFloat}
GAME.CNCZH.CAMERAZOOMHEIGHT 	= {["ADRESS"]="[00A2B5FC]+478",["writeFkt"]=writeFloat}
GAME.CNCZH.TERRAINDRAWEXTEND 	= {["ADRESS"]="[[00A3ADB4]+CC]+740",["writeFkt"]=writeFloat}
-- TerrainDrawExtend 00A3ADB4+CC+740
-- MaxCameraHeight 00A2A21C+178
-- CameraHeight 00A2B5FC+478
-- CurrentCameraHeight 00A2B5FC+44
-- CurrentCamPitch 00A2B5FC+138
-- Gamespeed 00A29B00+08
-- GamespeedSlider 00A2DF5C+C+28+1E8
-- NoSuperweapons 00A2BB64+9C
-- NoSuperweaponsToggleBox 00A2DE88+5C
-- Money 00A2BB60+38+C+14+38
-- MoneySelection 00A2DE88+54

BUTTONSTATE = {}
BUTTONSTATE.ENABLE = false
BUTTONSTATE.FPS = false
BUTTONSTATE.ZOOM = false
BUTTONSTATE.AICOCONTROL = false


function GetTheProcessList()
	local T = {}
	local SL=createStringlist()
	getProcesslist(SL)
	for i=0,strings_getCount(SL)-1 do
		T[i] = strings_getString(SL,i)
	end
	SL = nil
	return T
end

PROCESS_FOUND = false

function GetCurrentGame()
	PROCESS_LIST = GetTheProcessList()
	for i=1,#PROCESS_LIST,1 do
		for j=1,#GAME_LIST,1 do
			if string.find(PROCESS_LIST[i],GAME_LIST[j]) then
				CURRENTGAME = GAME_LIST_REF[GAME_LIST[j]]
				PROCESS_FOUND = true
				return GAME_LIST_REF[GAME_LIST[j]]
			end
		end
	end	
end

function AttachToProcess()
	PROCESS_FOUND = false	
	CURRENTGAME = GetCurrentGame()
    --md5memory(process,4096)
	--openProcess("cnc3ep1.dat")
	if PROCESS_FOUND then		
		if CURRENTGAME == "BFME2" or CURRENTGAME == "BFME2ROTWK" then
			if string.find(getWindowCaption(getForegroundWindow()),"Ring") then 
				if string.find(getWindowCaption(getForegroundWindow()),"Witch") then 
					CURRENTGAME = "BFME2ROTWK"
				end	
			else
				PROCESS_FOUND = false
				return
			end
		end
		getAutoAttachList().add(GAME[CURRENTGAME]["PROCESS"])
		UDF1.CEToggleBox4.caption = "DETECTED GAME\n" .. CURRENTGAME
		t.destroy()
		BUTTONSTATE.ENABLE = true
	else
		UDF1.CEToggleBox4.caption = "ENABLE\n(F1)"
		BUTTONSTATE.ENABLE = false
		PROCESS_FOUND = false
	end
end

t = createTimer()
t.Interval = 10
t.OnTimer = function(t)
	AttachToProcess()
	if PROCESS_FOUND then
		t.destroy()
	end
end
  
function CEToggleBox4Click()
	AttachToProcess()
end

form_show(UDF1)
function CloseClick()
  closeCE()
  return caFree
end
UDF1.OnClose = CloseClick

LockCEEdit2Box = false
LockCETrackBar2 = false

function Toggle(value)
	if tonumber(value) == 1 then return 0
	else return 1 end
end

function SetValue(valueType,value)
	if GAME[CURRENTGAME][valueType] ~= nil then
		if value then
			GAME[CURRENTGAME][valueType]["writeFkt"](GAME[CURRENTGAME][valueType]["ADRESS"],value)
		else
			GAME[CURRENTGAME][valueType]["writeFkt"](GAME[CURRENTGAME][valueType]["ADRESS"],Toggle(readBytes(GAME[CURRENTGAME][valueType]["ADRESS"])))
		end
	end
end

function SetGamespeed(speed)
	SetValue("GAMESPEED",speed)
end

function SetGamespeed2(speed)
	speedhack_setSpeed(speed)
end

function SetFPS(speed)
 --fps speed
 writeInteger("10268C20",speed)
 writeInteger("105F367C",speed)
 --disable fps limit
 writeInteger("105F367A",0)
 --writeInteger("00BE4F4D",speed) --cnc3ep1.dat+7E4F4D
end

function SetFPS2(speed)
 --disable fps limit
 writeInteger("105F367A",0)
 --writeInteger("00BE4F4D",speed) --cnc3ep1.dat+7E4F4D
end

function CEEdit1Click()
    if tonumber(UDF1.CEEdit1.text) >= 1 and tonumber(UDF1.CEEdit1.text) <= 232 then
		UDF1.CETrackBar1.position = tonumber(UDF1.CEEdit1.text)
    elseif tonumber(UDF1.CEEdit1.text) < 1 then
		UDF1.CETrackBar1.position = (1-tonumber(UDF1.CEEdit1.text)-0.1)*-10
	else
		SetGamespeed(UDF1.CEEdit1.text)
	end
end

function CEEdit3Click()
	SetFPS(UDF1.CEEdit3.text)
    if tonumber(UDF1.CEEdit3.text) >= 1 and tonumber(UDF1.CEEdit3.text) <= 60 then
		UDF1.CETrackBar3.position = tonumber(UDF1.CEEdit3.text)
    end
end

function RemoveZoomLimits(state)
	if CURRENTGAME == "CNCZH" then 
			SetValue("MAXCAMERAZOOMHEIGHT",1000)
			SetValue("CAMERAZOOMHEIGHT",520)	
			SetValue("CURRENTCAMERAZOOMHEIGHT",520)
			SetValue("TERRAINDRAWEXTEND",16000)
	else
		if state == 0 then
			SetValue("CAMZOOMLIMIT",0)
			SetValue("CAMCLIPDEPTH",200.0)
			SetValue("FOG",0)
		else
			SetValue("CAMZOOMLIMIT",1)
			SetValue("CAMCLIPDEPTH",1.0)
			SetValue("FOG",1)
		end
	end
end

function CEToggleBox1Click()
	if not BUTTONSTATE.ZOOM then
		RemoveZoomLimits(0)
		--UDF1.CEToggleBox1.caption = "ON"
		BUTTONSTATE.ZOOM = true
		UDF1.CEToggleBox1.color = "clLime"
	else
		RemoveZoomLimits(1)
		--UDF1.CEToggleBox1.caption = "OFF"
		BUTTONSTATE.ZOOM = false
		UDF1.CEToggleBox1.color = "clDefault"
	end
end

function CEToggleBox2Click()
	if not BUTTONSTATE.FPS then
		if CURRENTGAME == "BFME2ROTWK" or CURRENTGAME == "BFME2" then 
			SetValue("FPS",60)		
		else 
			SetValue("FPSLIMIT",0) 
		end
		--UDF1.CEToggleBox2.caption = "ON"
		BUTTONSTATE.FPS = true
		UDF1.CEToggleBox2.color = "clLime"
	else
		if CURRENTGAME == "BFME2ROTWK" or CURRENTGAME == "BFME2" then 
			SetValue("FPS",30)		
		else 
			SetValue("FPSLIMIT",1) 
		end
		--UDF1.CEToggleBox2.caption = "OFF"
		BUTTONSTATE.FPS = false
		UDF1.CEToggleBox2.color = "clDefault"
	end
end

function CEToggleBox3Click()
	if not BUTTONSTATE.AICOCONTROL then
		SetValue("AICOCONTROL",1)
		--UDF1.CEToggleBox3.caption = "ON"
		BUTTONSTATE.AICOCONTROL = true
		UDF1.CEToggleBox3.color = "clLime"
	else
		SetValue("AICOCONTROL",0)
		--UDF1.CEToggleBox3.caption = "OFF"
		BUTTONSTATE.AICOCONTROL = false
		UDF1.CEToggleBox3.color = "clDefault"
	end
end

function SetGamespeed_(speed)
 if speed > 1 then
	 autoAssemble([[

	 ]])
 else
	 autoAssemble([[

	 ]])
 end
end

function CETrackBar1Change()
	--if UDF1.CETrackBar1.position < 1 then
	if UDF1.CETrackBar1.position > 0 then
		UDF1.CEEdit1.text = UDF1.CETrackBar1.position
		SetGamespeed(UDF1.CETrackBar1.position)
	else
		local speed = 1-0.1-((UDF1.CETrackBar1.position*-1)/10)
		SetGamespeed(1)
		SetGamespeed2(speed)
		UDF1.CEEdit1.text = tostring(speed)
	end
end

function CETrackBar2Change()
	if not LockCETrackBar2 then
		LockCEEdit2Box = true
		if UDF1.CETrackBar2.position <= 10 then
			SetGamespeed2(UDF1.CETrackBar2.position/10-0.1)
			UDF1.CEEdit2.text = UDF1.CETrackBar2.position/10-0.1
		elseif UDF1.CETrackBar2.position > 10 then
			SetGamespeed2(UDF1.CETrackBar2.position-10)
			UDF1.CEEdit2.text = UDF1.CETrackBar2.position-10
		end
		LockCEEdit2Box = false
		--UDF1.CEEdit2.text = speedhack_getSpeed()
	end
	--print(speedhack_getSpeed())
end

CAM_PITCH = 37.5
function CETrackBar4Change()
	UDF1.CEEdit4.text = UDF1.CETrackBar4.position
	local CAM_PITCH_FACTOR = tonumber(UDF1.CETrackBar4.position)/CAM_PITCH
	SetValue("CAMERAPITCH", CAM_PITCH_FACTOR)
	SetValue("CAMERAZOOMHEIGHT", readFloat(GAME[CURRENTGAME]["CAMERAZOOMHEIGHT"]["ADRESS"])+0.01)
end

CEEdit4Lock = false
function CEEdit4Click()
	local CAM_PITCH_FACTOR = tonumber(UDF1.CEEdit4.text)/CAM_PITCH
	SetValue("CAMERAPITCH", CAM_PITCH_FACTOR)
	SetValue("CAMERAZOOMHEIGHT", readFloat(GAME[CURRENTGAME]["CAMERAZOOMHEIGHT"]["ADRESS"])+0.01)	
	if tonumber(UDF1.CEEdit4.text) < 90 then
		UDF1.CETrackBar4.position = math.floor(CAM_PITCH_FACTOR+0.5)
	end
end

function CEEdit2Click()
	if not LockCEEdit2Box and UDF1.CEEdit2.text then
		--print(tonumber(UDF1.CEEdit2.text))
		LockCETrackBar2 = true
		SetGamespeed2(tonumber(UDF1.CEEdit2.text))
		if tonumber(UDF1.CEEdit2.text) >= 0 and tonumber(UDF1.CEEdit2.text) <= 20 then
			--UDF1.CETrackBar2.position = tonumber(UDF1.CEEdit2.text)
		end
		LockCETrackBar2 = false
	end
end

function CETrackBar3Change()
	UDF1.CEEdit3.text = UDF1.CETrackBar3.position
	SetFPS(tonumber(UDF1.CEEdit3.text))
end

function NUMPADPLUS()
	if UDF1.CETrackBar1.position < 232 then
		UDF1.CETrackBar1.position = UDF1.CETrackBar1.position + 1
	end
end

function NUMPADMINUS()
	if UDF1.CETrackBar1.position > 1 then
		UDF1.CETrackBar1.position = UDF1.CETrackBar1.position - 1
	end
end

function NUMPADONE()
	if UDF1.CETrackBar4.position >= 0 then
		UDF1.CETrackBar4.position = UDF1.CETrackBar4.position - 1
	end
end

function NUMPADTHREE()
	if UDF1.CETrackBar4.position >= 0 then
		UDF1.CETrackBar4.position = UDF1.CETrackBar4.position + 1
	end
end

function KEYF1()
	CEToggleBox4Click()
end

function KEYF2()
	CEToggleBox2Click()
end

function KEYF3()
	CEToggleBox1Click()
end

function KEYF4()
	CEToggleBox3Click()
end

hk1 = createHotkey(NUMPADPLUS, VK_ADD)
hk2 = createHotkey(NUMPADMINUS, VK_SUBTRACT)
hk3 = createHotkey(NUMPADONE, VK_NUMPAD1)
hk4 = createHotkey(NUMPADTHREE, VK_NUMPAD3)

hk5 = createHotkey(KEYF1, VK_F1)
hk6 = createHotkey(KEYF2, VK_F2)
hk7 = createHotkey(KEYF3, VK_F3)
hk8 = createHotkey(KEYF4, VK_F4)