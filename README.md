# SubWalker
[![](https://img.shields.io/twitter/follow/m8r0wn?color=blue&label=Twitter&logo=twitter&style=plastic)](https://twitter.com/m8r0wn)&nbsp;&nbsp;
[![](https://img.shields.io/github/followers/m8r0wn?color=gray&label=GitHub&logo=github&style=plastic)](https://github.com/m8r0wn)&nbsp;&nbsp;
[![](https://img.shields.io/badge/Sponsor-GitHub-green?style=plastic&logo=github)](https://github.com/sponsors/m8r0wn)&nbsp;&nbsp;
[![](https://img.shields.io/badge/Donate-PayPal-blue?style=plastic&logo=paypal)](https://www.paypal.com/paypalme/m8r0wn)

SubWalker is a simple Bash recon script that will simultaneously execute various subdomain enumeration tools, aggregate the results, and write entries to a file free of duplicates. This helps prevent discrepancies in enumeration tools, even those claiming to use similar sources. 

**Tools used:**
* [SubScraper](https://github.com/m8r0wn/subscraper)
* [Sublist3r](https://github.com/aboul3la/Sublist3r)
* [AssetFinder](https://github.com/tomnomnom/assetfinder)

### Install
Written for Debian-based Linux distributions (*Kali* & *Ubuntu*):

```text
git clone https://github.com/m8r0wn/subwalker
cd subwalker; chmod +x install.sh subwalker.sh
sudo ./install.sh
```

### Usage
```text
#> ./subwalker example.com
[*] Executing SubWalker against: example.com
[*] Launching SubScraper
[*] Launching Sublist3r
[*] Launching assetfinder
[*] Waiting until all scripts complete...

[+] SubWalker complete with 107 results
[+] Output saved to: /opt/subwalker/subwalker.txt
```
