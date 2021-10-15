local http_request = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or getgenv().request or request

local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
local db = game:GetService('HttpService'):JSONDecode(body)

local fingerprints = {"Sw-Fingerprint", "Krnl-Fingerprint", "Syn-Fingerprint", "Exploit-Guid", "Proto-User-Identifier", "Sentinel-Fingerprint"};
local fingerprint = "";

for i, v in next, fingerprints do
	if db.headers[v] then
		fingerprint = db.headers[v];
		break
	end
end

if fingeprint then
	setclipboard(hwid)
	print('Your fingerprint is: ' .. hwid)
	print('If nothing shows above, please contact ; dylan#1337 with a screenshot.')
	game:GetService("Players").LocalPlayer:Kick('copied hwid to clipboard.')
else
	game:GetService("Players").LocalPlayer:Kick('incompatible exploit/unable to find hwid (try krnl, syn, proto, sentinel)')
end
