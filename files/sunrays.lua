return function ()
   local rays = Instance.new("SunRaysEffect")
   rays.Parent = game:GetService"Lighting"
   rays.Intensity = 0.1
   rays.Spread = 0.6
end