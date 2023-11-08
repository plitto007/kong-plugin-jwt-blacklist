package = "kong-jwt-blacklist"
version = "1.0.0-3"


source = {
  url = "file://kong-jwt-blacklist-1.0.0-3.rockspec"
}


description = {
  summary = "Block user by user_id or jwt token if needed",
  license = "MIT"
}


dependencies = {
  "lua-resty-openidc ~> 1.7.4-1"
}


build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-jwt-blacklist.handler"] =  "plugin/handler.lua",
    ["kong.plugins.kong-jwt-blacklist.schema"] = "plugin/schema.lua"
  }
}