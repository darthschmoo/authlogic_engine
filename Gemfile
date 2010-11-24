source "http://rubygems.org"

gem "authlogic", "~> 2.1.6"

if AUTH_LOGIN_ENGINE_CONFIG[:open_id]
  puts "declaring openid gem"
  gem "authlogic-oid"
else
  puts "oops"
end