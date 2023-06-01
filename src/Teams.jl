module Teams

using HTTP, JSON

export GetUserData, GetUsersTeams, GetTeamMembers

function GetUserData(access_token::AbstractString)::Dict{String, Any}
    resp = HTTP.get("https://graph.microsoft.com/v1.0/me", ["Authorization"=>"Bearer $(access_token)"])
    body = JSON.parse(String(resp.body))
    body
end

function GetUserData(access_token::AbstractString, user_id::AbstractString)::Dict{String, Any}
    resp = HTTP.get("https://graph.microsoft.com/v1.0/$(user_id)", ["Authorization"=>"Bearer $(access_token)"])
    body = JSON.parse(String(resp.body))
    body
end

function GetUsersTeams(access_token::AbstractString)::Dict{String, Any}
    resp = HTTP.get("https://graph.microsoft.com/v1.0/me/joinedTeams", ["Authorization"=>"Bearer $(access_token)"])
    body = JSON.parse(String(resp.body))
    body
end

function GetUsersTeams(access_token::AbstractString, user_id::AbstractString)::Dict{String, Any}
    resp = HTTP.get("https://graph.microsoft.com/v1.0/$(user_id)/joinedTeams", ["Authorization"=>"Bearer $(access_token)"])
    body = JSON.parse(String(resp.body))
    body
end

function GetTeamMembers(access_token::AbstractString, team_id::AbstractString)::Dict{String, Any}
    resp = HTTP.get("https://graph.microsoft.com/v1.0/groups/$(team_id)/members", ["Authorization"=>"Bearer $(access_token)"])
    body = JSON.parse(String(resp.body))
    body
end
end
