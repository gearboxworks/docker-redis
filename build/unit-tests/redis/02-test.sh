#!/bin/bash
# Created on 2020-03-14T03:58:53+1100, using template:01-base.sh.tmpl and json:gearbox.json

p_info "redis" "Release test started."

p_info "redis" "Checking redis PING:"
if redis-cli ping
then
	c_ok "Redis PING OK."
else
	c_err "Redis NOT PINGING."
fi

p_info "redis" "Checking redis SET:"
if redis-cli set Gearbox gearbox-rulez
then
	c_ok "Redis SET OK."
else
	c_err "Redis NOT able to SET."
fi

p_info "redis" "Checking redis GET:"
if redis-cli get Gearbox
then
	c_ok "Redis GET OK."
else
	c_err "Redis NOT able to GET."
fi

p_info "redis" "Release test finished."

