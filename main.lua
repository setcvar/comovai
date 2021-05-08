local l = game.Lighting

local variaveis = {
    ["ceu"] = true,
    ["atmosfera"] = true,
    ["bloom"] = true,
    ["blur"] = true,
    ["color_boost"] = true,
    ["raios_de_sol"] = true,
}

local raios = {
    ["intensidade"] = 0.25,
    ["espalhar"] = 0.2, 
}

local atmosfera = {
    ["densidade"] = 0.25,
}

local bloom = {
    ["intensidade"] = 0.4,
    ["magnitude"] = 0.95,
    ["tamanho"] = 0.4,
}

local blur = {
    ["tamanho"] = 0.4,
}

local color_boost = {
    ["saturação"] = 0.2,
    ["constrate"] = 0,
    ["claridade"] = 0,
}

local function x(b)
	for i,v in pairs(game.Lighting:GetDescendants()) do
		if v:IsA(b) then
			v:Destroy()
		end
	end
end

if s_atmosfera == true then
	x("Atmosphere")
	local a = Instance.new("Atmosphere")
	a.Density = s_atmosfera.densidade
	a.Parent = l
end
	if s_bloom then
	x("BloomEffect")
	local v = Instance.new("BloomEffect")
	v.Intensity = bloom.intensidade
	v.Threshold = bloom.magnitude
	v.Size = bloom.tamanho
	v.Parent =  l
end	

if s_blur then
	x("BlurEffect")
	local b = Instance.new("BlurEffect")
	b.Size = blur.tamanho
	b.Parent = l
end

if s_color_boost then
	x("ColorCorrectionEffect")
	local c = Instance.new("ColorCorrectionEffect")
	c.Contrast = color_boost.constrate
	c.Brightness = color_boost.claridade
	c.Saturation = color_boost["saturação"]
	c.Parent = l
end

if s_ceu then
	x("Sky")
	local attain_heaven = Instance.new("Sky")
	attain_heaven.Parent = l
end

if s_raios_de_sol then
	x("SunraysEffect")
	local n = Instance.new("SunRaysEffect")
	n.Intensity = raios.intensidade
	n.Spread = raios.espalhar
	n.Parent = l
end
