local GITHUB_PAGE = "https://github.com/setcvar/comovai/blob/main/files/"
local FILES = {
	"test",
}
for key, value in pairs (FILES) do
	local raw_body = request({Url = GITHUB_PAGE..key..".lua", Method = "GET"}).Body
	local func = loadstring(raw_body)()
	func()
end