# phn-repo

just a repo autobuilding packages in the AUR that I use regularly

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
Since GitHub Actions runners have almost no storage, I decided the best solution was to split the packages in seperate repositories, each containing at most 15 packages, which also means faster build times. Be sure to add all 