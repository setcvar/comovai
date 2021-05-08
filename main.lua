local function x(b)
	for i,v in pairs(game.Lighting:GetDescendants()) do
		if v:IsA(b) then
			v:Destroy()
		end
	end
end

	if variaveis.atmosfera == true then
		x("Atmosphere")
		local a = Instance.new("Atmosphere")
		a.Density = atmosfera.densidade
		a.Parent = l
	end
	
	if variaveis.bloom then
		x("BloomEffect")
		local v = Instance.new("BloomEffect")
		v.Intensity = bloom.intensidade
		v.Threshold = bloom.magnitude
		v.Size = bloom.tamanho
		v.Parent =  l
	end	
	
	if variaveis.blur then
		x("BlurEffect")
		local b = Instance.new("BlurEffect")
		b.Size = blur.tamanho
		b.Parent = l
	end
	
	if variaveis.color_boost then
		x("ColorCorrectionEffect")
		local c = Instance.new("ColorCorrectionEffect")
		c.Contrast = color_boost.constrate
		c.Brightness = color_boost.claridade
		c.Saturation = color_boost["saturação"]
		c.Parent = l
	end
	
	if variaveis["ceu"] then
		x("Sky")
		local attain_heaven = Instance.new("Sky")
		attain_heaven.Parent = l
		
	end
	
	if variaveis.raios_de_sol then
		x("SunraysEffect")
		local n = Instance.new("SunRaysEffect")
		n.Intensity = raios.intensidade
		n.Spread = raios.espalhar
		n.Parent = l
	end
	
end
