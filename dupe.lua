getgenv().Dupe = false
getgenv().Item = ""

while getgenv().Dupe do
    wait()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
        if v:IsA("Tool") then
            getgenv().Item = v.Name
            print(getgenv().Item)
        end
    end
end

while getgenv().Dupe do
    wait()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if v.Name == getgenv().Item then
            v.Parent = game:GetService("Players").LocalPlayer.Character
        end
    end
end
