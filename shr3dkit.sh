#!/bin/bash

###Shr3dder Red-Team Toolkit Script###

# Global variables
BLUE='\033[1;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Check theHarvester.py permissions
#perms=$(stat /usr/share/theharvester/theHarvester.py | grep -m1 'Access' | cut -d '/' -f2 | cut -d ')' -f1)
#if [ "$perms" == '-rw-r--r--' ]; then
#     chmod 755 /usr/share/theharvester/theHarvester.py
#fi

#Updating Kali
echo -e "${BLUE}Updating Kali.${NC}"
apt-get update ; apt-get -y upgrade ; apt-get -y dist-upgrade ; apt-get -y autoremove ; apt-get -y autoclean ; echo

# Making Directories
mkdir -p /opt/RedTeam-Toolkit/{Reconnaissance/{Active,Passive},Frameworks,Weaponization,Delivery/{Phishing},"Command and Control"/{"Remote Access",Staging},"Lateral Movement","Establish Foothold","Escalate Privileges"/{"Domain Escalation","Local Escalation"},"Data Exfiltration"}

# Active Intelligence Gathering
echo -e "${YELLOW}Checking Active Intelligence Gathering.${NC}"

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Active/EyeWitness/.git ]; then
     echo -e "${BLUE}Updating EyeWitness.${NC}"
     cd /opt/RedTeam-Toolkit/Reconnaissance/Active/EyeWitness ; git pull
     echo
else
  echo -e "${YELLOW}Downloading EyeWitness.${NC}"
  git clone https://github.com/FortyNorthSecurity/EyeWitness.git /opt/RedTeam-Toolkit/Reconnaissance/Active/EyeWitness
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Active/AWSBucketDump/.git ]; then
     echo -e "${BLUE}Updating AWSBucketDump.${NC}"
     cd /opt/RedTeam-Toolkit/Reconnaissance/Active/AWSBucketDump ; git pull
     echo
else
  echo -e "${YELLOW}Downloading AWSBucketDump & Grabbing Requirements.${NC}"
  git clone https://github.com/jordanpotti/AWSBucketDump.git /opt/RedTeam-Toolkit/Reconnaissance/Active/EyeWitness ; pip install -r /opt/RedTeam-Toolkit/Reconnaissance/Active/EyeWitness/requirements.txt
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Active/AWSBucketDump/.git ]; then
     echo -e "${BLUE}Updating AQUATONE.${NC}"
     cd /opt/RedTeam-Toolkit/Reconnaissance/Active/AQUATONE ; git pull
     echo
else
  echo -e "${YELLOW}Downloading AQUATONE.${NC}"
  git clone https://github.com/michenriksen/aquatone.git /opt/RedTeam-Toolkit/Reconnaissance/Active/AQUATONE
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Active/spoofcheck/.git ]; then
     echo -e "${BLUE}Updating spoofcheck.${NC}"
     cd /opt/RedTeam-Toolkit/Reconnaissance/Active/spoofcheck ; git pull
     echo
else
  echo -e "${YELLOW}Downloading spoofcheck.${NC}"
  git clone https://github.com/BishopFox/spoofcheck.git /opt/RedTeam-Toolkit/Reconnaissance/Active/spoofcheck
  echo -e "${YELLOW}Piping Requirements.${NC}"
  cd /opt/RedTeam-Toolkit/Reconnaissance/Active/spoofcheck ; pip install -r requirements.txt
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Active/AWSBucketDump/.git ]; then
     echo -e "${BLUE}Updating dnsrecon.${NC}"
     cd /opt/RedTeam-Toolkit/Reconnaissance/Active/dnsrecon ; git pull
     echo
else
  echo -e "${YELLOW}Downloading dnsrecon.${NC}"
  git clone https://github.com/darkoperator/dnsrecon.git /opt/RedTeam-Toolkit/Reconnaissance/Active/spoofcheck
  echo
fi

# Passive Intelligence Gathering
echo -e "${YELLOW}Checking Passive Intelligence Gathering.${NC}"

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Passive/social_mapper/.git ]; then
     echo -e "${BLUE}Updating Social Mapper.${NC}"
     cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/social_mapper ; git pull
     echo
else
  echo -e "${YELLOW}Downloading Social Mapper.${NC}"
  git clone https://github.com/SpiderLabs/social_mapper.git /opt/RedTeam-Toolkit/Reconnaissance/Passive/social_mapper
  echo
  echo -e "${YELLOW}Grabbing Prerequisites.${NC}"
  sudo apt-get install build-essential cmake -y ; sudo apt-get install libgtk-3-dev -y ; sudo apt-get install libboost-all-dev -y
  echo -e "${YELLOW}Piping Requirements.${NC}"
  cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/social_mapper/setup ; python -m pip install --no-cache-dir -r requirements.txt
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Passive/skiptracer/.git ]; then
     echo -e "${BLUE}Updating Skiptracer.${NC}"
     cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/skiptracer ; git pull
     echo
else
  echo -e "${YELLOW}Downloading Skiptracer.${NC}"
  git clone https://github.com/xillwillx/skiptracer.git /opt/RedTeam-Toolkit/Reconnaissance/Passive/skiptracer
  echo
  echo -e "${YELLOW}Piping Requirements.${NC}"
  cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/skiptracer ; pip install -r requirements.txt
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Passive/ScrapedIn/.git ]; then
     echo -e "${BLUE}Updating ScrapedIn.${NC}"
     cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/ScrapedIn ; git pull
     echo
else
  echo -e "${YELLOW}Downloading ScrapedIn.${NC}"
  git clone https://github.com/dchrastil/ScrapedIn.git /opt/RedTeam-Toolkit/Reconnaissance/Passive/ScrapedIn
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Passive/linkScrape/.git ]; then
     echo -e "${BLUE}Updating linkScrape.${NC}"
     cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/linkScrape ; git pull
     echo
else
  echo -e "${YELLOW}Downloading linkScrape.${NC}"
  git clone https://github.com/NickSanzotta/linkScrape.git /opt/RedTeam-Toolkit/Reconnaissance/Passive/linkScrape
  echo
  echo -e "${YELLOW}Piping Requirements.${NC}"
  cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/linkScrape ; pip install -r requirements.txt
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Passive/FOCA/.git ]; then
     echo -e "${BLUE}Updating FOCA.${NC}"
     cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/FOCA ; git pull
     echo
else
  echo -e "${YELLOW}Downloading FOCA.${NC}"
  git clone https://github.com/ElevenPaths/FOCA.git /opt/RedTeam-Toolkit/Reconnaissance/Passive/linkScrape
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Passive/theHarvester/.git ]; then
     echo -e "${BLUE}Updating theHarvester.${NC}"
     cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/theHarvester ; git pull
     echo
else
  echo -e "${YELLOW}Downloading theHarvester.${NC}"
  git clone https://github.com/laramies/theHarvester.git /opt/RedTeam-Toolkit/Reconnaissance/Passive/theHarvester
  echo
  echo -e "${YELLOW}Piping Requirements.${NC}"
  cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/theHarvester ; pip install -r requirements.txt
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Passive/metagoofil/.git ]; then
     echo -e "${BLUE}Updating Metagoofil.${NC}"
     cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/metagoofil ; git pull
     echo
else
  echo -e "${YELLOW}Downloading Metagoofil.${NC}"
  git clone https://github.com/laramies/metagoofil.git /opt/RedTeam-Toolkit/Reconnaissance/Passive/metagoofil
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Passive/SimplyEmail/.git ]; then
     echo -e "${BLUE}Updating SimplyEmail.${NC}"
     cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/SimplyEmail ; git pull
     echo
else
  echo -e "${YELLOW}Downloading SimplyEmail.${NC}"
  git clone https://github.com/SimplySecurity/SimplyEmail.git /opt/RedTeam-Toolkit/Reconnaissance/Passive/SimplyEmail
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Passive/truffleHog/.git ]; then
     echo -e "${BLUE}Updating truffleHog.${NC}"
     cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/truffleHog ; git pull
     echo
else
  echo -e "${YELLOW}Downloading truffleHog.${NC}"
  git clone https://github.com/dxa4481/truffleHog.git /opt/RedTeam-Toolkit/Reconnaissance/Passive/truffleHog
  echo
  cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/truffleHog ; pip install -r requirements.txt
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Passive/Just-Metadata/.git ]; then
     echo -e "${BLUE}Updating Just-Metadata.${NC}"
     cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/Just-Metadata ; git pull
     echo
else
  echo -e "${YELLOW}Downloading Just-Metadata.${NC}"
  git clone https://github.com/FortyNorthSecurity/Just-Metadata.git /opt/RedTeam-Toolkit/Reconnaissance/Passive/Just-Metadata
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Passive/typofinder/.git ]; then
     echo -e "${BLUE}Updating typofinder.${NC}"
     cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/typofinder ; git pull
     echo
else
  echo -e "${YELLOW}Downloading typofinder.${NC}"
  git clone https://github.com/nccgroup/typofinder.git /opt/RedTeam-Toolkit/Reconnaissance/Passive/typofinder
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Passive/pwnedOrNot/.git ]; then
     echo -e "${BLUE}Updating pwnedOrNot.${NC}"
     cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/pwnedOrNot ; git pull
     echo
else
  echo -e "${YELLOW}Downloading pwnedOrNot.${NC}"
  git clone https://github.com/thewhiteh4t/pwnedOrNot.git /opt/RedTeam-Toolkit/Reconnaissance/Passive/pwnedOrNot
  echo
  echo -e "${YELLOW}Running Installer.${NC}"
  cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/pwnedOrNot/ ; /usr/bin/bash install.sh
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Passive/GitHarvester/.git ]; then
     echo -e "${BLUE}Updating GitHarvester.${NC}"
     cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/GitHarvester ; git pull
     echo
else
  echo -e "${YELLOW}Downloading GitHarvester.${NC}"
  git clone https://github.com/metac0rtex/GitHarvester.git /opt/RedTeam-Toolkit/Reconnaissance/Passive/GitHarvester
  echo
fi

#Reconnaissance Frameworks
echo -e "${YELLOW}Checking Frameworks.${NC}"

if [ -d /opt/RedTeam-Toolkit/Frameworks/spiderfoot/.git ]; then
     echo -e "${BLUE}Updating SpiderFoot.${NC}"
     cd /opt/RedTeam-Toolkit/Frameworks/spiderfoot ; git pull
     echo
else
  echo -e "${YELLOW}Downloading SpiderFoot.${NC}"
  git clone https://github.com/smicallef/spiderfoot.git /opt/RedTeam-Toolkit/Frameworks/spiderfoot
  echo
  echo -e "${YELLOW}Running SpiderFoot's Installer.${NC}"
  cd /opt/RedTeam-Toolkit/Frameworks/spiderfoot ; /usr/bin/python setup.py install
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Frameworks/datasploit/.git ]; then
     echo -e "${BLUE}Updating datasploit.${NC}"
     cd /opt/RedTeam-Toolkit/Frameworks/datasploit ; git pull
     echo
else
  echo -e "${YELLOW}Downloading datasploit.${NC}"
  git clone https://github.com/DataSploit/datasploit.git /opt/RedTeam-Toolkit/Frameworks/datasploit
  echo
  echo -e "${YELLOW}Piping Requirements.${NC}"
  cd /opt/RedTeam-Toolkit/Frameworks/datasploit ; pip install --upgrade --force-reinstall -r requirements.txt
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Frameworks/recon-ng/.git ]; then
     echo -e "${BLUE}Updating Recon-ng.${NC}"
     cd /opt/RedTeam-Toolkit/Frameworks/recon-ng ; git pull
     echo
else
  echo -e "${YELLOW}Downloading Recon-ng.${NC}"
  git clone https://github.com/DataSploit/datasploit.git /opt/RedTeam-Toolkit/Frameworks/recon-ng
  echo
fi

# Weaponization (Exploits)
echo -e "${YELLOW}Checking Exploits.${NC}"

if [ -d /opt/RedTeam-Toolkit/Weaponization/CVE-2017-8570/.git ]; then
     echo -e "${BLUE}Updating CVE-2017-8570.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/CVE-2017-8570 ; git pull
     echo
else
  echo -e "${YELLOW}Downloading CVE-2017-8570.${NC}"
  git clone https://github.com/rxwx/CVE-2017-8570.git /opt/RedTeam-Toolkit/Weaponization/CVE-2017-8570
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/CVE-2017-8759/.git ]; then
     echo -e "${BLUE}Updating Exploit toolkit CVE-2017-8759.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/CVE-2017-8759 ; git pull
     echo
else
  echo -e "${YELLOW}Downloading Exploit toolkit CVE-2017-8759.${NC}"
  git clone https://github.com/bhdresh/CVE-2017-8759.git /opt/RedTeam-Toolkit/Weaponization/CVE-2017-8759
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/CVE-2017-11882/.git ]; then
     echo -e "${BLUE}Updating Exploit toolkit CVE-2017-11882.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/CVE-2017-11882 ; git pull
     echo
else
  echo -e "${YELLOW}Downloading Exploit toolkit CVE-2017-11882.${NC}"
  git clone https://github.com/unamer/CVE-2017-11882.git /opt/RedTeam-Toolkit/Weaponization/CVE-2017-11882
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/CVE-2018-4878/.git ]; then
     echo -e "${BLUE}Updating Adobe Flash Exploit.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/CVE-2018-4878 ; git pull
     echo
else
  echo -e "${YELLOW}Downloading Adobe Flash Exploit.${NC}"
  git clone https://github.com/anbai-inc/CVE-2018-4878.git /opt/RedTeam-Toolkit/Weaponization/CVE-2018-4878
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/CVE-2017-0199/.git ]; then
     echo -e "${BLUE}Updating Exploit toolkit CVE-2017-0199.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/CVE-2017-0199 ; git pull
     echo
else
  echo -e "${YELLOW}Downloading Exploit toolkit CVE-2017-0199.${NC}"
  git clone https://github.com/bhdresh/CVE-2017-0199.git /opt/RedTeam-Toolkit/Weaponization/CVE-2017-0199
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/demiguise/.git ]; then
     echo -e "${BLUE}Updating demiguise.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/demiguise ; git pull
     echo
else
  echo -e "${YELLOW}Downloading demiguise.${NC}"
  git clone https://github.com/nccgroup/demiguise.git /opt/RedTeam-Toolkit/Weaponization/demiguise
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/Office-DDE-Payloads/.git ]; then
     echo -e "${BLUE}Updating Office-DDE-Payloads.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/Office-DDE-Payloads ; git pull
     echo
else
  echo -e "${YELLOW}Downloading Office-DDE-Payloads.${NC}"
  git clone https://github.com/0xdeadbeefJERKY/Office-DDE-Payloads.git /opt/RedTeam-Toolkit/Weaponization/Office-DDE-Payloads
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/CACTUSTORCH/.git ]; then
     echo -e "${BLUE}Updating CACTUSTORCH.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/CACTUSTORCH ; git pull
     echo
else
  echo -e "${YELLOW}Downloading CACTUSTORCH.${NC}"
  git clone https://github.com/mdsecactivebreach/CACTUSTORCH.git /opt/RedTeam-Toolkit/Weaponization/CACTUSTORCH
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/SharpShooter/.git ]; then
     echo -e "${BLUE}Updating SharpShooter.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/SharpShooter ; git pull
     echo
else
  echo -e "${YELLOW}Downloading SharpShooter.${NC}"
  git clone https://github.com/mdsecactivebreach/SharpShooter.git /opt/RedTeam-Toolkit/Weaponization/SharpShooter
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/DKMC/.git ]; then
     echo -e "${BLUE}Updating Don't kill my cat.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/DKMC ; git pull
     echo
else
  echo -e "${YELLOW}Downloading Don't kill my cat.${NC}"
  git clone https://github.com/Mr-Un1k0d3r/DKMC.git /opt/RedTeam-Toolkit/Weaponization/DKMC
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/MaliciousMacroGenerator/.git ]; then
     echo -e "${BLUE}Updating Malicious Macro Generator Utility.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/MaliciousMacroGenerator ; git pull
     echo
else
  echo -e "${YELLOW}Downloading Malicious Macro Generator Utility.${NC}"
  git clone https://github.com/Mr-Un1k0d3r/MaliciousMacroGenerator.git /opt/RedTeam-Toolkit/Weaponization/MaliciousMacroGenerator
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/SCT-obfuscator/.git ]; then
     echo -e "${BLUE}Updating SCT Obfuscator.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/SCT-obfuscator ; git pull
     echo
else
  echo -e "${YELLOW}Downloading SCT Obfuscator.${NC}"
  git clone https://github.com/Mr-Un1k0d3r/SCT-obfuscator.git /opt/RedTeam-Toolkit/Weaponization/SCT-obfuscator
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/Invoke-Obfuscation/.git ]; then
     echo -e "${BLUE}Updating Invoke-Obfuscation.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/Invoke-Obfuscation; git pull
     echo
else
  echo -e "${YELLOW}Downloading Invoke-Obfuscation.${NC}"
  git clone https://github.com/danielbohannon/Invoke-Obfuscation.git /opt/RedTeam-Toolkit/Weaponization/Invoke-Obfuscation
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/Invoke-DOSfuscation/.git ]; then
     echo -e "${BLUE}Updating Invoke-DOSfuscation.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/Invoke-Obfuscation; git pull
     echo
else
  echo -e "${YELLOW}Downloading Invoke-DOSfuscation.${NC}"
  git clone https://github.com/danielbohannon/Invoke-DOSfuscation.git /opt/RedTeam-Toolkit/Weaponization/Invoke-DOSfuscation
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/morphHTA/.git ]; then
     echo -e "${BLUE}Updating morphHTA.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/morphHTA; git pull
     echo
else
  echo -e "${YELLOW}Downloading morphHTA.${NC}"
  git clone https://github.com/vysec/morphHTA.git /opt/RedTeam-Toolkit/Weaponization/morphHTA
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/unicorn/.git ]; then
     echo -e "${BLUE}Updating Unicorn.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/unicorn; git pull
     echo
else
  echo -e "${YELLOW}Downloading Unicorn.${NC}"
  git clone https://github.com/trustedsec/unicorn.git /opt/RedTeam-Toolkit/Weaponization/unicorn
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/EmbedInHTML/.git ]; then
     echo -e "${BLUE}Updating EmbedInHTML.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/EmbedInHTML; git pull
     echo
else
  echo -e "${YELLOW}Downloading EmbedInHTML.${NC}"
  git clone https://github.com/Arno0x/EmbedInHTML.git /opt/RedTeam-Toolkit/Weaponization/EmbedInHTML
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/SigThief/.git ]; then
     echo -e "${BLUE}Updating SigThief.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/SigThief; git pull
     echo
else
  echo -e "${YELLOW}Downloading SigThief.${NC}"
  git clone https://github.com/secretsquirrel/SigThief.git /opt/RedTeam-Toolkit/Weaponization/SigThief
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/Veil/.git ]; then
     echo -e "${BLUE}Updating Veil.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/Veil; git pull
     echo
else
  echo -e "${YELLOW}Downloading Veil.${NC}"
  git clone https://github.com/Veil-Framework/Veil.git /opt/RedTeam-Toolkit/Weaponization/Veil
  echo -e "${YELLOW}Installing Veil.${NC}"
  /usr/bin/bash /opt/RedTeam-Toolkit/Weaponization/Veil/config/setup.sh --force --silent
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/CheckPlease/.git ]; then
     echo -e "${BLUE}Updating CheckPlease.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/CheckPlease; git pull
     echo
else
  echo -e "${YELLOW}Downloading CheckPlease.${NC}"
  git clone https://github.com/Arvanaghi/CheckPlease.git /opt/RedTeam-Toolkit/Weaponization/CheckPlease
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/Invoke-PSImage/.git ]; then
     echo -e "${BLUE}Updating Invoke-PSImage.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/Invoke-PSImage; git pull
     echo
else
  echo -e "${YELLOW}Downloading Invoke-PSImage.${NC}"
  git clone https://github.com/peewpw/Invoke-PSImage.git /opt/RedTeam-Toolkit/Weaponization/Invoke-PSImage
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/LuckyStrike/.git ]; then
     echo -e "${BLUE}Updating LuckyStrike.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/LuckyStrike; git pull
     echo
else
  echo -e "${YELLOW}Downloading LuckyStrike.${NC}"
  git clone https://github.com/curi0usJack/luckystrike.git /opt/RedTeam-Toolkit/Weaponization/LuckyStrike
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/ClickOnceGenerator/.git ]; then
     echo -e "${BLUE}Updating ClickOnceGenerator.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/ClickOnceGenerator; git pull
     echo
else
  echo -e "${YELLOW}Downloading ClickOnceGenerator.${NC}"
  git clone https://github.com/Mr-Un1k0d3r/ClickOnceGenerator.git /opt/RedTeam-Toolkit/Weaponization/ClickOnceGenerator
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/macro_pack/.git ]; then
     echo -e "${BLUE}Updating macro_pack.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/macro_pack; git pull
     echo
else
  echo -e "${YELLOW}Downloading macro_pack.${NC}"
  git clone https://github.com/Mr-Un1k0d3r/ClickOnceGenerator.git /opt/RedTeam-Toolkit/Weaponization/macro_pack
  echo
  echo -e "${BLUE}Piping Requirements.${NC}"
  cd /opt/RedTeam-Toolkit/Weaponization/macro_pack ; pip install -r requirements.txt
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/StarFighters/.git ]; then
     echo -e "${BLUE}Updating StarFighters.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/StarFighters; git pull
     echo
else
  echo -e "${YELLOW}Downloading StarFighters.${NC}"
  git clone https://github.com/Cn33liz/StarFighters.git /opt/RedTeam-Toolkit/Weaponization/StarFighters
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/StarFighters/.git ]; then
     echo -e "${BLUE}Updating StarFighters.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/StarFighters; git pull
     echo
else
  echo -e "${YELLOW}Downloading StarFighters.${NC}"
  git clone https://github.com/Cn33liz/StarFighters.git /opt/RedTeam-Toolkit/Weaponization/StarFighters
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/nps_payload/.git ]; then
     echo -e "${BLUE}Updating nps_payload.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/nps_payload; git pull
     echo
else
  echo -e "${YELLOW}Downloading nps_payload.${NC}"
  git clone https://github.com/trustedsec/nps_payload.git /opt/RedTeam-Toolkit/Weaponization/nps_payload
  echo
  echo -e "${BLUE}Piping Requirements.${NC}"
  cd /opt/RedTeam-Toolkit/Weaponization/nps_payload ; pip install -r requirements.txt
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/SocialEngineeringPayloads/.git ]; then
     echo -e "${BLUE}Updating SocialEngineeringPayloads.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/SocialEngineeringPayloads ; git pull
     echo
else
  echo -e "${YELLOW}Downloading SocialEngineeringPayloads.${NC}"
  git clone https://github.com/bhdresh/SocialEngineeringPayloads.git /opt/RedTeam-Toolkit/Weaponization/SocialEngineeringPayloads
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/social-engineer-toolkit/.git ]; then
     echo -e "${BLUE}Updating The Social-Engineer Toolkit.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/social-engineer-toolkit ; git pull
     echo
else
  echo -e "${BLUE}Grabbing Dependencies.${NC}"
  apt-get -y install git apache2 python-requests libapache2-mod-php \
  python-pymssql build-essential python-pexpect python-pefile python-crypto python-openssl
  echo -e "${YELLOW}Downloading The Social-Engineer Toolkit.${NC}"
  git clone https://github.com/trustedsec/social-engineer-toolkit.git /opt/RedTeam-Toolkit/Weaponization/social-engineer-toolkit
  echo
  echo -e "${YELLOW}Running Installer.${NC}"
  cd /opt/RedTeam-Toolkit/Weaponization/social-engineer-toolkit ; /usr/bin/python setup.py install
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/phishery/.git ]; then
     echo -e "${BLUE}Updating phishery.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/phishery ; git pull
     echo
else
  echo -e "${YELLOW}Downloading phishery.${NC}"
  git clone https://github.com/ryhanson/phishery.git /opt/RedTeam-Toolkit/Weaponization/phishery
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/PowerShdll/.git ]; then
     echo -e "${BLUE}Updating PowerShdll.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/PowerShdll ; git pull
     echo
else
  echo -e "${YELLOW}Downloading PowerShdll.${NC}"
  git clone https://github.com/p3nt4/PowerShdll.git /opt/RedTeam-Toolkit/Weaponization/PowerShdll
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/UltimateAppLockerByPassList/.git ]; then
     echo -e "${BLUE}Updating Ultimate AppLocker ByPass List.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/UltimateAppLockerByPassList ; git pull
     echo
else
  echo -e "${YELLOW}Downloading Ultimate AppLocker ByPass List.${NC}"
  git clone https://github.com/api0cradle/UltimateAppLockerByPassList.git /opt/RedTeam-Toolkit/Weaponization/UltimateAppLockerByPassList
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/Ruler/.git ]; then
     echo -e "${BLUE}Updating Ruler.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/Ruler ; git pull
     echo
else
  echo -e "${YELLOW}Downloading Ruler.${NC}"
  git clone https://github.com/sensepost/ruler.git /opt/RedTeam-Toolkit/Weaponization/Ruler
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/Ruler/.git ]; then
     echo -e "${BLUE}Updating Ruler.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/Ruler ; git pull
     echo
else
  echo -e "${YELLOW}Downloading Ruler.${NC}"
  git clone https://github.com/sensepost/ruler.git /opt/RedTeam-Toolkit/Weaponization/Ruler
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/Generate-Macro/.git ]; then
     echo -e "${BLUE}Updating Generate-Macro.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/Generate-Macro ; git pull
     echo
else
  echo -e "${YELLOW}Downloading Generate-Macro.${NC}"
  git clone https://github.com/enigma0x3/Generate-Macro.git /opt/RedTeam-Toolkit/Weaponization/Generate-Macro
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/MaliciousMacroMSBuild/.git ]; then
     echo -e "${BLUE}Updating Malicious Macro MSBuild Generator.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/MaliciousMacroMSBuild ; git pull
     echo
else
  echo -e "${YELLOW}Downloading Malicious Macro MSBuild Generator.${NC}"
  git clone https://github.com/infosecn1nja/MaliciousMacroMSBuild.git /opt/RedTeam-Toolkit/Weaponization/MaliciousMacroMSBuild
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/metatwin/.git ]; then
     echo -e "${BLUE}Updating Meta Twin.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/metatwin ; git pull
     echo
else
  echo -e "${YELLOW}Downloading Meta Twin.${NC}"
  git clone https://github.com/threatexpress/metatwin.git /opt/RedTeam-Toolkit/Weaponization/metatwin
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/WePWNise/.git ]; then
     echo -e "${BLUE}Updating wePWNise.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/WePWNise ; git pull
     echo
else
  echo -e "${YELLOW}Downloading wePWNise.${NC}"
  git clone https://github.com/mwrlabs/wePWNise.git /opt/RedTeam-Toolkit/Weaponization/WePWNise
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/DotNetToJScript/.git ]; then
     echo -e "${BLUE}Updating DotNetToJScript.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/DotNetToJScript ; git pull
     echo
else
  echo -e "${YELLOW}Downloading DotNetToJScript.${NC}"
  git clone https://github.com/tyranid/DotNetToJScript.git /opt/RedTeam-Toolkit/Weaponization/DotNetToJScript
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/PSAmsi/.git ]; then
     echo -e "${BLUE}Updating PSAmsi.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/PSAmsi; git pull
     echo
else
  echo -e "${YELLOW}Downloading PSAmsi.${NC}"
  git clone https://github.com/cobbr/PSAmsi.git /opt/RedTeam-Toolkit/Weaponization/PSAmsi
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/ReflectiveDLLInjection/.git ]; then
     echo -e "${BLUE}Updating Reflective DLL injection.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/ReflectiveDLLInjection ; git pull
     echo
else
  echo -e "${YELLOW}Downloading Reflective DLL injection.${NC}"
  git clone https://github.com/stephenfewer/ReflectiveDLLInjection.git /opt/RedTeam-Toolkit/Weaponization/ReflectiveDLLInjection
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/ps1encode/.git ]; then
     echo -e "${BLUE}Updating ps1encode.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/ps1encode ; git pull
     echo
else
  echo -e "${YELLOW}Downloading ps1encode.${NC}"
  git clone https://github.com/CroweCybersecurity/ps1encode.git /opt/RedTeam-Toolkit/Weaponization/ps1encode
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/Worse-PDF/.git ]; then
     echo -e "${BLUE}Updating Worse PDF.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/Worse-PDF ; git pull
     echo
else
  echo -e "${YELLOW}Downloading Worse PDF.${NC}"
  git clone https://github.com/3gstudent/Worse-PDF.git /opt/RedTeam-Toolkit/Weaponization/Worse-PDF
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/SpookFlareF/.git ]; then
     echo -e "${BLUE}Updating SpookFlare.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/SpookFlare ; git pull
     echo
else
  echo -e "${YELLOW}Downloading SpookFlare.${NC}"
  git clone https://github.com/hlldz/SpookFlare.git /opt/RedTeam-Toolkit/Weaponization/SpookFlare
  echo
  echo -e "${BLUE}Piping Requirements.${NC}"
  cd /opt/RedTeam-Toolkit/Weaponization/SpookFlare ; pip install -r requirements.txt
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/GreatSCT/.git ]; then
     echo -e "${BLUE}Updating GreatSCT.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/GreatSCT ; git pull
     echo
else
  echo -e "${YELLOW}Downloading GreatSCT.${NC}"
  git clone https://github.com/GreatSCT/GreatSCT.git /opt/RedTeam-Toolkit/Weaponization/GreatSCT
  echo
  echo -e "${YELLOW}Running Setup.${NC}"
  cd /opt/RedTeam-Toolkit/Weaponization/GreatSCT/setup ; /usr/bin/bash setup.sh -c
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/nps/.git ]; then
     echo -e "${BLUE}Updating nps.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/nps ; git pull
     echo
else
  echo -e "${YELLOW}Downloading nps.${NC}"
  git clone https://github.com/Ben0xA/nps.git /opt/RedTeam-Toolkit/Weaponization/nps
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/Meterpreter_Paranoid_Mode-SSL/.git ]; then
     echo -e "${BLUE}Updating Meterpreter_Paranoid_Mode-SSL.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/Meterpreter_Paranoid_Mode-SSL; git pull
     echo
else
  echo -e "${YELLOW}Downloading Meterpreter_Paranoid_Mode-SSL.${NC}"
  git clone https://github.com/r00t-3xp10it/Meterpreter_Paranoid_Mode-SSL.git /opt/RedTeam-Toolkit/Weaponization/Meterpreter_Paranoid_Mode-SSL
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/MacroShop/.git ]; then
     echo -e "${BLUE}Updating MacroShop.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/MacroShop; git pull
     echo
else
  echo -e "${YELLOW}Downloading MacroShop.${NC}"
  git clone https://github.com/khr0x40sh/MacroShop.git /opt/RedTeam-Toolkit/Weaponization/MacroShop
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/UnmanagedPowerShell/.git ]; then
     echo -e "${BLUE}Updating UnmanagedPowerShell.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/UnmanagedPowerShell; git pull
     echo
else
  echo -e "${YELLOW}Downloading UnmanagedPowerShell.${NC}"
  git clone https://github.com/leechristensen/UnmanagedPowerShell /opt/RedTeam-Toolkit/Weaponization/UnmanagedPowerShell
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/evil-ssdp/.git ]; then
     echo -e "${BLUE}Updating evil-ssdp.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/evil-ssdp; git pull
     echo
else
  echo -e "${YELLOW}Downloading evil-ssdp.${NC}"
  git clone https://gitlab.com/initstring/evil-ssdp.git /opt/RedTeam-Toolkit/Weaponization/evil-ssdp
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/Ebowla/.git ]; then
     echo -e "${BLUE}Updating Ebowla.${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/Ebowla; git pull
     echo
else
  echo -e "${YELLOW}Downloading Ebowla.${NC}"
  git clone https://github.com/Genetic-Malware/Ebowla.git /opt/RedTeam-Toolkit/Weaponization/Ebowla
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/make-pdf-embedded/make-pdf-embedded.py ]; then
     echo -e "${BLUE}Skipping make-pdf-embedded, file is here.${NC}"
else
  echo -e "${YELLOW}Downloading make-pdf-embedded.${NC}"
  wget https://raw.githubusercontent.com/DidierStevens/DidierStevensSuite/master/make-pdf-embedded.py -O/opt/RedTeam-Toolkit/Weaponization/make-pdf-embedded/make-pdf-embedded.py
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/avet/.git ]; then
     echo -e "${BLUE}Updating avet (AntiVirusEvasionTool).${NC}"
     cd /opt/RedTeam-Toolkit/Weaponization/avet; git pull
     echo
else
  echo -e "${YELLOW}Downloading avet (AntiVirusEvasionTool).${NC}"
  git clone https://github.com/govolution/avet.git /opt/RedTeam-Toolkit/Weaponization/avet
  echo
  echo -e "${YELLOW}Beginning avet's Setup.${NC}"
  /usr/bin/bash /opt/RedTeam-Toolkit/Weaponization/avet/setup.sh
  echo
fi

# Delivery
if [ -d /opt/RedTeam-Toolkit/Delivery/Phishing/CredSniper/.git ]; then
     echo -e "${BLUE}Updating CredSniper.${NC}"
     cd /opt/RedTeam-Toolkit/Delivery/Phishing/CredSniper; git pull
     echo
else
  echo -e "${YELLOW}Downloading CredSniper.${NC}"
  git clone https://github.com/ustayready/CredSniper.git /opt/RedTeam-Toolkit/Delivery/Phishing/CredSniper
  echo
  echo -e "${BLUE}Please check the directory and run the install.sh.${NC}"
fi

##Command and Control##
#Remote Access Tools#
#File Path - "Command and Control"/"Remote Access"

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/Empire/.git ]; then
     echo -e "${BLUE}Updating Empire.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/Empire/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Empire.${NC}"
  git clone https://github.com/EmpireProject/Empire.git /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/Empire/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/SILENTTRINITY/.git ]; then
     echo -e "${BLUE}Updating SILENTTRINITY.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/SILENTTRINITY/; git pull
     echo
else
  echo -e "${YELLOW}Downloading SILENTTRINITY.${NC}"
  git clone https://github.com/byt3bl33d3r/SILENTTRINITY.git /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/SILENTTRINITY/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/Pupy/.git ]; then
     echo -e "${BLUE}Updating Pupy.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/Pupy/; git pull
     echo
else
  echo -e "${BLUE}Grabbing Dependencies First.${NC}"
  apt-get install git libssl1.0-dev libffi-dev python-dev python-pip tcpdump python-virtualenv -y
  echo
  echo -e "${YELLOW}Downloading pupy.${NC}"
  git clone https://github.com/n1nj4sec/pupy.git /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/Pupy/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/Koadic/.git ]; then
     echo -e "${BLUE}Updating Koadic.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/Koadic/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Koadic.${NC}"
  git clone https://github.com/zerosum0x0/koadic.git /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/koadic/
  echo
  echo -e "${BLUE}Piping Requirements.${NC}"
  pip install -r /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/koadic/requirements.txt
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/PoshC2_Python/.git ]; then
     echo -e "${BLUE}Updating PoshC2_Python.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/PoshC2_Python/; git pull
     echo
else
  echo -e "${YELLOW}Downloading PoshC2_Python.${NC}"
  git clone https://github.com/nettitude/PoshC2_Python.git /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/PoshC2_Python/
  echo
  echo -e "${YELLOW}Installing PoshC2_Python.${NC}"
  /usr/bin/bash /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/PoshC2_Python/Install.sh
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/gcat/.git ]; then
     echo -e "${BLUE}Updating Gcat.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/gcat/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Gcat.${NC}"
  git clone https://github.com/byt3bl33d3r/gcat.git /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/gcat/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/merlin/.git ]; then
     echo -e "${BLUE}Updating Merlin.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/merlin/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Merlin.${NC}"
  git clone https://github.com/Ne0nd0g/merlin.git /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/merlin/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/QuasarRAT/.git ]; then
     echo -e "${BLUE}Updating Quasar.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/QuasarRAT/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Quasar.${NC}"
  git clone https://github.com/quasar/QuasarRAT.git /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/QuasarRAT/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/QuasarRAT/.git ]; then
     echo -e "${BLUE}Updating Quasar.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/QuasarRAT/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Quasar.${NC}"
  git clone https://github.com/quasar/QuasarRAT.git /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/QuasarRAT/
  echo
fi

#Staging
if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/RAI/.git ]; then
     echo -e "${BLUE}Updating Rapid Attack Infrastructure (RAI).${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/RAI/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Rapid Attack Infrastructure (RAI).${NC}"
  git clone https://github.com/obscuritylabs/RAI.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/RAI/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/Red-Baron/.git ]; then
     echo -e "${BLUE}Updating Red Baron.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/Red-Baron/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Red Baron.${NC}"
  git clone https://github.com/byt3bl33d3r/Red-Baron.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/Red-Baron/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/EvilURL/.git ]; then
     echo -e "${BLUE}Updating EvilURL.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/EvilURL/; git pull
     echo
else
  echo -e "${YELLOW}Downloading EvilURL.${NC}"
  git clone https://github.com/UndeadSec/EvilURL /opt/RedTeam-Toolkit/"Command and Control"/Staging/EvilURL/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/domainhunter/.git ]; then
     echo -e "${BLUE}Updating Domain Hunter.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/domainhunter/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Domain Hunter.${NC}"
  git clone https://github.com/threatexpress/domainhunter.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/domainhunter/
  echo
  echo -e "${BLUE}Piping Requirements.${NC}"
  pip install -r /opt/RedTeam-Toolkit/"Command and Control"/Staging/domainhunter/requirements.txt
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/PowerDNS/.git ]; then
     echo -e "${BLUE}Updating PowerDNS.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/PowerDNS/; git pull
     echo
else
  echo -e "${YELLOW}Downloading PowerDNS.${NC}"
  git clone https://github.com/mdsecactivebreach/PowerDNS.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/PowerDNS/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/Chameleon/.git ]; then
     echo -e "${BLUE}Updating Chameleon.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/Chameleon/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Chameleon.${NC}"
  git clone https://github.com/mdsecactivebreach/Chameleon.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/Chameleon/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/Chameleon/.git ]; then
     echo -e "${BLUE}Updating Chameleon.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/Chameleon/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Chameleon.${NC}"
  git clone https://github.com/mdsecactivebreach/Chameleon.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/Chameleon/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/CatMyPhish/.git ]; then
     echo -e "${BLUE}Updating CatMyPhish.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/CatMyPhish/; git pull
     echo
else
  echo -e "${YELLOW}Downloading CatMyPhish.${NC}"
  git clone https://github.com/Mr-Un1k0d3r/CatMyPhish.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/CatMyPhish/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/CatMyPhish/.git ]; then
     echo -e "${BLUE}Updating CatMyPhish.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/CatMyPhish/; git pull
     echo
else
  echo -e "${YELLOW}Downloading CatMyPhish.${NC}"
  git clone https://github.com/Mr-Un1k0d3r/CatMyPhish.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/CatMyPhish/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/Malleable-C2-Profiles/.git ]; then
     echo -e "${BLUE}Updating Malleable C2.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/Malleable-C2-Profiles/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Malleable C2.${NC}"
  git clone https://github.com/rsmudge/Malleable-C2-Profiles.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/Malleable-C2-Profiles/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/Malleable-C2-Profiles/.git ]; then
     echo -e "${BLUE}Updating Malleable-C2-Randomizer.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/Malleable-C2-Randomizer/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Malleable-C2-Randomizer.${NC}"
  git clone https://github.com/bluscreenofjeff/Malleable-C2-Randomizer.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/Malleable-C2-Randomizer/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/FindFrontableDomains/.git ]; then
     echo -e "${BLUE}Updating FindFrontableDomains.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/FindFrontableDomains/; git pull
     echo
else
  echo -e "${YELLOW}Downloading FindFrontableDomains.${NC}"
  git clone https://github.com/rvrsh3ll/FindFrontableDomains.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/FindFrontableDomains/
  echo
  /usr/bin/bash /opt/RedTeam-Toolkit/"Command and Control"/Staging/FindFrontableDomains/setup.sh
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/Postfix-Server-Setup/.git ]; then
     echo -e "${BLUE}Updating Postfix-Server-Setup.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/Postfix-Server-Setup/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Postfix-Server-Setup.${NC}"
  git clone https://github.com/n0pe-sled/Postfix-Server-Setup.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/Postfix-Server-Setup/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/DomainFrontingLists/.git ]; then
     echo -e "${BLUE}Updating DomainFrontingLists.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/DomainFrontingLists/; git pull
     echo
else
  echo -e "${YELLOW}Downloading DomainFrontingLists.${NC}"
  git clone https://github.com/vysecurity/DomainFrontingLists.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/DomainFrontingLists/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/Apache2-Mod-Rewrite-Setup/.git ]; then
     echo -e "${BLUE}Updating Apache2-Mod-Rewrite-Setup.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/Apache2-Mod-Rewrite-Setup/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Apache2-Mod-Rewrite-Setup.${NC}"
  git clone https://github.com/n0pe-sled/Apache2-Mod-Rewrite-Setup.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/Apache2-Mod-Rewrite-Setup/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/external_c2 framework/.git ]; then
     echo -e "${BLUE}Updating external_c2_framework.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/external_c2_framework/; git pull
     echo
else
  echo -e "${YELLOW}Downloading external_c2_framework.${NC}"
  git clone https://github.com/Und3rf10w/external_c2_framework.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/external_c2_framework/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/external_c2 framework/.git ]; then
     echo -e "${BLUE}Updating ExternalC2.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/ExternalC2/; git pull
     echo
else
  echo -e "${YELLOW}Downloading ExternalC2.${NC}"
  git clone https://github.com/ryhanson/ExternalC2.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/ExternalC2/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/cs2modrewrite/.git ]; then
     echo -e "${BLUE}Updating cs2modrewrite.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/cs2modrewrite/; git pull
     echo
else
  echo -e "${YELLOW}Downloading cs2modrewrite.${NC}"
  git clone https://github.com/threatexpress/cs2modrewrite.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/cs2modrewrite/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/cs2modrewrite/.git ]; then
     echo -e "${BLUE}Updating cs2modrewrite.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/cs2modrewrite/; git pull
     echo
else
  echo -e "${YELLOW}Downloading cs2modrewrite.${NC}"
  git clone https://github.com/threatexpress/cs2modrewrite.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/cs2modrewrite/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/e2modrewrite/.git ]; then
     echo -e "${BLUE}Updating cs2modrewrite.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/e2modrewrite/; git pull
     echo
else
  echo -e "${YELLOW}Downloading cs2modrewrite.${NC}"
  git clone https://github.com/infosecn1nja/e2modrewrite.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/e2modrewrite/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/redi/.git ]; then
     echo -e "${BLUE}Updating redi.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/redi/; git pull
     echo
else
  echo -e "${YELLOW}Downloading redi.${NC}"
  git clone https://github.com/taherio/redi.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/redi/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/Google-Domain-fronting/.git ]; then
     echo -e "${BLUE}Updating Google-Domain-fronting.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/Google-Domain-fronting/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Google-Domain-fronting.${NC}"
  git clone https://github.com/redteam-cyberark/Google-Domain-fronting.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/Google-Domain-fronting/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/Google-Domain-fronting/.git ]; then
     echo -e "${BLUE}Updating Google-Domain-fronting.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/Google-Domain-fronting/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Google-Domain-fronting.${NC}"
  git clone https://github.com/redteam-cyberark/Google-Domain-fronting.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/Google-Domain-fronting/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/DomainFrontDiscover/.git ]; then
     echo -e "${BLUE}Updating DomainFrontDiscover.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/DomainFrontDiscover/; git pull
     echo
else
  echo -e "${YELLOW}Downloading DomainFrontDiscover.${NC}"
  git clone https://github.com/redteam-cyberark/DomainFrontDiscover.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/DomainFrontDiscover/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/RedTeam-Automation/.git ]; then
     echo -e "${BLUE}Updating Automated Empire Infrastructure.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/RedTeam-Automation/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Automated Empire Infrastructure.${NC}"
  git clone https://github.com/bneg/RedTeam-Automation.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/RedTeam-Automation/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/meek/.git ]; then
     echo -e "${BLUE}Updating meek.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/meek/; git pull
     echo
else
  echo -e "${YELLOW}Downloading meek.${NC}"
  git clone https://github.com/arlolra/meek.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/meek/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/meek/.git ]; then
     echo -e "${BLUE}Updating meek.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/meek/; git pull
     echo
else
  echo -e "${YELLOW}Downloading meek.${NC}"
  git clone https://github.com/arlolra/meek.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/meek/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/CobaltStrike-ToolKit/.git ]; then
     echo -e "${BLUE}Updating CobaltStrike-ToolKit.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/CobaltStrike-ToolKit/; git pull
     echo
else
  echo -e "${YELLOW}Downloading CobaltStrike-ToolKit.${NC}"
  git clone https://github.com/killswitch-GUI/CobaltStrike-ToolKit.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/CobaltStrike-ToolKit/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/mkhtaccess_red/.git ]; then
     echo -e "${BLUE}Updating mkhtaccess_red.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/mkhtaccess_red/; git pull
     echo
else
  echo -e "${YELLOW}Downloading mkhtaccess_red.${NC}"
  git clone https://github.com/violentlydave/mkhtaccess_red.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/mkhtaccess_red/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/RedFile/.git ]; then
     echo -e "${BLUE}Updating RedFile.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/RedFile/; git pull
     echo
else
  echo -e "${YELLOW}Downloading RedFile.${NC}"
  git clone https://github.com/outflanknl/RedFile.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/RedFile/
  echo
  echo -e "${BLUE}Piping Requirements.${NC}"
  pip install -r /opt/RedTeam-Toolkit/"Command and Control"/Staging/RedFile/requirements.txt
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/keyserver/.git ]; then
     echo -e "${BLUE}Updating keyserver.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/keyserver/; git pull
     echo
else
  echo -e "${YELLOW}Downloading keyserver.${NC}"
  git clone https://github.com/leoloobeek/keyserver.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/keyserver/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/ExternalC2/.git ]; then
     echo -e "${BLUE}Updating ExternalC2.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/ExternalC2/; git pull
     echo
else
  echo -e "${YELLOW}Downloading ExternalC2.${NC}"
  git clone https://github.com/ryhanson/ExternalC2.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/ExternalC2/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/DoHC2/.git ]; then
     echo -e "${BLUE}Updating DoHC2.${NC}"
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/DoHC2/; git pull
     echo
else
  echo -e "${YELLOW}Downloading DoHC2.${NC}"
  git clone https://github.com/SpiderLabs/DoHC2.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/DoHC2/
  echo
fi

#Lateral Movement Scripts

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/CrackMapExec/.git ]; then
     echo -e "${BLUE}Updating CrackMapExec.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/CrackMapExec/; git pull
     echo
else
  echo -e "${YELLOW}Downloading CrackMapExec.${NC}"
  git clone https://github.com/byt3bl33d3r/CrackMapExec.git /opt/RedTeam-Toolkit/"Lateral Movement"/CrackMapExec/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/PowerLessShell/.git ]; then
     echo -e "${BLUE}Updating PowerLessShell.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/PowerLessShell/; git pull
     echo
else
  echo -e "${YELLOW}Downloading PowerLessShell.${NC}"
  git clone https://github.com/Mr-Un1k0d3r/PowerLessShell.git /opt/RedTeam-Toolkit/"Lateral Movement"/PowerLessShell/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/GoFetch/.git ]; then
     echo -e "${BLUE}Updating GoFetch.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/GoFetch/; git pull
     echo
else
  echo -e "${YELLOW}Downloading GoFetch.${NC}"
  git clone https://github.com/GoFetchAD/GoFetch.git /opt/RedTeam-Toolkit/"Lateral Movement"/GoFetch/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/ANGRYPUPPY/.git ]; then
     echo -e "${BLUE}Updating ANGRYPUPPY.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/ANGRYPUPPY/; git pull
     echo
else
  echo -e "${YELLOW}Downloading ANGRYPUPPY.${NC}"
  git clone https://github.com/vysecurity/ANGRYPUPPY.git /opt/RedTeam-Toolkit/"Lateral Movement"/ANGRYPUPPY/
  echo
  echo -e "${YELLOW}Installing ANGRYPUPPY.${NC}"
  /usr/bin/bash /opt/RedTeam-Toolkit/"Lateral Movement"/ANGRYPUPPY/Install.sh
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/DeathStar/.git ]; then
     echo -e "${BLUE}Updating DeathStar.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/DeathStar/; git pull
     echo
else
  echo -e "${YELLOW}Downloading DeathStar.${NC}"
  git clone https://github.com/byt3bl33d3r/DeathStar.git /opt/RedTeam-Toolkit/"Lateral Movement"/DeathStar/
  echo
  echo -e "${BLUE}Piping Requirements.${NC}"
  pip install -r /opt/RedTeam-Toolkit/"Lateral Movement"/DeathStar/requirements.txt
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/SharpHound/.git ]; then
     echo -e "${BLUE}Updating SharpHound.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/SharpHound/; git pull
     echo
else
  echo -e "${YELLOW}Downloading SharpHound.${NC}"
  git clone https://github.com/BloodHoundAD/SharpHound.git /opt/RedTeam-Toolkit/"Lateral Movement"/SharpHound/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/SharpHound/.git ]; then
     echo -e "${BLUE}Updating SharpHound.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/SharpHound/; git pull
     echo
else
  echo -e "${YELLOW}Downloading SharpHound.${NC}"
  git clone https://github.com/BloodHoundAD/SharpHound.git /opt/RedTeam-Toolkit/"Lateral Movement"/SharpHound/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/BloodHound.py/.git ]; then
     echo -e "${BLUE}Updating BloodHound.py.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/BloodHound.py/; git pull
     echo
else
  echo -e "${YELLOW}Downloading BloodHound.py.${NC}"
  git clone https://github.com/fox-it/BloodHound.py.git /opt/RedTeam-Toolkit/"Lateral Movement"/BloodHound.py/
  echo
  echo -e "${BLUE}Installing Requirements.${NC}"
  /usr/bin/python /opt/RedTeam-Toolkit/"Lateral Movement"/BloodHound.py/setup.py install
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/Responder/.git ]; then
     echo -e "${BLUE}Updating Responder.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/Responder/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Responder.${NC}"
  git clone https://github.com/SpiderLabs/Responder.git /opt/RedTeam-Toolkit/"Lateral Movement"/Responder/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/SessionGopher/.git ]; then
     echo -e "${BLUE}Updating SessionGopher.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/SessionGopher/; git pull
     echo
else
  echo -e "${YELLOW}Downloading SessionGopher.${NC}"
  git clone https://github.com/Arvanaghi/SessionGopher.git /opt/RedTeam-Toolkit/"Lateral Movement"/SessionGopher/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/PowerSploit/.git ]; then
     echo -e "${BLUE}Updating PowerSploit.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/PowerSploit/; git pull
     echo
else
  echo -e "${YELLOW}Downloading PowerSploit.${NC}"
  git clone https://github.com/PowerShellMafia/PowerSploit.git /opt/RedTeam-Toolkit/"Lateral Movement"/PowerSploit/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/nishang/.git ]; then
     echo -e "${BLUE}Updating nishang.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/nishang/; git pull
     echo
else
  echo -e "${YELLOW}Downloading nishang.${NC}"
  git clone https://github.com/samratashok/nishang.git /opt/RedTeam-Toolkit/"Lateral Movement"/nishang/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/Inveigh/.git ]; then
     echo -e "${BLUE}Updating Inveigh.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/Inveigh/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Inveigh.${NC}"
  git clone https://github.com/Kevin-Robertson/Inveigh.git /opt/RedTeam-Toolkit/"Lateral Movement"/Inveigh/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/Inveigh/.git ]; then
     echo -e "${BLUE}Updating Inveigh.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/Inveigh/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Inveigh.${NC}"
  git clone https://github.com/Kevin-Robertson/Inveigh.git /opt/RedTeam-Toolkit/"Lateral Movement"/Inveigh/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/PowerUpSQL/.git ]; then
     echo -e "${BLUE}Updating PowerUpSQL.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/PowerUpSQL/; git pull
     echo
else
  echo -e "${YELLOW}Downloading PowerUpSQL.${NC}"
  git clone https://github.com/NetSPI/PowerUpSQL.git /opt/RedTeam-Toolkit/"Lateral Movement"/PowerUpSQL/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/MailSniper/.git ]; then
     echo -e "${BLUE}Updating MailSniper.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/MailSniper/; git pull
     echo
else
  echo -e "${YELLOW}Downloading MailSniper.${NC}"
  git clone https://github.com/dafthack/MailSniper.git /opt/RedTeam-Toolkit/"Lateral Movement"/MailSniper/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/WMIOps/.git ]; then
     echo -e "${BLUE}Updating WMIOps.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/WMIOps/; git pull
     echo
else
  echo -e "${YELLOW}Downloading WMIOps.${NC}"
  git clone https://github.com/FortyNorthSecurity/WMIOps.git /opt/RedTeam-Toolkit/"Lateral Movement"/WMIOps/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/mimikatz/.git ]; then
     echo -e "${BLUE}Updating mimikatz.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/mimikatz/; git pull
     echo
else
  echo -e "${YELLOW}Downloading mimikatz.${NC}"
  git clone https://github.com/gentilkiwi/mimikatz.git /opt/RedTeam-Toolkit/"Lateral Movement"/mimikatz/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/LaZagne/.git ]; then
     echo -e "${BLUE}Updating LaZagne.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/LaZagne/; git pull
     echo
else
  echo -e "${YELLOW}Downloading LaZagne.${NC}"
  git clone https://github.com/AlessandroZ/LaZagne.git /opt/RedTeam-Toolkit/"Lateral Movement"/LaZagne/
  echo
  echo -e "${BLUE}Piping Requirements.${NC}"
  pip install pyasn1 psutil secretstorage ; pip install https://github.com/n1nj4sec/memorpy/archive/master.zip
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/KeeThief/.git ]; then
     echo -e "${BLUE}Updating KeeThief.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/KeeThief/; git pull
     echo
else
  echo -e "${YELLOW}Downloading KeeThief.${NC}"
  git clone https://github.com/HarmJ0y/KeeThief.git /opt/RedTeam-Toolkit/"Lateral Movement"/KeeThief/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/PSAttack/.git ]; then
     echo -e "${BLUE}Updating PSAttack.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/PSAttack/; git pull
     echo
else
  echo -e "${YELLOW}Downloading PSAttack.${NC}"
  git clone https://github.com/jaredhaight/PSAttack.git /opt/RedTeam-Toolkit/"Lateral Movement"/PSAttack/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/Internal-Monologue/.git ]; then
     echo -e "${BLUE}Updating Internal-Monologue.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/PSAttack/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Internal-Monologue.${NC}"
  git clone https://github.com/eladshamir/Internal-Monologue.git /opt/RedTeam-Toolkit/"Lateral Movement"/Internal-Monologue/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/impacket/.git ]; then
     echo -e "${BLUE}Updating Impacket.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/impacket/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Impacket.${NC}"
  git clone https://github.com/SecureAuthCorp/impacket.git /opt/RedTeam-Toolkit/"Lateral Movement"/impacket/
  echo
  echo -e "${BLUE}Piping Requirements.${NC}"
  pip install -r /opt/RedTeam-Toolkit/"Lateral Movement"/impacket/requirements.txt
  echo
  echo -e "${YELLOW}Running Setup.${NC}"
  /usr/bin/python /opt/RedTeam-Toolkit/"Lateral Movement"/impacket/setup.py install
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/icebreaker/.git ]; then
     echo -e "${BLUE}Updating icebreaker.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/icebreaker/; git pull
     echo
else
  echo -e "${YELLOW}Downloading icebreaker.${NC}"
  git clone https://github.com/DanMcInerney/icebreaker.git /opt/RedTeam-Toolkit/"Lateral Movement"/icebreaker/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/LOLBAS/.git ]; then
     echo -e "${BLUE}Updating Living Off The Land Binaries and Scripts (and now also Libraries).${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/LOLBAS/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Living Off The Land Binaries and Scripts (and now also Libraries).${NC}"
  git clone https://github.com/LOLBAS-Project/LOLBAS.git /opt/RedTeam-Toolkit/"Lateral Movement"/LOLBAS/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/WSUSpendu/.git ]; then
     echo -e "${BLUE}Updating WSUSpendu.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/WSUSpendu/; git pull
     echo
else
  echo -e "${YELLOW}Downloading WSUSpendu.${NC}"
  git clone https://github.com/AlsidOfficial/WSUSpendu.git /opt/RedTeam-Toolkit/"Lateral Movement"/WSUSpendu/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/evilgrade/.git ]; then
     echo -e "${BLUE}Updating evilgrade.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/evilgrade/; git pull
     echo
else
  echo -e "${YELLOW}Downloading evilgrade.${NC}"
  git clone https://github.com/infobyte/evilgrade.git /opt/RedTeam-Toolkit/"Lateral Movement"/evilgrade/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/NetRipper/.git ]; then
     echo -e "${BLUE}Updating NetRipper.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/NetRipper/; git pull
     echo
else
  echo -e "${YELLOW}Downloading NetRipper.${NC}"
  git clone https://github.com/NytroRST/NetRipper.git /opt/RedTeam-Toolkit/"Lateral Movement"/NetRipper/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/LethalHTA/.git ]; then
     echo -e "${BLUE}Updating LethalHTA.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/LethalHTA/; git pull
     echo
else
  echo -e "${YELLOW}Downloading LethalHTA.${NC}"
  git clone https://github.com/codewhitesec/LethalHTA.git /opt/RedTeam-Toolkit/"Lateral Movement"/LethalHTA/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/Invoke-PowerThIEf/.git ]; then
     echo -e "${BLUE}Updating Invoke-PowerThIEf.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/Invoke-PowerThIEf/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Invoke-PowerThIEf.${NC}"
  git clone https://github.com/nettitude/Invoke-PowerThIEf.git /opt/RedTeam-Toolkit/"Lateral Movement"/Invoke-PowerThIEf/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/redsnarf/.git ]; then
     echo -e "${BLUE}Updating redsnarf.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/redsnarf/; git pull
     echo
else
  echo -e "${YELLOW}Downloading redsnarf.${NC}"
  git clone https://github.com/nccgroup/redsnarf.git /opt/RedTeam-Toolkit/"Lateral Movement"/redsnarf/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/HoneypotBuster/.git ]; then
     echo -e "${BLUE}Updating HoneypotBuster.${NC}"
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/HoneypotBuster/; git pull
     echo
else
  echo -e "${YELLOW}Downloading HoneypotBuster.${NC}"
  git clone https://github.com/JavelinNetworks/HoneypotBuster.git /opt/RedTeam-Toolkit/"Lateral Movement"/HoneypotBuster/
  echo
fi

#Establish Foothold

if [ -d /opt/RedTeam-Toolkit/"Establish Foothold"/Tunna/.git ]; then
     echo -e "${BLUE}Updating Tunna.${NC}"
     cd /opt/RedTeam-Toolkit/"Establish Foothold"/Tunna/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Tunna.${NC}"
  git clone https://github.com/SECFORCE/Tunna.git /opt/RedTeam-Toolkit/"Establish Foothold"/Tunna/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Establish Foothold"/reGeorg/.git ]; then
     echo -e "${BLUE}Updating reGeorg.${NC}"
     cd /opt/RedTeam-Toolkit/"Establish Foothold"/reGeorg/; git pull
     echo
else
  echo -e "${YELLOW}Downloading reGeorg.${NC}"
  git clone https://github.com/sensepost/reGeorg.git /opt/RedTeam-Toolkit/"Establish Foothold"/reGeorg/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Establish Foothold"/Blade/.git ]; then
     echo -e "${BLUE}Updating Blade.${NC}"
     cd /opt/RedTeam-Toolkit/"Establish Foothold"/Blade/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Blade.${NC}"
  git clone https://github.com/wonderqs/Blade.git /opt/RedTeam-Toolkit/"Establish Foothold"/Blade/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Establish Foothold"/tinyshell/.git ]; then
     echo -e "${BLUE}Updating tinyshell.${NC}"
     cd /opt/RedTeam-Toolkit/"Establish Foothold"/tinyshell/; git pull
     echo
else
  echo -e "${YELLOW}Downloading tinyshell.${NC}"
  git clone https://github.com/threatexpress/tinyshell.git /opt/RedTeam-Toolkit/"Establish Foothold"/tinyshell/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Establish Foothold"/PowerLurk/.git ]; then
     echo -e "${BLUE}Updating PowerLurk.${NC}"
     cd /opt/RedTeam-Toolkit/"Establish Foothold"/PowerLurk/; git pull
     echo
else
  echo -e "${YELLOW}Downloading PowerLurk.${NC}"
  git clone https://github.com/Sw4mpf0x/PowerLurk.git /opt/RedTeam-Toolkit/"Establish Foothold"/PowerLurk/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Establish Foothold"/DAMP/.git ]; then
     echo -e "${BLUE}Updating DAMP.${NC}"
     cd /opt/RedTeam-Toolkit/"Establish Foothold"/DAMP/; git pull
     echo
else
  echo -e "${YELLOW}Downloading DAMP.${NC}"
  git clone https://github.com/HarmJ0y/DAMP.git /opt/RedTeam-Toolkit/"Establish Foothold"/DAMP/
  echo
fi

#Escalate Privileges
#Folder Path - "Escalate Privileges"/{"Domain Escalation","Local Escalation"}

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/Invoke-ACLPwn/.git ]; then
     echo -e "${BLUE}Updating Invoke-ACLPwn.${NC}"
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/Invoke-ACLPwn/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Invoke-ACLPwn.${NC}"
  git clone https://github.com/fox-it/Invoke-ACLPwn.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/Invoke-ACLPwn/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/BloodHound/.git ]; then
     echo -e "${BLUE}Updating BloodHound.${NC}"
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/BloodHound/; git pull
     echo
else
  echo -e "${YELLOW}Downloading BloodHound.${NC}"
  git clone https://github.com/BloodHoundAD/BloodHound.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/BloodHound/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/Grouper/.git ]; then
     echo -e "${BLUE}Updating Grouper.${NC}"
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/Grouper/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Grouper.${NC}"
  git clone https://github.com/l0ss/Grouper.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/Grouper/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/ADRecon/.git ]; then
     echo -e "${BLUE}Updating ADRecon.${NC}"
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/ADRecon/; git pull
     echo
else
  echo -e "${YELLOW}Downloading ADRecon.${NC}"
  git clone https://github.com/sense-of-security/ADRecon.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/ADRecon/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/ADACLScanner/.git ]; then
     echo -e "${BLUE}Updating ADACLScanner.${NC}"
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/ADACLScanner/; git pull
     echo
else
  echo -e "${YELLOW}Downloading ADACLScanner.${NC}"
  git clone https://github.com/canix1/ADACLScanner.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/ADACLScanner/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/LAPSToolkit/.git ]; then
     echo -e "${BLUE}Updating LAPSToolkit.${NC}"
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/LAPSToolkit/; git pull
     echo
else
  echo -e "${YELLOW}Downloading LAPSToolkit.${NC}"
  git clone https://github.com/leoloobeek/LAPSToolkit.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/LAPSToolkit/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/RiskySPN/.git ]; then
     echo -e "${BLUE}Updating RiskySPN.${NC}"
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/RiskySPN/; git pull
     echo
else
  echo -e "${YELLOW}Downloading RiskySPN.${NC}"
  git clone https://github.com/cyberark/RiskySPN.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/RiskySPN/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/Mystique/.git ]; then
     echo -e "${BLUE}Updating Mystique.${NC}"
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/Mystique/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Mystique.${NC}"
  git clone https://github.com/machosec/Mystique.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/Mystique/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/Rubeus/.git ]; then
     echo -e "${BLUE}Updating Rubeus.${NC}"
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/Rubeus/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Rubeus.${NC}"
  git clone https://github.com/GhostPack/Rubeus.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/Rubeus/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/kekeo/.git ]; then
     echo -e "${BLUE}Updating kekeo.${NC}"
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/kekeo/; git pull
     echo
else
  echo -e "${YELLOW}Downloading kekeo.${NC}"
  git clone https://github.com/gentilkiwi/kekeo.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/kekeo/
  echo
fi

#Escalate Privileges
#Folder Path - "Escalate Privileges"/{"Domain Escalation","Local Escalation"}

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/UACME/.git ]; then
     echo -e "${BLUE}Updating UACME.${NC}"
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/UACME/; git pull
     echo
else
  echo -e "${YELLOW}Downloading UACME.${NC}"
  git clone https://github.com/hfiref0x/UACME.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/UACME/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/windows-kernel-exploits/.git ]; then
     echo -e "${BLUE}Updating windows-kernel-exploits.${NC}"
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/windows-kernel-exploits/; git pull
     echo
else
  echo -e "${YELLOW}Downloading windows-kernel-exploits.${NC}"
  git clone https://github.com/SecWiki/windows-kernel-exploits.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/windows-kernel-exploits/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/ElevateKit/.git ]; then
     echo -e "${BLUE}Updating ElevateKit.${NC}"
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/ElevateKit/; git pull
     echo
else
  echo -e "${YELLOW}Downloading ElevateKit.${NC}"
  git clone https://github.com/rsmudge/ElevateKit.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/ElevateKit/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/Sherlock/.git ]; then
     echo -e "${BLUE}Updating Sherlock.${NC}"
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/Sherlock/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Sherlock.${NC}"
  git clone https://github.com/rasta-mouse/Sherlock.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/Sherlock/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/Tokenvator/.git ]; then
     echo -e "${BLUE}Updating Tokenvator.${NC}"
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/Tokenvator/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Tokenvator.${NC}"
  git clone https://github.com/0xbadjuju/Tokenvator.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/Tokenvator/
  echo
fi

#Data Exfiltration

if [ -d /opt/RedTeam-Toolkit/"Data Exfiltration"/Cloakify/.git ]; then
     echo -e "${BLUE}Updating Cloakify.${NC}"
     cd /opt/RedTeam-Toolkit/"Data Exfiltration"/Cloakify/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Cloakify.${NC}"
  git clone https://github.com/TryCatchHCF/Cloakify.git /opt/RedTeam-Toolkit/"Data Exfiltration"/Cloakify/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Data Exfiltration"/DET/.git ]; then
     echo -e "${BLUE}Updating DET.${NC}"
     cd /opt/RedTeam-Toolkit/"Data Exfiltration"/DET/; git pull
     echo
else
  echo -e "${YELLOW}Downloading DET.${NC}"
  git clone https://github.com/sensepost/DET.git /opt/RedTeam-Toolkit/"Data Exfiltration"/DET/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Data Exfiltration"/DNSExfiltrator/.git ]; then
     echo -e "${BLUE}Updating DNSExfiltrator.${NC}"
     cd /opt/RedTeam-Toolkit/"Data Exfiltration"/DNSExfiltrator/; git pull
     echo
else
  echo -e "${YELLOW}Downloading DNSExfiltrator.${NC}"
  git clone https://github.com/Arno0x/DNSExfiltrator.git /opt/RedTeam-Toolkit/"Data Exfiltration"/DNSExfiltrator/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Data Exfiltration"/PyExfil/.git ]; then
     echo -e "${BLUE}Updating PyExfil.${NC}"
     cd /opt/RedTeam-Toolkit/"Data PyExfil"/PyExfil/; git pull
     echo
else
  echo -e "${YELLOW}Downloading PyExfil.${NC}"
  git clone https://github.com/ytisf/PyExfil.git /opt/RedTeam-Toolkit/"Data Exfiltration"/PyExfil/
  echo
  echo -e "${YELLOW}Piping Requirements.${NC}"
  cd /opt/RedTeam-Toolkit/"Data Exfiltration"/PyExfil/ ; pip install -r requirements.txt
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Data Exfiltration"/Egress-Assess/.git ]; then
     echo -e "${BLUE}Updating Egress-Assess.${NC}"
     cd /opt/RedTeam-Toolkit/"Data Exfiltration"/Egress-Assess/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Egress-Assess.${NC}"
  git clone https://github.com/FortyNorthSecurity/Egress-Assess.git /opt/RedTeam-Toolkit/"Data Exfiltration"/Egress-Assess/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Data Exfiltration"/Powershell-RAT/.git ]; then
     echo -e "${BLUE}Updating Powershell-RAT.${NC}"
     cd /opt/RedTeam-Toolkit/"Data Exfiltration"/Powershell-RAT/; git pull
     echo
else
  echo -e "${YELLOW}Downloading Powershell-RAT.${NC}"
  git clone https://github.com/Viralmaniar/Powershell-RAT.git /opt/RedTeam-Toolkit/"Data Exfiltration"/Powershell-RAT/
  echo
fi
