# phn-repo

just a repo autobuilding packages in the AUR that I use regularly

add this to the end of your ```pacman.conf```

````
[phn-repo-s1]
SigLevel = TrustAll
Server = http://downloads.sourceforge.net/phn-repo/1/repo

[phn-repo-s2]
SigLevel = TrustAll
Server = http://downloads.sourceforge.net/phn-repo/2/repo

[phn-repo-s3]
SigLevel = TrustAll
Server = http://downloads.sourceforge.net/phn-repo/3/repo

[phn-repo-s4]
SigLevel = TrustAll
Server = http://downloads.sourceforge.net/phn-repo/4/repo
````
split into 4 repos because GA runners have no space whatsoever, that was the only way to get any real result. 

coming soon

osdn hosting
mirrorlist