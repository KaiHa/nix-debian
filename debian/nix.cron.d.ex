#
# Regular cron jobs for the nix package
#
0 4	* * *	root	[ -x /usr/bin/nix_maintenance ] && /usr/bin/nix_maintenance
