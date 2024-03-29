local GITHUB_PAGE = "https://raw.githubusercontent.com/setcvar/comovai/main/files/"
local EXTENSION = ".lua"

local FILES = {
	"sunrays",
	"atmosphere",
	"bloom",
	"environment",
	"future"
}

for key, value in pairs (FILES) do
	local raw_body = request({Url = GITHUB_PAGE .. value .. EXTENSION, Method = "GET"}).Body
	local file = loadstring(raw_body)()
	file()
end