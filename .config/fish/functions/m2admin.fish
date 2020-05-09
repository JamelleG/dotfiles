# Defined in /Users/jamelle/.config/fish/functions/m2.fish @ line 6
function m2admin

  local USERNAME=jam
  local PASSWORD=lolking99
  local EMAIL=jamelle@wearejh.com
  local FIRSTNAME=Jamelle
  local LASTNAME=Gordon

  wf2 m admin:user:create \
	--admin-user=$USERNAME \
	--admin-password=$PASSWORD \
	--admin-email=$EMAIL \
	--admin-firstname=$FIRSTNAME \
	--admin-lastname=$LASTNAME
end
