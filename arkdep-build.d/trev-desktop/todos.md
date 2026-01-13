* Brew
  * Migrate the bottom of {/,/trev-base}/package.list to brew (different repo)
  * Run the brew install script with set -ex (one of those) and mimic the changes
  * Mount brew into a different subvol for OS-sharing
  * Do all the brew stuff in depends/trev-base
* Ensure services like avichi are enabled
* Script conf file modifications
  * Diff pacman.conf and script the changes instead of hard coding them
  * `mdns_minimal [NOTFOUND=return]` in `/etc/nsswitch.conf`
* waydroid
* SSH boot crypt unlock
