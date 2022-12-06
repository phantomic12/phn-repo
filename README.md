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

[phn-repo-s5]
SigLevel = TrustAll
Server = http://downloads.sourceforge.net/phn-repo/5/repo

[phn-repo-s6]
SigLevel = TrustAll
Server = http://downloads.sourceforge.net/phn-repo/6/repo

[phn-repo-s7]
SigLevel = TrustAll
Server = http://downloads.sourceforge.net/phn-repo/7/repo

[phn-repo-s8]
SigLevel = TrustAll
Server = http://downloads.sourceforge.net/phn-repo/8/repo

[phn-repo-s9]
SigLevel = TrustAll
Server = http://downloads.sourceforge.net/phn-repo/9/repo

[phn-repo-s10]
SigLevel = TrustAll
Server = http://downloads.sourceforge.net/phn-repo/10/repo
````
split into multiple repos because GA runners have no space whatsoever, that was the only way to get any real result. 

coming soon

osdn hosting

repo auto installation script

![SourceForge](https://img.shields.io/sourceforge/dm/phn-repo?color=%23AA336A)
