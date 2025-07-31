#!/usr/bin/env bash
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

grep=""
dry_run="0"

# Detect distro from /etc/os-release
if [[ -f /etc/os-release ]]; then
	. /etc/os-release
	distro_id="$ID"
else
	distro_id="unknown"
fi

while [[ $# -gt 0 ]]; do
	echo "ARG: \"$1\""
	if [[ "$1" == "--dry" ]]; then
		dry_run="1"
	else
		grep="$1"
	fi
	shift
done

log() {
	if [[ $dry_run == "1" ]]; then
		echo "[DRY_RUN]: $1"
	else
		echo "$1"
	fi
}

log "Detected distro: $distro_id"
log "RUN: env: $env -- grep: $grep"

runs_dir=`find $script_dir/runs/$distro_id -mindepth 1 -maxdepth 1 -executable`

for s in $runs_dir; do
	script_name=$(basename "$s")
	if ! echo "$script_name" | grep -q "$grep"; then
		log "grep \"$grep\" filtered out $script_name"
		continue
	fi

	log "running script: $s"

	if [[ $dry_run == "0" ]]; then
		$s
	fi
done
