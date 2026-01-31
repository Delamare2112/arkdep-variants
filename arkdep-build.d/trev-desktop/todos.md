Some of these todos aren't specifically about this repo (for now)

* Brew
  * Do all the brew setup stuff in depends/trev-base
  * Mount brew into a different subvol for OS-sharing
    * Move brew cache (home cache of installer) to a shared location
* Figure out why NetworkManager is never enabled properly
* Add sublime repo (and key for install)
* Script conf file modifications
  * Diff pacman.conf and script the changes instead of hard coding them
  * `mdns_minimal [NOTFOUND=return]` in `/etc/nsswitch.conf`
* waydroid
* SSH boot crypt unlock
* Keep arkdep from redownloading packages so frequently (keep cache)
