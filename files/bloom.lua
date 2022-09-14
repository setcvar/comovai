return function ()
    local bloom = Instance.new("BloomEffect")
    bloom.Parent = game:GetService"Lighting"
    bloom.Intensity = 0.4
    bloom.Threshold = 0.95
    bloom.Size = 0.4
end