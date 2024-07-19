local Env = {}

local ReturnedEnv = {}

local REnv = {
    game=Game, 
    Instance=Instance, 
    type=type, 
    typeof=typeof, 
    wait=wait, 
    workspace=workspace, 
    Wait=wait, 
    Workspace=workspace, 
    Enum=Enum, 
    ElapsedTime=getfenv()["elapsedTime"], 
    elapsedTime=getfenv()["elapsedTime"], 
    require=require, 
    Random=Random, 
    RaycastParams=RaycastParams, 
    Region3=Region3, 
    Ray=Ray, 
    Rect=Rect, 
    RotationCurveKey=RotationCurveKey, 
    Region3int16=Region3int16, 
    rawget=rawget, 
    rawlen=rawlen, 
    rawset=rawset, 
    rawequal=rawequal, 
    task=task, 
    TweenInfo=TweenInfo, 
    tostring=tostring, 
    tonumber=tonumber, 
    table=table, 
    time=time, 
    tick=tick, 
    ypcall=pcall, 
    UDim2=UDim2, 
    utf8=utf8, 
    unpack=unpack, 
    UDim=UDim, 
    UserSettings=UserSettings, 
    ipairs=ipairs, 
    os=os, 
    OverlapParams=OverlapParams, 
    pairs=pairs, 
    pcall=pcall, 
    plugin=plugin, 
    PhysicalProperties=PhysicalProperties, 
    PathWaypoint=PathWaypoint, 
    printidentity=printidentity, 
    Axes=Axes, 
    assert=assert, 
    script=nil, 
    string=string, 
    select=select, 
    settings=settings, 
    spawn=spawn, 
    Secret=Secret, 
    shared=shared, 
    setfenv=setfenv, 
    SharedTable=SharedTable, 
    setmetatable=setmetatable, 
    Spawn=spawn, 
    Stats=getfenv()["stats"], 
    stats=getfenv()["stats"], 
    DateTime=DateTime, 
    debug=debug, 
    DockWidgetPluginGuiInfo=DockWidgetPluginGuiInfo, 
    delay=delay, 
    Delay=delay, 
    Font=Font, 
    Faces=Faces, 
    File=File, 
    FloatCurveKey=FloatCurveKey, 
    getfenv=getfenv, 
    getmetatable=getmetatable, 
    gcinfo=gcinfo, 
    Game=Game, 
    loadstring=loadstring, 
    xpcall=xpcall, 
    CFrame=CFrame, 
    Color3=Color3, 
    coroutine=coroutine, 
    ColorSequenceKeypoint=ColorSequenceKeypoint, 
    ColorSequence=ColorSequence, 
    CatalogSearchParams=CatalogSearchParams, 
    collectgarbage=getfenv()["collectgarbage"], 
    Vector3=Vector3, 
    Vector2=Vector2, 
    Vector2int16=Vector2int16, 
    Vector3int16=Vector3int16, 
    Version=getfenv()["version"], 
    version=getfenv()["version"], 
    BrickColor=BrickColor, 
    bit32=bit32, 
    buffer=buffer, 
    newproxy=newproxy, 
    NumberSequence=NumberSequence, 
    NumberSequenceKeypoint=NumberSequenceKeypoint, 
    NumberRange=NumberRange, 
    next=next, 
    math=math, 
    _G={}, 
    _VERSION=_VERSION, 
    print=print, 
    warn=warn, 
    error=error
}
local ClonedFunctions = {}

local function newLoadstring(str)
	str = str
	local nLs = LoadString
	local oLs = LoadString

	local psuccess, success, result

	_, success, result = pcall(oLs, str, --env
		getfenv())
	if not success then
		local worked, nsuccess, nresult = pcall(nLs, str, getfenv())
		if worked then
			success, result = nsuccess, nresult
		end
	end

	return success, result
end

--local rrequire = require
function Env:getgenv()
    return getfenv()
end

function Env:getrenv()
    return REnv
end    

function Env:identifyexecutor()
    return "Aries [Dev]"
end

function Env:loadstring(Str)
    return function()
        newLoadstring(Str)()
    end
end

function Env:getrenv()
    return RobloxEnv
end    

local keys = {
    [8]=Enum.KeyCode.Backspace, 
    [9]=Enum.KeyCode.Tab, 
    [12]=Enum.KeyCode.Clear, 
    [13]=Enum.KeyCode.Return, 
    [16]=Enum.KeyCode.LeftShift, 
    [17]=Enum.KeyCode.LeftControl, 
    [18]=Enum.KeyCode.LeftAlt, 
    [19]=Enum.KeyCode.Pause, 
    [20]=Enum.KeyCode.CapsLock, 
    [27]=Enum.KeyCode.Escape, 
    [32]=Enum.KeyCode.Space, 
    [33]=Enum.KeyCode.PageUp, 
    [34]=Enum.KeyCode.PageDown, 
    [35]=Enum.KeyCode.End, 
    [36]=Enum.KeyCode.Home, 
    [45]=Enum.KeyCode.Insert, 
    [46]=Enum.KeyCode.Delete, 
    [48]=Enum.KeyCode.Zero, 
    [49]=Enum.KeyCode.One, 
    [50]=Enum.KeyCode.Two, 
    [51]=Enum.KeyCode.Three, 
    [52]=Enum.KeyCode.Four, 
    [53]=Enum.KeyCode.Five, 
    [54]=Enum.KeyCode.Six, 
    [55]=Enum.KeyCode.Seven, 
    [56]=Enum.KeyCode.Eight, 
    [57]=Enum.KeyCode.Nine, 
    [65]=Enum.KeyCode.A, 
    [66]=Enum.KeyCode.B, 
    [67]=Enum.KeyCode.C, 
    [68]=Enum.KeyCode.D, 
    [69]=Enum.KeyCode.E, 
    [70]=Enum.KeyCode.F, 
    [71]=Enum.KeyCode.G, 
    [72]=Enum.KeyCode.H, 
    [73]=Enum.KeyCode.I, 
    [74]=Enum.KeyCode.J, 
    [75]=Enum.KeyCode.K, 
    [76]=Enum.KeyCode.L, 
    [77]=Enum.KeyCode.M, 
    [78]=Enum.KeyCode.N, 
    [79]=Enum.KeyCode.O, 
    [80]=Enum.KeyCode.P, 
    [81]=Enum.KeyCode.Q, 
    [82]=Enum.KeyCode.R, 
    [83]=Enum.KeyCode.S, 
    [84]=Enum.KeyCode.T, 
    [85]=Enum.KeyCode.U, 
    [86]=Enum.KeyCode.V, 
    [87]=Enum.KeyCode.W, 
    [88]=Enum.KeyCode.X, 
    [89]=Enum.KeyCode.Y, 
    [90]=Enum.KeyCode.Z, 
    [93]=Enum.KeyCode.Menu, 
    [96]=Enum.KeyCode.KeypadZero, 
    [97]=Enum.KeyCode.KeypadOne, 
    [98]=Enum.KeyCode.KeypadTwo, 
    [99]=Enum.KeyCode.KeypadThree, 
    [100]=Enum.KeyCode.KeypadFour, 
    [101]=Enum.KeyCode.KeypadFive, 
    [102]=Enum.KeyCode.KeypadSix, 
    [103]=Enum.KeyCode.KeypadSeven, 
    [104]=Enum.KeyCode.KeypadEight, 
    [105]=Enum.KeyCode.KeypadNine, 
    [106]=Enum.KeyCode.KeypadMultiply, 
    [107]=Enum.KeyCode.KeypadPlus, 
    [109]=Enum.KeyCode.KeypadMinus, 
    [110]=Enum.KeyCode.KeypadPeriod, 
    [111]=Enum.KeyCode.KeypadDivide, 
    [112]=Enum.KeyCode.F1, 
    [113]=Enum.KeyCode.F2, 
    [114]=Enum.KeyCode.F3, 
    [115]=Enum.KeyCode.F4, 
    [116]=Enum.KeyCode.F5, 
    [117]=Enum.KeyCode.F6, 
    [118]=Enum.KeyCode.F7, 
    [119]=Enum.KeyCode.F8, 
    [120]=Enum.KeyCode.F9, 
    [121]=Enum.KeyCode.F10, 
    [122]=Enum.KeyCode.F11, 
    [123]=Enum.KeyCode.F12, 
    [144]=Enum.KeyCode.NumLock, 
    [145]=Enum.KeyCode.ScrollLock, 
    [186]=Enum.KeyCode.Semicolon, 
    [187]=Enum.KeyCode.Equals, 
    [188]=Enum.KeyCode.Comma, 
    [189]=Enum.KeyCode.Minus, 
    [190]=Enum.KeyCode.Period, 
    [191]=Enum.KeyCode.Slash, 
    [192]=Enum.KeyCode.Backquote, 
    [219]=Enum.KeyCode.LeftBracket, 
    [221]=Enum.KeyCode.RightBracket, 
    [222]=Enum.KeyCode.Quote
}

function Env.mouse1click(x, y)
    x = x or 0
    y = y or 0
    game:GetService("VirtualInputManager"):SendMouseButtonEvent(x, y, 0, true, game, false)
    task.wait()
    game:GetService("VirtualInputManager"):SendMouseButtonEvent(x, y, 0, false, game, false)
end
function Env.mouse2click(x, y)
    x = x or 0
    y = y or 0
    game:GetService("VirtualInputManager"):SendMouseButtonEvent(x, y, 1, true, game, false)
    task.wait()
    game:GetService("VirtualInputManager"):SendMouseButtonEvent(x, y, 1, false, game, false)
end
function Env.mouse1press(x, y)
    x = x or 0
    y = y or 0
    game:GetService("VirtualInputManager"):SendMouseButtonEvent(x, y, 0, true, game, false)
end
function Env.mouse1release(x, y)
    x = x or 0
    y = y or 0
    game:GetService("VirtualInputManager"):SendMouseButtonEvent(x, y, 0, false, game, false)
end
function Env.mouse2press(x, y)
    x = x or 0
    y = y or 0
    game:GetService("VirtualInputManager"):SendMouseButtonEvent(x, y, 1, true, game, false)
end
function Env.mouse2release(x, y)
    x = x or 0
    y = y or 0
    game:GetService("VirtualInputManager"):SendMouseButtonEvent(x, y, 1, false, game, false)
end
function Env.mousescroll(x, y, a)
    x = x or 0
    y = y or 0
    a = a and true or false
    game:GetService("VirtualInputManager"):SendMouseWheelEvent(x, y, a, game)
end
function Env.keyclick(key)
    if typeof(key) == 'number' then
        if not keys[key] then return error("Key "..tostring(key) .. ' not found!') end
        game:GetService("VirtualInputManager"):SendKeyEvent(true, keys[key], false, game)
        task.wait()
        game:GetService("VirtualInputManager"):SendKeyEvent(false, keys[key], false, game)
    elseif typeof(key) == 'EnumItem' then
        game:GetService("VirtualInputManager"):SendKeyEvent(true, key, false, game)
        task.wait()
        game:GetService("VirtualInputManager"):SendKeyEvent(false, key, false, game)
    end
end
function Env.keypress(key)
    if typeof(key) == 'number' then
        if not keys[key] then return error("Key "..tostring(key) .. ' not found!') end
        game:GetService("VirtualInputManager"):SendKeyEvent(true, keys[key], false, game)
    elseif typeof(key) == 'EnumItem' then
        game:GetService("VirtualInputManager"):SendKeyEvent(true, key, false, game)
    end
end
function Env.keyrelease(key)
    if typeof(key) == 'number' then
        if not keys[key] then return error("Key "..tostring(key) .. ' not found!') end
        game:GetService("VirtualInputManager"):SendKeyEvent(false, keys[key], false, game)
    elseif typeof(key) == 'EnumItem' then
        game:GetService("VirtualInputManager"):SendKeyEvent(false, key, false, game)
    end
end
function Env.mousemoverel(relx, rely)
    local Pos = workspace.CurrentCamera.ViewportSize
    relx = relx or 0
    rely = rely or 0
    local x = Pos.X * relx
    local y = Pos.Y * rely
    game:GetService("VirtualInputManager"):SendMouseMoveEvent(x, y, game)
end
function Env.mousemoveabs(x, y)
    x = x or 0 y = y or 0
    game:GetService("VirtualInputManager"):SendMouseMoveEvent(x, y, game)
end 

function Env:getrunningscripts()
    local RunningScripts = {}
    for I,V in pairs(game:GetDescendants()) do
        if V:IsA("LuaSourceContainer") then
            RunningScripts[I] = V
        end
    end

    return RunningScripts
end    

function Env:iscclosure(Buffer)
    assert(typeof(Buffer) == "function", "iscclosure: First argument must be a function!")

    FunctionInfo = debug.info(Buffer, "n")

    if FunctionInfo == "wrapped" then
        return false
    else
        return true
    end

    return false
end

function Env:islclosure(Buffer)
    assert(typeof(Buffer) == "function", "iscclosure: First argument must be a function!")

    FunctionInfo = debug.info(Buffer, "n")

    if FunctionInfo == "wrapped" then
        return true
    else
        return false
    end

    return false
end


function Env:Init()
    for i,v in pairs(self) do
        if typeof(v) == "function" and tostring(v) ~= "Init" then
            ReturnedEnv[i] = v
        end    
    end

    for i,v in pairs(REnv) do
        ReturnedEnv[i] = v
    end
end    

return Env
