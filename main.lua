local l = game.Lighting

l.EnvironmentDiffuseScale = 0.2
l.EnvironmentSpecularScale = .6

local variaveis = {
	["ceu"] = true,
	["atmosfera"] = true,
	["bloom"] = true,
	["blur"] = true,
	["color_boost"] = true,
	["raios_de_sol"] = true,
}

local raios = {
	["intensidade"] = 0.1,
	["espalhar"] = 0.6, 
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

-- x("nome do efeito") || exemplo: x("ColorCorrection")
local function x(b)
	for i,v in pairs(game.Lighting:GetDescendants()) do
		if v:IsA(b) then
			v:Destroy()
		end
	end
end

local s_atmosfera = variaveis.atmosfera
local s_bloom = variaveis.bloom
local s_blur = variaveis.blur
local s_colorboost = variaveis.color_boost
local s_ceu = variaveis.ceu
local s_sunray = variaveis.raios_de_sol

if s_atmosfera == true then
	x("Atmosphere")
	local a = Instance.new("Atmosphere")
	a.Density = atmosfera.densidade
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

if s_colorboost then
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

if s_sunray then
	x("SunraysEffect")
	local n = Instance.new("SunRaysEffect")
	n.Intensity = raios.intensidade
	n.Spread = raios.espalhar
	n.Parent = l
end
