Some of these todos aren't specifically about this repo (for now)

* Consistant ssh host keys (overlay? extension?)
  * Desktop uses dist-extension (needs testing)
  * Containers would need persistent storage (but don't have ssh anyway)
* Port my custom services from brew install scripts to here
* Brew
  * Do all the brew setup stuff in depends/trev-base
  * Mount brew into a different subvol for OS-sharing
    * Move brew cache (home cache of installer) to a shared location
* Figure out why NetworkManager is never enabled properly
* Automatically `modprobe sg`
* Add sublime repo (and key for install)
* Script conf file modifications
  * Diff pacman.conf and script the changes instead of hard coding them
  * `mdns_minimal [NOTFOUND=return]` in `/etc/nsswitch.conf`
* waydroid
* SSH boot crypt unlock
* Keep arkdep from redownloading packages so frequently (keep cache)
