export paranoidal_mods_path="$(cat config.json |jq -r '.modsPath')/$(cat config.json |jq -r '.mod.name')"
export base_mod_version_data=$(cat "$paranoidal_mods_path/info.json" | jq -r ".dependencies "  |jq ".[0] " |xargs)
if [[ $base_mod_version_data =~  ^(base >= )([0-9]{0,}\.[0-9]{0,}\.[0-9]{0,})$ ]]; then base_mod_version=${BASH_REMATCH[2]}; else exit 1; fi
echo "Factorio version is $base_mod_version"
wget  "$(cat config.json |jq -r '.serverDownloadLink')/$base_mod_version/$(cat config.json |jq -r '.version')/linux64" -O factorio.tar.xz && tar xf factorio.tar.xz
./factorio/bin/x64/factorio  --version
runner_hostname=$(hostname -f)
./factorio/bin/x64/factorio --mod-directory $(cat config.json |jq -r '.modsPath') --start-server-load-scenario base/freeplay --bind $runner_hostname:34197 &
factorio_server_pid=$!
for((i=0; ;++i)); do 
	sleep 1;
	while   ps | grep " $factorio_server_pid "     
	do   echo $factorio_server_pid is still in the ps output. Must still be running.
		sleep 3
		factorio_opened_port=$(netstat -u -n -a);
		echo "factorio_opened_port $factorio_opened_port"
		if [[ $factorio_opened_port == *":34197"* ]]; then
			echo "factorio server started at $opened_port. Mods validation on start with contol.lua completed! New game has been created!"; 
			ls $paranoidal_mods_path -a
			kill -TERM $factorio_server_pid;						
		fi;
	done;	
	echo Oh, it looks like the process is done.
	wait $factorio_server_pid
	factorio_server_exit_code=$?
	echo "factorio_server_exit_code $factorio_server_exit_code"	
	exit $factorio_server_exit_code
done;
