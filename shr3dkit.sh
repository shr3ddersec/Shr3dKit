#!/bin/bash
# 
#  ███████╗██╗  ██╗██████╗ ██████╗ ██████╗ ██╗  ██╗██╗████████╗
#  ██╔════╝██║  ██║██╔══██╗╚════██╗██╔══██╗██║ ██╔╝██║╚══██╔══╝
#  ███████╗███████║██████╔╝ █████╔╝██║  ██║█████╔╝ ██║   ██║   
#  ╚════██║██╔══██║██╔══██╗ ╚═══██╗██║  ██║██╔═██╗ ██║   ██║   
#  ███████║██║  ██║██║  ██║██████╔╝██████╔╝██║  ██╗██║   ██║   
#  ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝   ╚═╝   
#                 -Influenced by infosecn1nja-
#                   -Script by Shr3dderSec-
#
# Do not use this script for assisting in illegal activity, I take no responsibility in your actions.
# 

# Check theHarvester.py permissions
perms=$(stat /usr/share/theharvester/theHarvester.py | grep -m1 'Access' | cut -d '/' -f2 | cut -d ')' -f1)
if [ "$perms" == '-rw-r--r--' ]; then
     chmod 755 /usr/share/theharvester/theHarvester.py
fi

# Updating Kali 
echo -e "Updating Kali."
apt update ; apt-get -y upgrade ; apt-get -y dist-upgrade ; apt-get -y autoremove ; apt-get -y autoclean ; echo
echo -e "Installing Veil"
apt install veil
# Making Directories
mkdir -p /opt/RedTeam-Toolkit/{Reconnaissance/{Active,Passive},Frameworks,Weaponization,Delivery/{Phishing},"Command and Control"/{"Remote Access",Staging},"Lateral Movement","Establish Foothold","Escalate Privileges"/{"Domain Escalation","Local Escalation"},"Data Exfiltration"}

# Active Intelligence Gathering

echo -e "Checking Active Intelligence Gathering."

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Active/EyeWitness/.git ]; then
     echo -e "Updating EyeWitness."
     cd /opt/RedTeam-Toolkit/Reconnaissance/Active/EyeWitness ; git pull
     echo
else
  echo -e "Downloading EyeWitness."
  git clone https://github.com/FortyNorthSecurity/EyeWitness.git /opt/RedTeam-Toolkit/Reconnaissance/Active/EyeWitness
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Active/AWSBucketDump/.git ]; then
     echo -e "Updating AWSBucketDump."
     cd /opt/RedTeam-Toolkit/Reconnaissance/Active/AWSBucketDump ; git pull
     echo
else
  echo -e "Downloading AWSBucketDump."
  git clone https://github.com/jordanpotti/AWSBucketDump.git /opt/RedTeam-Toolkit/Reconnaissance/Active/EyeWitness
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Active/AWSBucketDump/.git ]; then
     echo -e "Updating AQUATONE."
     cd /opt/RedTeam-Toolkit/Reconnaissance/Active/AQUATONE ; git pull
     echo
else
  echo -e "Downloading AQUATONE."
  git clone https://github.com/michenriksen/aquatone.git /opt/RedTeam-Toolkit/Reconnaissance/Active/AQUATONE
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Active/spoofcheck/.git ]; then
     echo -e "Updating spoofcheck."
     cd /opt/RedTeam-Toolkit/Reconnaissance/Active/spoofcheck ; git pull
     echo
else
  echo -e "Downloading spoofcheck."
  git clone https://github.com/BishopFox/spoofcheck.git /opt/RedTeam-Toolkit/Reconnaissance/Active/spoofcheck
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Active/AWSBucketDump/.git ]; then
     echo -e "Updating dnsrecon."
     cd /opt/RedTeam-Toolkit/Reconnaissance/Active/dnsrecon ; git pull
     echo
else
  echo -e "Downloading dnsrecon."
  git clone https://github.com/darkoperator/dnsrecon.git /opt/RedTeam-Toolkit/Reconnaissance/Active/spoofcheck
  echo
fi

# Passive Intelligence Gathering
echo -e "Checking Passive Intelligence Gathering."

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Passive/social_mapper/.git ]; then
     echo -e "Updating Social Mapper."
     cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/social_mapper ; git pull
     echo
else
  echo -e "Downloading Social Mapper."
  git clone https://github.com/SpiderLabs/social_mapper.git /opt/RedTeam-Toolkit/Reconnaissance/Passive/social_mapper
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Passive/skiptracer/.git ]; then
     echo -e "Updating Skiptracer."
     cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/skiptracer ; git pull
     echo
else
  echo -e "Downloading Skiptracer."
  git clone https://github.com/xillwillx/skiptracer.git /opt/RedTeam-Toolkit/Reconnaissance/Passive/skiptracer
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Passive/ScrapedIn/.git ]; then
     echo -e "Updating ScrapedIn."
     cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/ScrapedIn ; git pull
     echo
else
  echo -e "Downloading ScrapedIn."
  git clone https://github.com/dchrastil/ScrapedIn.git /opt/RedTeam-Toolkit/Reconnaissance/Passive/ScrapedIn
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Passive/linkScrape/.git ]; then
     echo -e "Updating linkScrape."
     cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/linkScrape ; git pull
     echo
else
  echo -e "Downloading linkScrape."
  git clone https://github.com/NickSanzotta/linkScrape.git /opt/RedTeam-Toolkit/Reconnaissance/Passive/linkScrape
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Passive/FOCA/.git ]; then
     echo -e "Updating FOCA."
     cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/FOCA ; git pull
     echo
else
  echo -e "Downloading FOCA."
  git clone https://github.com/ElevenPaths/FOCA.git /opt/RedTeam-Toolkit/Reconnaissance/Passive/linkScrape
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Passive/metagoofil/.git ]; then
     echo -e "Updating Metagoofil."
     cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/metagoofil ; git pull
     echo
else
  echo -e "Downloading Metagoofil."
  git clone https://github.com/laramies/metagoofil.git /opt/RedTeam-Toolkit/Reconnaissance/Passive/metagoofil
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Passive/SimplyEmail/.git ]; then
     echo -e "Updating SimplyEmail."
     cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/SimplyEmail ; git pull
     echo
else
  echo -e "Downloading SimplyEmail."
  git clone https://github.com/SimplySecurity/SimplyEmail.git /opt/RedTeam-Toolkit/Reconnaissance/Passive/SimplyEmail
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Passive/truffleHog/.git ]; then
     echo -e "Updating truffleHog."
     cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/truffleHog ; git pull
     echo
else
  echo -e "Downloading truffleHog."
  git clone https://github.com/dxa4481/truffleHog.git /opt/RedTeam-Toolkit/Reconnaissance/Passive/truffleHog
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Passive/Just-Metadata/.git ]; then
     echo -e "Updating Just-Metadata."
     cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/Just-Metadata ; git pull
     echo
else
  echo -e "Downloading Just-Metadata."
  git clone https://github.com/FortyNorthSecurity/Just-Metadata.git /opt/RedTeam-Toolkit/Reconnaissance/Passive/Just-Metadata
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Passive/typofinder/.git ]; then
     echo -e "Updating typofinder."
     cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/typofinder ; git pull
     echo
else
  echo -e "Downloading typofinder."
  git clone https://github.com/nccgroup/typofinder.git /opt/RedTeam-Toolkit/Reconnaissance/Passive/typofinder
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Passive/pwnedOrNot/.git ]; then
     echo -e "Updating pwnedOrNot."
     cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/pwnedOrNot ; git pull
     echo
else
  echo -e "Downloading pwnedOrNot."
  git clone https://github.com/thewhiteh4t/pwnedOrNot.git /opt/RedTeam-Toolkit/Reconnaissance/Passive/pwnedOrNot
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Passive/GitHarvester/.git ]; then
     echo -e "Updating GitHarvester."
     cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/GitHarvester ; git pull
     echo
else
  echo -e "Downloading GitHarvester."
  git clone https://github.com/metac0rtex/GitHarvester.git /opt/RedTeam-Toolkit/Reconnaissance/Passive/GitHarvester
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Reconnaissance/Passive/pwndb/.git ]; then
     echo -e "Updating pwndb."
     cd /opt/RedTeam-Toolkit/Reconnaissance/Passive/pwndb ; git pull
     echo
else
  echo -e "Downloading pwnndb."
  git clone https://github.com/davidtavarez/pwndb.git /opt/RedTeam-Toolkit/Reconnaissance/Passive/pwndb
  echo
fi

# Reconnaissance Frameworks

echo -e "Checking Frameworks."

if [ -d /opt/RedTeam-Toolkit/Frameworks/spiderfoot/.git ]; then
     echo -e "Updating SpiderFoot."
     cd /opt/RedTeam-Toolkit/Frameworks/spiderfoot ; git pull
     echo
else
  echo -e "Downloading SpiderFoot."
  git clone https://github.com/smicallef/spiderfoot.git /opt/RedTeam-Toolkit/Frameworks/spiderfoot
  echo
  echo -e "Grabbing pip3 Requirements."
  cd /opt/RedTeam-Toolkit/Frameworks/spiderfoot ; pip3 install -r requirements.txt
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Frameworks/datasploit/.git ]; then
     echo -e "Updating datasploit."
     cd /opt/RedTeam-Toolkit/Frameworks/datasploit ; git pull
     echo
else
  echo -e "Downloading datasploit."
  git clone https://github.com/DataSploit/datasploit.git /opt/RedTeam-Toolkit/Frameworks/datasploit
  echo
fi

# Weaponization (Exploits)

echo -e "Checking Exploits."
if [ -d /opt/RedTeam-Toolkit/Weaponization/CVE-2017-8570/.git ]; then
     echo -e "Updating CVE-2017-8570."
     cd /opt/RedTeam-Toolkit/Weaponization/CVE-2017-8570 ; git pull
     echo
else
  echo -e "Downloading CVE-2017-8570."
  git clone https://github.com/rxwx/CVE-2017-8570.git /opt/RedTeam-Toolkit/Weaponization/CVE-2017-8570
  echo
fi
if [ -d /opt/RedTeam-Toolkit/Weaponization/CVE-2017-8759/.git ]; then
     echo -e "Updating Exploit toolkit CVE-2017-8759."
     cd /opt/RedTeam-Toolkit/Weaponization/CVE-2017-8759 ; git pull
     echo
else
  echo -e "Downloading Exploit toolkit CVE-2017-8759."
  git clone https://github.com/bhdresh/CVE-2017-8759.git /opt/RedTeam-Toolkit/Weaponization/CVE-2017-8759
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/CVE-2017-11882/.git ]; then
     echo -e "Updating Exploit toolkit CVE-2017-11882."
     cd /opt/RedTeam-Toolkit/Weaponization/CVE-2017-11882 ; git pull
     echo
else
  echo -e "Downloading Exploit toolkit CVE-2017-11882."
  git clone https://github.com/unamer/CVE-2017-11882.git /opt/RedTeam-Toolkit/Weaponization/CVE-2017-11882
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/CVE-2018-4878/.git ]; then
     echo -e "Updating Adobe Flash Exploit."
     cd /opt/RedTeam-Toolkit/Weaponization/CVE-2018-4878 ; git pull
     echo
else
  echo -e "Downloading Adobe Flash Exploit."
  git clone https://github.com/anbai-inc/CVE-2018-4878.git /opt/RedTeam-Toolkit/Weaponization/CVE-2018-4878
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/CVE-2017-0199/.git ]; then
     echo -e "Updating Exploit toolkit CVE-2017-0199."
     cd /opt/RedTeam-Toolkit/Weaponization/CVE-2017-0199 ; git pull
     echo
else
  echo -e "Downloading Exploit toolkit CVE-2017-0199."
  git clone https://github.com/bhdresh/CVE-2017-0199.git /opt/RedTeam-Toolkit/Weaponization/CVE-2017-0199
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/demiguise/.git ]; then
     echo -e "Updating demiguise."
     cd /opt/RedTeam-Toolkit/Weaponization/demiguise ; git pull
     echo
else
  echo -e "Downloading demiguise."
  git clone https://github.com/nccgroup/demiguise.git /opt/RedTeam-Toolkit/Weaponization/demiguise
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/Office-DDE-Payloads/.git ]; then
     echo -e "Updating Office-DDE-Payloads."
     cd /opt/RedTeam-Toolkit/Weaponization/Office-DDE-Payloads ; git pull
     echo
else
  echo -e "Downloading Office-DDE-Payloads."
  git clone https://github.com/0xdeadbeefJERKY/Office-DDE-Payloads.git /opt/RedTeam-Toolkit/Weaponization/Office-DDE-Payloads
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/CACTUSTORCH/.git ]; then
     echo -e "Updating CACTUSTORCH."
     cd /opt/RedTeam-Toolkit/Weaponization/CACTUSTORCH ; git pull
     echo
else
  echo -e "Downloading CACTUSTORCH."
  git clone https://github.com/mdsecactivebreach/CACTUSTORCH.git /opt/RedTeam-Toolkit/Weaponization/CACTUSTORCH
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/SharpShooter/.git ]; then
     echo -e "Updating SharpShooter."
     cd /opt/RedTeam-Toolkit/Weaponization/SharpShooter ; git pull
     echo
else
  echo -e "Downloading SharpShooter."
  git clone https://github.com/mdsecactivebreach/SharpShooter.git /opt/RedTeam-Toolkit/Weaponization/SharpShooter
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/DKMC/.git ]; then
     echo -e "Updating Don't kill my cat."
     cd /opt/RedTeam-Toolkit/Weaponization/DKMC ; git pull
     echo
else
  echo -e "Downloading Don't kill my cat."
  git clone https://github.com/Mr-Un1k0d3r/DKMC.git /opt/RedTeam-Toolkit/Weaponization/DKMC
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/MaliciousMacroGenerator/.git ]; then
     echo -e "Updating Malicious Macro Generator Utility."
     cd /opt/RedTeam-Toolkit/Weaponization/MaliciousMacroGenerator ; git pull
     echo
else
  echo -e "Downloading Malicious Macro Generator Utility."
  git clone https://github.com/Mr-Un1k0d3r/MaliciousMacroGenerator.git /opt/RedTeam-Toolkit/Weaponization/MaliciousMacroGenerator
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/SCT-obfuscator/.git ]; then
     echo -e "Updating SCT Obfuscator."
     cd /opt/RedTeam-Toolkit/Weaponization/SCT-obfuscator ; git pull
     echo
else
  echo -e "Downloading SCT Obfuscator."
  git clone https://github.com/Mr-Un1k0d3r/SCT-obfuscator.git /opt/RedTeam-Toolkit/Weaponization/SCT-obfuscator
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/Invoke-Obfuscation/.git ]; then
     echo -e "Updating Invoke-Obfuscation."
     cd /opt/RedTeam-Toolkit/Weaponization/Invoke-Obfuscation; git pull
     echo
else
  echo -e "Downloading Invoke-Obfuscation."
  git clone https://github.com/danielbohannon/Invoke-Obfuscation.git /opt/RedTeam-Toolkit/Weaponization/Invoke-Obfuscation
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/Invoke-DOSfuscation/.git ]; then
     echo -e "Updating Invoke-DOSfuscation."
     cd /opt/RedTeam-Toolkit/Weaponization/Invoke-Obfuscation; git pull
     echo
else
  echo -e "Downloading Invoke-DOSfuscation."
  git clone https://github.com/danielbohannon/Invoke-DOSfuscation.git /opt/RedTeam-Toolkit/Weaponization/Invoke-DOSfuscation
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/morphHTA/.git ]; then
     echo -e "Updating morphHTA."
     cd /opt/RedTeam-Toolkit/Weaponization/morphHTA; git pull
     echo
else
  echo -e "Downloading morphHTA."
  git clone https://github.com/vysec/morphHTA.git /opt/RedTeam-Toolkit/Weaponization/morphHTA
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/unicorn/.git ]; then
     echo -e "Updating Unicorn."
     cd /opt/RedTeam-Toolkit/Weaponization/unicorn; git pull
     echo
else
  echo -e "Downloading Unicorn."
  git clone https://github.com/trustedsec/unicorn.git /opt/RedTeam-Toolkit/Weaponization/unicorn
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/EmbedInHTML/.git ]; then
     echo -e "Updating EmbedInHTML."
     cd /opt/RedTeam-Toolkit/Weaponization/EmbedInHTML; git pull
     echo
else
  echo -e "Downloading EmbedInHTML."
  git clone https://github.com/Arno0x/EmbedInHTML.git /opt/RedTeam-Toolkit/Weaponization/EmbedInHTML
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/SigThief/.git ]; then
     echo -e "Updating SigThief."
     cd /opt/RedTeam-Toolkit/Weaponization/SigThief; git pull
     echo
else
  echo -e "Downloading SigThief."
  git clone https://github.com/secretsquirrel/SigThief.git /opt/RedTeam-Toolkit/Weaponization/SigThief
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/CheckPlease/.git ]; then
     echo -e "Updating CheckPlease."
     cd /opt/RedTeam-Toolkit/Weaponization/CheckPlease; git pull
     echo
else
  echo -e "Downloading CheckPlease."
  git clone https://github.com/Arvanaghi/CheckPlease.git /opt/RedTeam-Toolkit/Weaponization/CheckPlease
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/Invoke-PSImage/.git ]; then
     echo -e "Updating Invoke-PSImage."
     cd /opt/RedTeam-Toolkit/Weaponization/Invoke-PSImage; git pull
     echo
else
  echo -e "Downloading Invoke-PSImage."
  git clone https://github.com/peewpw/Invoke-PSImage.git /opt/RedTeam-Toolkit/Weaponization/Invoke-PSImage
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/LuckyStrike/.git ]; then
     echo -e "Updating LuckyStrike."
     cd /opt/RedTeam-Toolkit/Weaponization/LuckyStrike; git pull
     echo
else
  echo -e "Downloading LuckyStrike."
  git clone https://github.com/curi0usJack/luckystrike.git /opt/RedTeam-Toolkit/Weaponization/LuckyStrike
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/ClickOnceGenerator/.git ]; then
     echo -e "Updating ClickOnceGenerator."
     cd /opt/RedTeam-Toolkit/Weaponization/ClickOnceGenerator; git pull
     echo
else
  echo -e "Downloading ClickOnceGenerator."
  git clone https://github.com/Mr-Un1k0d3r/ClickOnceGenerator.git /opt/RedTeam-Toolkit/Weaponization/ClickOnceGenerator
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/macro_pack/.git ]; then
     echo -e "Updating macro_pack."
     cd /opt/RedTeam-Toolkit/Weaponization/macro_pack; git pull
     echo
else
  echo -e "Downloading macro_pack."
  git https://github.com/sevagas/macro_pack.git /opt/RedTeam-Toolkit/Weaponization/macro_pack
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/StarFighters/.git ]; then
     echo -e "Updating StarFighters."
     cd /opt/RedTeam-Toolkit/Weaponization/StarFighters; git pull
     echo
else
  echo -e "Downloading StarFighters."
  git clone https://github.com/Cn33liz/StarFighters.git /opt/RedTeam-Toolkit/Weaponization/StarFighters
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/StarFighters/.git ]; then
     echo -e "Updating StarFighters."
     cd /opt/RedTeam-Toolkit/Weaponization/StarFighters; git pull
     echo
else
  echo -e "Downloading StarFighters."
  git clone https://github.com/Cn33liz/StarFighters.git /opt/RedTeam-Toolkit/Weaponization/StarFighters
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/nps_payload/.git ]; then
     echo -e "Updating nps_payload."
     cd /opt/RedTeam-Toolkit/Weaponization/nps_payload; git pull
     echo
else
  echo -e "Downloading nps_payload."
  git clone https://github.com/trustedsec/nps_payload.git /opt/RedTeam-Toolkit/Weaponization/nps_payload
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/SocialEngineeringPayloads/.git ]; then
     echo -e "Updating SocialEngineeringPayloads."
     cd /opt/RedTeam-Toolkit/Weaponization/SocialEngineeringPayloads ; git pull
     echo
else
  echo -e "Downloading SocialEngineeringPayloads."
  git clone https://github.com/bhdresh/SocialEngineeringPayloads.git /opt/RedTeam-Toolkit/Weaponization/SocialEngineeringPayloads
  echo
fi

# Removed Social-Engineer Toolkit - type setoolkit in terminal

if [ -d /opt/RedTeam-Toolkit/Weaponization/phishery/.git ]; then
     echo -e "Updating phishery."
     cd /opt/RedTeam-Toolkit/Weaponization/phishery ; git pull
     echo
else
  echo -e "Downloading phishery."
  git clone https://github.com/ryhanson/phishery.git /opt/RedTeam-Toolkit/Weaponization/phishery
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/PowerShdll/.git ]; then
     echo -e "Updating PowerShdll."
     cd /opt/RedTeam-Toolkit/Weaponization/PowerShdll ; git pull
     echo
else
  echo -e "Downloading PowerShdll."
  git clone https://github.com/p3nt4/PowerShdll.git /opt/RedTeam-Toolkit/Weaponization/PowerShdll
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/UltimateAppLockerByPassList/.git ]; then
     echo -e "Updating Ultimate AppLocker ByPass List."
     cd /opt/RedTeam-Toolkit/Weaponization/UltimateAppLockerByPassList ; git pull
     echo
else
  echo -e "Downloading Ultimate AppLocker ByPass List."
  git clone https://github.com/api0cradle/UltimateAppLockerByPassList.git /opt/RedTeam-Toolkit/Weaponization/UltimateAppLockerByPassList
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/Ruler/.git ]; then
     echo -e "Updating Ruler."
     cd /opt/RedTeam-Toolkit/Weaponization/Ruler ; git pull
     echo
else
  echo -e "Downloading Ruler."
  git clone https://github.com/sensepost/ruler.git /opt/RedTeam-Toolkit/Weaponization/Ruler
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/Ruler/.git ]; then
     echo -e "Updating Ruler."
     cd /opt/RedTeam-Toolkit/Weaponization/Ruler ; git pull
     echo
else
  echo -e "Downloading Ruler."
  git clone https://github.com/sensepost/ruler.git /opt/RedTeam-Toolkit/Weaponization/Ruler
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/Generate-Macro/.git ]; then
     echo -e "Updating Generate-Macro."
     cd /opt/RedTeam-Toolkit/Weaponization/Generate-Macro ; git pull
     echo
else
  echo -e "Downloading Generate-Macro."
  git clone https://github.com/enigma0x3/Generate-Macro.git /opt/RedTeam-Toolkit/Weaponization/Generate-Macro
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/MaliciousMacroMSBuild/.git ]; then
     echo -e "Updating Malicious Macro MSBuild Generator."
     cd /opt/RedTeam-Toolkit/Weaponization/MaliciousMacroMSBuild ; git pull
     echo
else
  echo -e "Downloading Malicious Macro MSBuild Generator."
  git clone https://github.com/infosecn1nja/MaliciousMacroMSBuild.git /opt/RedTeam-Toolkit/Weaponization/MaliciousMacroMSBuild
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/metatwin/.git ]; then
     echo -e "Updating Meta Twin."
     cd /opt/RedTeam-Toolkit/Weaponization/metatwin ; git pull
     echo
else
  echo -e "Downloading Meta Twin."
  git clone https://github.com/threatexpress/metatwin.git /opt/RedTeam-Toolkit/Weaponization/metatwin
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/WePWNise/.git ]; then
     echo -e "Updating wePWNise."
     cd /opt/RedTeam-Toolkit/Weaponization/WePWNise ; git pull
     echo
else
  echo -e "Downloading wePWNise."
  git clone https://github.com/mwrlabs/wePWNise.git /opt/RedTeam-Toolkit/Weaponization/WePWNise
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/DotNetToJScript/.git ]; then
     echo -e "Updating DotNetToJScript."
     cd /opt/RedTeam-Toolkit/Weaponization/DotNetToJScript ; git pull
     echo
else
  echo -e "Downloading DotNetToJScript."
  git clone https://github.com/tyranid/DotNetToJScript.git /opt/RedTeam-Toolkit/Weaponization/DotNetToJScript
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/PSAmsi/.git ]; then
     echo -e "Updating PSAmsi."
     cd /opt/RedTeam-Toolkit/Weaponization/PSAmsi; git pull
     echo
else
  echo -e "Downloading PSAmsi."
  git clone https://github.com/cobbr/PSAmsi.git /opt/RedTeam-Toolkit/Weaponization/PSAmsi
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/ReflectiveDLLInjection/.git ]; then
     echo -e "Updating Reflective DLL injection."
     cd /opt/RedTeam-Toolkit/Weaponization/ReflectiveDLLInjection ; git pull
     echo
else
  echo -e "Downloading Reflective DLL injection."
  git clone https://github.com/stephenfewer/ReflectiveDLLInjection.git /opt/RedTeam-Toolkit/Weaponization/ReflectiveDLLInjection
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/ps1encode/.git ]; then
     echo -e "Updating ps1encode."
     cd /opt/RedTeam-Toolkit/Weaponization/ps1encode ; git pull
     echo
else
  echo -e "Downloading ps1encode."
  git clone https://github.com/CroweCybersecurity/ps1encode.git /opt/RedTeam-Toolkit/Weaponization/ps1encode
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/Worse-PDF/.git ]; then
     echo -e "Updating Worse PDF."
     cd /opt/RedTeam-Toolkit/Weaponization/Worse-PDF ; git pull
     echo
else
  echo -e "Downloading Worse PDF."
  git clone https://github.com/3gstudent/Worse-PDF.git /opt/RedTeam-Toolkit/Weaponization/Worse-PDF
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/SpookFlareF/.git ]; then
     echo -e "Updating SpookFlare."
     cd /opt/RedTeam-Toolkit/Weaponization/SpookFlare ; git pull
     echo
else
  echo -e "Downloading SpookFlare."
  git clone https://github.com/hlldz/SpookFlare.git /opt/RedTeam-Toolkit/Weaponization/SpookFlare
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/GreatSCT/.git ]; then
     echo -e "Updating GreatSCT."
     cd /opt/RedTeam-Toolkit/Weaponization/GreatSCT ; git pull
     echo
else
  echo -e "Downloading GreatSCT."
  git clone https://github.com/GreatSCT/GreatSCT.git /opt/RedTeam-Toolkit/Weaponization/GreatSCT
  echo
  echo -e "Running Setup."
  cd /opt/RedTeam-Toolkit/Weaponization/GreatSCT/setup ; /usr/bin/bash setup.sh -c
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/nps/.git ]; then
     echo -e "Updating nps."
     cd /opt/RedTeam-Toolkit/Weaponization/nps ; git pull
     echo
else
  echo -e "Downloading nps."
  git clone https://github.com/Ben0xA/nps.git /opt/RedTeam-Toolkit/Weaponization/nps
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/Meterpreter_Paranoid_Mode-SSL/.git ]; then
     echo -e "Updating Meterpreter_Paranoid_Mode-SSL."
     cd /opt/RedTeam-Toolkit/Weaponization/Meterpreter_Paranoid_Mode-SSL; git pull
     echo
else
  echo -e "Downloading Meterpreter_Paranoid_Mode-SSL."
  git clone https://github.com/r00t-3xp10it/Meterpreter_Paranoid_Mode-SSL.git /opt/RedTeam-Toolkit/Weaponization/Meterpreter_Paranoid_Mode-SSL
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/MacroShop/.git ]; then
     echo -e "Updating MacroShop."
     cd /opt/RedTeam-Toolkit/Weaponization/MacroShop; git pull
     echo
else
  echo -e "Downloading MacroShop."
  git clone https://github.com/khr0x40sh/MacroShop.git /opt/RedTeam-Toolkit/Weaponization/MacroShop
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/UnmanagedPowerShell/.git ]; then
     echo -e "Updating UnmanagedPowerShell."
     cd /opt/RedTeam-Toolkit/Weaponization/UnmanagedPowerShell; git pull
     echo
else
  echo -e "Downloading UnmanagedPowerShell."
  git clone https://github.com/leechristensen/UnmanagedPowerShell /opt/RedTeam-Toolkit/Weaponization/UnmanagedPowerShell
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/evil-ssdp/.git ]; then
     echo -e "Updating evil-ssdp."
     cd /opt/RedTeam-Toolkit/Weaponization/evil-ssdp; git pull
     echo
else
  echo -e "Downloading evil-ssdp."
  git clone https://gitlab.com/initstring/evil-ssdp.git /opt/RedTeam-Toolkit/Weaponization/evil-ssdp
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/Ebowla/.git ]; then
     echo -e "Updating Ebowla."
     cd /opt/RedTeam-Toolkit/Weaponization/Ebowla; git pull
     echo
else
  echo -e "Downloading Ebowla."
  git clone https://github.com/Genetic-Malware/Ebowla.git /opt/RedTeam-Toolkit/Weaponization/Ebowla
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/make-pdf-embedded/make-pdf-embedded.py ]; then
     echo -e "Skipping make-pdf-embedded, file is here."
else
  echo -e "Downloading make-pdf-embedded."
  wget https://raw.githubusercontent.com/DidierStevens/DidierStevensSuite/master/make-pdf-embedded.py -O/opt/RedTeam-Toolkit/Weaponization/make-pdf-embedded/make-pdf-embedded.py
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/avet/.git ]; then
     echo -e "Updating avet (AntiVirusEvasionTool)."
     cd /opt/RedTeam-Toolkit/Weaponization/avet; git pull
     echo
else
  echo -e "Downloading avet (AntiVirusEvasionTool)."
  git clone https://github.com/govolution/avet.git /opt/RedTeam-Toolkit/Weaponization/avet
  echo
  echo -e "Beginning avet's Setup."
  /usr/bin/bash /opt/RedTeam-Toolkit/Weaponization/avet/setup.sh
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Weaponization/Invoke-CradleCrafter/.git ]; then
     echo -e "Updating Invoke-CradleCrafter."
     cd /opt/RedTeam-Toolkit/Weaponization/Invoke-CradleCrafter; git pull
     echo
else
  echo -e "Downloading Invoke-CradleCrafter."
  git clone https://github.com/danielbohannon/Invoke-CradleCrafter /opt/RedTeam-Toolkit/Weaponization/Invoke-CradleCrafter
  echo
fi

# Delivery
if [ -d /opt/RedTeam-Toolkit/Delivery/Phishing/king-phisher/.git ]; then
     echo -e "Updating King Phisher."
     cd /opt/RedTeam-Toolkit/Delivery/Phishing/king-phisher; git pull
     echo
else
  echo -e "Downloading king-phisher."
  git clone https://github.com/securestate/king-phisher.git /opt/RedTeam-Toolkit/Delivery/Phishing/king-phisher
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Delivery/Phishing/FiercePhish/.git ]; then
     echo -e "Updating FiercePhish."
     cd /opt/RedTeam-Toolkit/Delivery/Phishing/FiercePhish; git pull
     echo
else
  echo -e "Downloading FiercePhish."
  git clone https://github.com/Raikia/FiercePhish.git /opt/RedTeam-Toolkit/Delivery/Phishing/FiercePhish
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Delivery/Phishing/ReelPhish/.git ]; then
     echo -e "Updating ReelPhish."
     cd /opt/RedTeam-Toolkit/Delivery/Phishing/ReelPhish; git pull
     echo
else
  echo -e "Downloading ReelPhish."
  git clone https://github.com/fireeye/ReelPhish.git /opt/RedTeam-Toolkit/Delivery/Phishing/ReelPhish
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Delivery/Phishing/CredSniper/.git ]; then
     echo -e "Updating CredSniper."
     cd /opt/RedTeam-Toolkit/Delivery/Phishing/CredSniper; git pull
     echo
else
  echo -e "Downloading CredSniper."
  git clone https://github.com/ustayready/CredSniper.git /opt/RedTeam-Toolkit/Delivery/Phishing/CredSniper
  echo
  echo -e "Please check the directory and run the install.sh."
fi

if [ -d /opt/RedTeam-Toolkit/Delivery/Phishing/PwnAuth/.git ]; then
     echo -e "Updating PwnAuth."
     cd /opt/RedTeam-Toolkit/Delivery/Phishing/PwnAuth; git pull
     echo
else
  echo -e "Downloading PwnAuth."
  git clone https://github.com/fireeye/PwnAuth.git /opt/RedTeam-Toolkit/Delivery/Phishing/PwnAuth
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Delivery/Phishing/phishing-frenzy/.git ]; then
     echo -e "Updating phishing-frenzy."
     cd /opt/RedTeam-Toolkit/Delivery/Phishing/phishing-frenzy; git pull
     echo
else
  echo -e "Downloading phishing-frenzy."
  git clone https://github.com/pentestgeek/phishing-frenzy.git /opt/RedTeam-Toolkit/Delivery/Phishing/phishing-frenzy
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Delivery/Phishing/PhishingPretexts/.git ]; then
     echo -e "Updating PhishingPretexts."
     cd /opt/RedTeam-Toolkit/Delivery/Phishing/PhishingPretexts; git pull
     echo
else
  echo -e "Downloading PhishingPretexts."
  git clone https://github.com/L4bF0x/PhishingPretexts.git /opt/RedTeam-Toolkit/Delivery/Phishing/PhishingPretexts
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Delivery/Phishing/PhishingPretexts/.git ]; then
     echo -e "Updating PhishingPretexts."
     cd /opt/RedTeam-Toolkit/Delivery/Phishing/PhishingPretexts; git pull
     echo
else
  echo -e "Downloading PhishingPretexts."
  git clone https://github.com/L4bF0x/PhishingPretexts.git /opt/RedTeam-Toolkit/Delivery/Phishing/PhishingPretexts
  echo
fi

if [ -d /opt/RedTeam-Toolkit/Delivery/Phishing/Modlishka/.git ]; then
     echo -e "Updating Modlishka."
     cd /opt/RedTeam-Toolkit/Delivery/Phishing/Modlishka; git pull
     echo
else
  echo -e "Downloading Modlishka."
  git clone https://github.com/drk1wi/Modlishka.git /opt/RedTeam-Toolkit/Delivery/Phishing/Modlishka
  echo
fi

#BeEF pre-installed in Kali | skipping

##Command and Control##
#Remote Access Tools#
#File Path - "Command and Control"/"Remote Access"

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/Empire/.git ]; then
     echo -e "Updating Empire."
     cd /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/Empire/; git pull
     echo
else
  echo -e "Downloading Empire."
  git clone https://github.com/EmpireProject/Empire.git /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/Empire/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/SILENTTRINITY/.git ]; then
     echo -e "Updating SILENTTRINITY."
     cd /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/SILENTTRINITY/; git pull
     echo
else
  echo -e "Downloading SILENTTRINITY."
  git clone https://github.com/byt3bl33d3r/SILENTTRINITY.git /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/SILENTTRINITY/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/Pupy/.git ]; then
     echo -e "Updating Pupy."
     cd /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/Pupy/; git pull
     echo
else
  echo -e "Downloading pupy."
  git clone https://github.com/n1nj4sec/pupy.git /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/Pupy/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/Koadic/.git ]; then
     echo -e "Updating Koadic."
     cd /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/Koadic/; git pull
     echo
else
  echo -e "Downloading Koadic."
  git clone https://github.com/zerosum0x0/koadic.git /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/koadic/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/PoshC2_Python/.git ]; then
     echo -e "Updating PoshC2_Python."
     cd /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/PoshC2_Python/; git pull
     echo
else
  echo -e "Downloading PoshC2_Python."
  git clone https://github.com/nettitude/PoshC2_Python.git /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/PoshC2_Python/
  echo
  git clone https://github.com/nettitude/PoshC2_Python.git /opt/Poshc2_Python
  echo -e "Installing PoshC2_Python."
  /usr/bin/bash "/opt/RedTeam-Toolkit/Command and Control/Remote Access/PoshC2_Python/Install.sh"
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/gcat/.git ]; then
     echo -e "Updating Gcat."
     cd /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/gcat/; git pull
     echo
else
  echo -e "Downloading Gcat."
  git clone https://github.com/byt3bl33d3r/gcat.git /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/gcat/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/trevorc2/.git ]; then
     echo -e "Updating TrevorC2."
     cd /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/trevorc2/; git pull
     echo
else
  echo -e "Downloading TrevorC2."
  git clone https://github.com/trustedsec/trevorc2.git /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/trevorc2/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/merlin/.git ]; then
     echo -e "Updating Merlin."
     cd /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/merlin/; git pull
     echo
else
  echo -e "Downloading Merlin."
  git clone https://github.com/Ne0nd0g/merlin.git /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/merlin/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/Covenant/.git ]; then
     echo -e "Updating Covenant."
     cd /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/Covenant/; git pull
     echo
else
  echo -e "Downloading Covenant."
  git clone https://github.com/cobbr/Covenant.git /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/Covenant/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/QuasarRAT/.git ]; then
     echo -e "Updating Quasar."
     cd /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/QuasarRAT/; git pull
     echo
else
  echo -e "Downloading Quasar."
  git clone https://github.com/quasar/QuasarRAT.git /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/QuasarRAT/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/FactionC2/.git ]; then
     echo -e "Updating FactionC2."
     cd /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/FactionC2/; git pull
     echo
else
  echo -e "Downloading FactionC2."
  git clone https://github.com/FactionC2.git /opt/RedTeam-Toolkit/"Command and Control"/"Remote Access"/FactionC2/
  echo
fi

#Staging
if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/RAI/.git ]; then
     echo -e "Updating Rapid Attack Infrastructure (RAI)."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/RAI/; git pull
     echo
else
  echo -e "Downloading Rapid Attack Infrastructure (RAI)."
  git clone https://github.com/obscuritylabs/RAI.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/RAI/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/Red-Baron/.git ]; then
     echo -e "Updating Red Baron."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/Red-Baron/; git pull
     echo
else
  echo -e "Downloading Red Baron."
  git clone https://github.com/byt3bl33d3r/Red-Baron.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/Red-Baron/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/EvilURL/.git ]; then
     echo -e "Updating EvilURL."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/EvilURL/; git pull
     echo
else
  echo -e "Downloading EvilURL."
  git clone https://github.com/UndeadSec/EvilURL /opt/RedTeam-Toolkit/"Command and Control"/Staging/EvilURL/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/domainhunter/.git ]; then
     echo -e "Updating Domain Hunter."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/domainhunter/; git pull
     echo
else
  echo -e "Downloading Domain Hunter."
  git clone https://github.com/threatexpress/domainhunter.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/domainhunter/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/PowerDNS/.git ]; then
     echo -e "Updating PowerDNS."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/PowerDNS/; git pull
     echo
else
  echo -e "Downloading PowerDNS."
  git clone https://github.com/mdsecactivebreach/PowerDNS.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/PowerDNS/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/Chameleon/.git ]; then
     echo -e "Updating Chameleon."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/Chameleon/; git pull
     echo
else
  echo -e "Downloading Chameleon."
  git clone https://github.com/mdsecactivebreach/Chameleon.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/Chameleon/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/Chameleon/.git ]; then
     echo -e "Updating Chameleon."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/Chameleon/; git pull
     echo
else
  echo -e "Downloading Chameleon."
  git clone https://github.com/mdsecactivebreach/Chameleon.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/Chameleon/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/CatMyPhish/.git ]; then
     echo -e "Updating CatMyPhish."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/CatMyPhish/; git pull
     echo
else
  echo -e "Downloading CatMyPhish."
  git clone https://github.com/Mr-Un1k0d3r/CatMyPhish.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/CatMyPhish/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/CatMyPhish/.git ]; then
     echo -e "Updating CatMyPhish."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/CatMyPhish/; git pull
     echo
else
  echo -e "Downloading CatMyPhish."
  git clone https://github.com/Mr-Un1k0d3r/CatMyPhish.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/CatMyPhish/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/Malleable-C2-Profiles/.git ]; then
     echo -e "Updating Malleable C2."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/Malleable-C2-Profiles/; git pull
     echo
else
  echo -e "Downloading Malleable C2."
  git clone https://github.com/rsmudge/Malleable-C2-Profiles.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/Malleable-C2-Profiles/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/Malleable-C2-Profiles/.git ]; then
     echo -e "Updating Malleable-C2-Randomizer."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/Malleable-C2-Randomizer/; git pull
     echo
else
  echo -e "Downloading Malleable-C2-Randomizer."
  git clone https://github.com/bluscreenofjeff/Malleable-C2-Randomizer.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/Malleable-C2-Randomizer/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/FindFrontableDomains/.git ]; then
     echo -e "Updating FindFrontableDomains."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/FindFrontableDomains/; git pull
     echo
else
  echo -e "Downloading FindFrontableDomains."
  git clone https://github.com/rvrsh3ll/FindFrontableDomains.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/FindFrontableDomains/
  echo
  /usr/bin/bash /opt/RedTeam-Toolkit/"Command and Control"/Staging/FindFrontableDomains/setup.sh
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/Postfix-Server-Setup/.git ]; then
     echo -e "Updating Postfix-Server-Setup."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/Postfix-Server-Setup/; git pull
     echo
else
  echo -e "Downloading Postfix-Server-Setup."
  git clone https://github.com/n0pe-sled/Postfix-Server-Setup.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/Postfix-Server-Setup/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/DomainFrontingLists/.git ]; then
     echo -e "Updating DomainFrontingLists."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/DomainFrontingLists/; git pull
     echo
else
  echo -e "Downloading DomainFrontingLists."
  git clone https://github.com/vysecurity/DomainFrontingLists.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/DomainFrontingLists/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/Apache2-Mod-Rewrite-Setup/.git ]; then
     echo -e "Updating Apache2-Mod-Rewrite-Setup."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/Apache2-Mod-Rewrite-Setup/; git pull
     echo
else
  echo -e "Downloading Apache2-Mod-Rewrite-Setup."
  git clone https://github.com/n0pe-sled/Apache2-Mod-Rewrite-Setup.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/Apache2-Mod-Rewrite-Setup/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/mod_rewrite/.htaccess ]; then
     echo -e "Script is there; skipping."
else
  echo -e "Downloading Apache2-Mod-Rewrite-Setup."
  git clone https://github.com/n0pe-sled/Apache2-Mod-Rewrite-Setup.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/Apache2-Mod-Rewrite-Setup/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/external_c2 framework/.git ]; then
     echo -e "Updating external_c2_framework."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/external_c2_framework/; git pull
     echo
else
  echo -e "Downloading external_c2_framework."
  git clone https://github.com/Und3rf10w/external_c2_framework.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/external_c2_framework/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/external_c2 framework/.git ]; then
     echo -e "Updating ExternalC2."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/ExternalC2/; git pull
     echo
else
  echo -e "Downloading ExternalC2."
  git clone https://github.com/ryhanson/ExternalC2.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/ExternalC2/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/cs2modrewrite/.git ]; then
     echo -e "Updating cs2modrewrite."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/cs2modrewrite/; git pull
     echo
else
  echo -e "Downloading cs2modrewrite."
  git clone https://github.com/threatexpress/cs2modrewrite.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/cs2modrewrite/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/cs2modrewrite/.git ]; then
     echo -e "Updating cs2modrewrite."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/cs2modrewrite/; git pull
     echo
else
  echo -e "Downloading cs2modrewrite."
  git clone https://github.com/threatexpress/cs2modrewrite.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/cs2modrewrite/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/e2modrewrite/.git ]; then
     echo -e "Updating cs2modrewrite."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/e2modrewrite/; git pull
     echo
else
  echo -e "Downloading cs2modrewrite."
  git clone https://github.com/infosecn1nja/e2modrewrite.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/e2modrewrite/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/redi/.git ]; then
     echo -e "Updating redi."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/redi/; git pull
     echo
else
  echo -e "Downloading redi."
  git clone https://github.com/taherio/redi.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/redi/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/Google-Domain-fronting/.git ]; then
     echo -e "Updating Google-Domain-fronting."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/Google-Domain-fronting/; git pull
     echo
else
  echo -e "Downloading Google-Domain-fronting."
  git clone https://github.com/redteam-cyberark/Google-Domain-fronting.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/Google-Domain-fronting/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/Google-Domain-fronting/.git ]; then
     echo -e "Updating Google-Domain-fronting."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/Google-Domain-fronting/; git pull
     echo
else
  echo -e "Downloading Google-Domain-fronting."
  git clone https://github.com/redteam-cyberark/Google-Domain-fronting.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/Google-Domain-fronting/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/DomainFrontDiscover/.git ]; then
     echo -e "Updating DomainFrontDiscover."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/DomainFrontDiscover/; git pull
     echo
else
  echo -e "Downloading DomainFrontDiscover."
  git clone https://github.com/redteam-cyberark/DomainFrontDiscover.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/DomainFrontDiscover/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/RedTeam-Automation/.git ]; then
     echo -e "Updating Automated Empire Infrastructure."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/RedTeam-Automation/; git pull
     echo
else
  echo -e "Downloading Automated Empire Infrastructure."
  git clone https://github.com/bneg/RedTeam-Automation.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/RedTeam-Automation/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/meek/.git ]; then
     echo -e "Updating meek."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/meek/; git pull
     echo
else
  echo -e "Downloading meek."
  git clone https://github.com/arlolra/meek.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/meek/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/meek/.git ]; then
     echo -e "Updating meek."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/meek/; git pull
     echo
else
  echo -e "Downloading meek."
  git clone https://github.com/arlolra/meek.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/meek/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/CobaltStrike-ToolKit/.git ]; then
     echo -e "Updating CobaltStrike-ToolKit."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/CobaltStrike-ToolKit/; git pull
     echo
else
  echo -e "Downloading CobaltStrike-ToolKit."
  git clone https://github.com/killswitch-GUI/CobaltStrike-ToolKit.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/CobaltStrike-ToolKit/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/mkhtaccess_red/.git ]; then
     echo -e "Updating mkhtaccess_red."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/mkhtaccess_red/; git pull
     echo
else
  echo -e "Downloading mkhtaccess_red."
  git clone https://github.com/violentlydave/mkhtaccess_red.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/mkhtaccess_red/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/RedFile/.git ]; then
     echo -e "Updating RedFile."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/RedFile/; git pull
     echo
else
  echo -e "Downloading RedFile."
  git clone https://github.com/outflanknl/RedFile.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/RedFile/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/keyserver/.git ]; then
     echo -e "Updating keyserver."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/keyserver/; git pull
     echo
else
  echo -e "Downloading keyserver."
  git clone https://github.com/leoloobeek/keyserver.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/keyserver/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/ExternalC2/.git ]; then
     echo -e "Updating ExternalC2."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/ExternalC2/; git pull
     echo
else
  echo -e "Downloading ExternalC2."
  git clone https://github.com/ryhanson/ExternalC2.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/ExternalC2/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/DoHC2/.git ]; then
     echo -e "Updating DoHC2."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/DoHC2/; git pull
     echo
else
  echo -e "Downloading DoHC2."
  git clone https://github.com/SpiderLabs/DoHC2.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/DoHC2/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/cat-sites/.git ]; then
     echo -e "Updating cat-sites."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/cat-sites/; git pull
     echo
else
  echo -e "Downloading cat-sites."
  git clone https://github.com/audrummer15/cat-sites.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/cat-sites/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/now-you-see-me/.git ]; then
     echo -e "Updating now-you-see-me."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/now-you-see-me/; git pull
     echo
else
  echo -e "Downloading now-you-see-me."
  git clone https://github.com/audrummer15/now-you-see-me.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/now-you-see-me/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Command and Control"/Staging/CobaltStrike-ToolKit/.git ]; then
     echo -e "Updating CobaltStrike-ToolKit."
     cd /opt/RedTeam-Toolkit/"Command and Control"/Staging/CobaltStrike-ToolKit/; git pull
     echo
else
  echo -e "Downloading CobaltStrike-ToolKit ."
  git clone https://github.com/killswitch-GUI/CobaltStrike-ToolKit.git /opt/RedTeam-Toolkit/"Command and Control"/Staging/CobaltStrike-ToolKit/
  echo
fi

#Lateral Movement Scripts

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/CrackMapExec/.git ]; then
     echo -e "Updating CrackMapExec."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/CrackMapExec/; git pull
     echo
else
  echo -e "Downloading CrackMapExec."
  git clone https://github.com/byt3bl33d3r/CrackMapExec.git /opt/RedTeam-Toolkit/"Lateral Movement"/CrackMapExec/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/PowerLessShell/.git ]; then
     echo -e "Updating PowerLessShell."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/PowerLessShell/; git pull
     echo
else
  echo -e "Downloading PowerLessShell."
  git clone https://github.com/Mr-Un1k0d3r/PowerLessShell.git /opt/RedTeam-Toolkit/"Lateral Movement"/PowerLessShell/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/GoFetch/.git ]; then
     echo -e "Updating GoFetch."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/GoFetch/; git pull
     echo
else
  echo -e "Downloading GoFetch."
  git clone https://github.com/GoFetchAD/GoFetch.git /opt/RedTeam-Toolkit/"Lateral Movement"/GoFetch/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/ANGRYPUPPY/.git ]; then
     echo -e "Updating ANGRYPUPPY."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/ANGRYPUPPY/; git pull
     echo
else
  echo -e "Downloading ANGRYPUPPY."
  git clone https://github.com/vysecurity/ANGRYPUPPY.git /opt/RedTeam-Toolkit/"Lateral Movement"/ANGRYPUPPY/
  echo
  echo -e "Installing ANGRYPUPPY."
  /usr/bin/bash /opt/RedTeam-Toolkit/"Lateral Movement"/ANGRYPUPPY/Install.sh
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/DeathStar/.git ]; then
     echo -e "Updating DeathStar."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/DeathStar/; git pull
     echo
else
  echo -e "Downloading DeathStar."
  git clone https://github.com/byt3bl33d3r/DeathStar.git /opt/RedTeam-Toolkit/"Lateral Movement"/DeathStar/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/SharpHound/.git ]; then
     echo -e "Updating SharpHound."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/SharpHound/; git pull
     echo
else
  echo -e "Downloading SharpHound."
  git clone https://github.com/BloodHoundAD/SharpHound.git /opt/RedTeam-Toolkit/"Lateral Movement"/SharpHound/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/SharpHound/.git ]; then
     echo -e "Updating SharpHound."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/SharpHound/; git pull
     echo
else
  echo -e "Downloading SharpHound."
  git clone https://github.com/BloodHoundAD/SharpHound.git /opt/RedTeam-Toolkit/"Lateral Movement"/SharpHound/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/BloodHound.py/.git ]; then
     echo -e "Updating BloodHound.py."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/BloodHound.py/; git pull
     echo
else
  echo -e "Downloading BloodHound.py."
  git clone https://github.com/fox-it/BloodHound.py.git /opt/RedTeam-Toolkit/"Lateral Movement"/BloodHound.py/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/Responder/.git ]; then
     echo -e "Updating Responder."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/Responder/; git pull
     echo
else
  echo -e "Downloading Responder."
  git clone https://github.com/SpiderLabs/Responder.git /opt/RedTeam-Toolkit/"Lateral Movement"/Responder/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/SessionGopher/.git ]; then
     echo -e "Updating SessionGopher."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/SessionGopher/; git pull
     echo
else
  echo -e "Downloading SessionGopher."
  git clone https://github.com/Arvanaghi/SessionGopher.git /opt/RedTeam-Toolkit/"Lateral Movement"/SessionGopher/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/PowerSploit/.git ]; then
     echo -e "Updating PowerSploit."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/PowerSploit/; git pull
     echo
else
  echo -e "Downloading PowerSploit."
  git clone https://github.com/PowerShellMafia/PowerSploit.git /opt/RedTeam-Toolkit/"Lateral Movement"/PowerSploit/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/nishang/.git ]; then
     echo -e "Updating nishang."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/nishang/; git pull
     echo
else
  echo -e "Downloading nishang."
  git clone https://github.com/samratashok/nishang.git /opt/RedTeam-Toolkit/"Lateral Movement"/nishang/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/Inveigh/.git ]; then
     echo -e "Updating Inveigh."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/Inveigh/; git pull
     echo
else
  echo -e "Downloading Inveigh."
  git clone https://github.com/Kevin-Robertson/Inveigh.git /opt/RedTeam-Toolkit/"Lateral Movement"/Inveigh/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/Inveigh/.git ]; then
     echo -e "Updating Inveigh."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/Inveigh/; git pull
     echo
else
  echo -e "Downloading Inveigh."
  git clone https://github.com/Kevin-Robertson/Inveigh.git /opt/RedTeam-Toolkit/"Lateral Movement"/Inveigh/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/PowerUpSQL/.git ]; then
     echo -e "Updating PowerUpSQL."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/PowerUpSQL/; git pull
     echo
else
  echo -e "Downloading PowerUpSQL."
  git clone https://github.com/NetSPI/PowerUpSQL.git /opt/RedTeam-Toolkit/"Lateral Movement"/PowerUpSQL/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/MailSniper/.git ]; then
     echo -e "Updating MailSniper."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/MailSniper/; git pull
     echo
else
  echo -e "Downloading MailSniper."
  git clone https://github.com/dafthack/MailSniper.git /opt/RedTeam-Toolkit/"Lateral Movement"/MailSniper/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/WMIOps/.git ]; then
     echo -e "Updating WMIOps."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/WMIOps/; git pull
     echo
else
  echo -e "Downloading WMIOps."
  git clone https://github.com/FortyNorthSecurity/WMIOps.git /opt/RedTeam-Toolkit/"Lateral Movement"/WMIOps/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/mimikatz/.git ]; then
     echo -e "Updating mimikatz."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/mimikatz/; git pull
     echo
else
  echo -e "Downloading mimikatz."
  git clone https://github.com/gentilkiwi/mimikatz.git /opt/RedTeam-Toolkit/"Lateral Movement"/mimikatz/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/LaZagne/.git ]; then
     echo -e "Updating LaZagne."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/LaZagne/; git pull
     echo
else
  echo -e "Downloading LaZagne."
  git clone https://github.com/AlessandroZ/LaZagne.git /opt/RedTeam-Toolkit/"Lateral Movement"/LaZagne/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/mimipenguin/.git ]; then
     echo -e "Updating mimipenguin."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/mimipenguin/; git pull
     echo
else
  echo -e "Downloading mimipenguin."
  git clone https://github.com/huntergregal/mimipenguin.git /opt/RedTeam-Toolkit/"Lateral Movement"/mimipenguin/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/PSAttack/.git ]; then
     echo -e "Updating PSAttack."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/PSAttack/; git pull
     echo
else
  echo -e "Downloading PSAttack."
  git clone https://github.com/jaredhaight/PSAttack.git /opt/RedTeam-Toolkit/"Lateral Movement"/PSAttack/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/KeeThief/.git ]; then
     echo -e "Updating KeeThief."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/KeeThief/; git pull
     echo
else
  echo -e "Downloading KeeThief."
  git clone https://github.com/HarmJ0y/KeeThief.git /opt/RedTeam-Toolkit/"Lateral Movement"/KeeThief/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/PSAttack/.git ]; then
     echo -e "Updating PSAttack."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/PSAttack/; git pull
     echo
else
  echo -e "Downloading PSAttack."
  git clone https://github.com/jaredhaight/PSAttack.git /opt/RedTeam-Toolkit/"Lateral Movement"/PSAttack/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/Internal-Monologue/.git ]; then
     echo -e "Updating Internal-Monologue."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/PSAttack/; git pull
     echo
else
  echo -e "Downloading Internal-Monologue."
  git clone https://github.com/eladshamir/Internal-Monologue.git /opt/RedTeam-Toolkit/"Lateral Movement"/Internal-Monologue/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/impacket/.git ]; then
     echo -e "Updating Impacket."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/impacket/; git pull
     echo
else
  echo -e "Downloading Impacket."
  git clone https://github.com/SecureAuthCorp/impacket.git /opt/RedTeam-Toolkit/"Lateral Movement"/impacket/
  echo
  echo -e "Running Setup."
  /usr/bin/python /opt/RedTeam-Toolkit/"Lateral Movement"/impacket/setup.py install
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/icebreaker/.git ]; then
     echo -e "Updating icebreaker."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/icebreaker/; git pull
     echo
else
  echo -e "Downloading icebreaker."
  git clone https://github.com/DanMcInerney/icebreaker.git /opt/RedTeam-Toolkit/"Lateral Movement"/icebreaker/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/LOLBAS/.git ]; then
     echo -e "Updating Living Off The Land Binaries and Scripts (and now also Libraries)."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/LOLBAS/; git pull
     echo
else
  echo -e "Downloading Living Off The Land Binaries and Scripts (and now also Libraries)."
  git clone https://github.com/LOLBAS-Project/LOLBAS.git /opt/RedTeam-Toolkit/"Lateral Movement"/LOLBAS/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/WSUSpendu/.git ]; then
     echo -e "Updating WSUSpendu."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/WSUSpendu/; git pull
     echo
else
  echo -e "Downloading WSUSpendu."
  git clone https://github.com/AlsidOfficial/WSUSpendu.git /opt/RedTeam-Toolkit/"Lateral Movement"/WSUSpendu/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/evilgrade/.git ]; then
     echo -e "Updating evilgrade."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/evilgrade/; git pull
     echo
else
  echo -e "Downloading evilgrade."
  git clone https://github.com/infobyte/evilgrade.git /opt/RedTeam-Toolkit/"Lateral Movement"/evilgrade/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/NetRipper/.git ]; then
     echo -e "Updating NetRipper."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/NetRipper/; git pull
     echo
else
  echo -e "Downloading NetRipper."
  git clone https://github.com/NytroRST/NetRipper.git /opt/RedTeam-Toolkit/"Lateral Movement"/NetRipper/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/LethalHTA/.git ]; then
     echo -e "Updating LethalHTA."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/LethalHTA/; git pull
     echo
else
  echo -e "Downloading LethalHTA."
  git clone https://github.com/codewhitesec/LethalHTA.git /opt/RedTeam-Toolkit/"Lateral Movement"/LethalHTA/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/Invoke-PowerThIEf/.git ]; then
     echo -e "Updating Invoke-PowerThIEf."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/Invoke-PowerThIEf/; git pull
     echo
else
  echo -e "Downloading Invoke-PowerThIEf."
  git clone https://github.com/nettitude/Invoke-PowerThIEf.git /opt/RedTeam-Toolkit/"Lateral Movement"/Invoke-PowerThIEf/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/redsnarf/.git ]; then
     echo -e "Updating redsnarf."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/redsnarf/; git pull
     echo
else
  echo -e "Downloading redsnarf."
  git clone https://github.com/nccgroup/redsnarf.git /opt/RedTeam-Toolkit/"Lateral Movement"/redsnarf/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Lateral Movement"/HoneypotBuster/.git ]; then
     echo -e "Updating HoneypotBuster."
     cd /opt/RedTeam-Toolkit/"Lateral Movement"/HoneypotBuster/; git pull
     echo
else
  echo -e "Downloading HoneypotBuster."
  git clone https://github.com/JavelinNetworks/HoneypotBuster.git /opt/RedTeam-Toolkit/"Lateral Movement"/HoneypotBuster/
  echo
fi

#Establish Foothold

if [ -d /opt/RedTeam-Toolkit/"Establish Foothold"/Tunna/.git ]; then
     echo -e "Updating Tunna."
     cd /opt/RedTeam-Toolkit/"Establish Foothold"/Tunna/; git pull
     echo
else
  echo -e "Downloading Tunna."
  git clone https://github.com/SECFORCE/Tunna.git /opt/RedTeam-Toolkit/"Establish Foothold"/Tunna/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Establish Foothold"/reGeorg/.git ]; then
     echo -e "Updating reGeorg."
     cd /opt/RedTeam-Toolkit/"Establish Foothold"/reGeorg/; git pull
     echo
else
  echo -e "Downloading reGeorg."
  git clone https://github.com/sensepost/reGeorg.git /opt/RedTeam-Toolkit/"Establish Foothold"/reGeorg/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Establish Foothold"/Blade/.git ]; then
     echo -e "Updating Blade."
     cd /opt/RedTeam-Toolkit/"Establish Foothold"/Blade/; git pull
     echo
else
  echo -e "Downloading Blade."
  git clone https://github.com/wonderqs/Blade.git /opt/RedTeam-Toolkit/"Establish Foothold"/Blade/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Establish Foothold"/tinyshell/.git ]; then
     echo -e "Updating tinyshell."
     cd /opt/RedTeam-Toolkit/"Establish Foothold"/tinyshell/; git pull
     echo
else
  echo -e "Downloading tinyshell."
  git clone https://github.com/threatexpress/tinyshell.git /opt/RedTeam-Toolkit/"Establish Foothold"/tinyshell/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Establish Foothold"/PowerLurk/.git ]; then
     echo -e "Updating PowerLurk."
     cd /opt/RedTeam-Toolkit/"Establish Foothold"/PowerLurk/; git pull
     echo
else
  echo -e "Downloading PowerLurk."
  git clone https://github.com/Sw4mpf0x/PowerLurk.git /opt/RedTeam-Toolkit/"Establish Foothold"/PowerLurk/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Establish Foothold"/DAMP/.git ]; then
     echo -e "Updating DAMP."
     cd /opt/RedTeam-Toolkit/"Establish Foothold"/DAMP/; git pull
     echo
else
  echo -e "Downloading DAMP."
  git clone https://github.com/HarmJ0y/DAMP.git /opt/RedTeam-Toolkit/"Establish Foothold"/DAMP/
  echo
fi

#Escalate Privileges

#Folder Path - "Escalate Privileges"/{"Domain Escalation","Local Escalation"}


if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/Invoke-ACLPwn/.git ]; then
     echo -e "Updating Invoke-ACLPwn."
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/Invoke-ACLPwn/; git pull
     echo
else
  echo -e "Downloading Invoke-ACLPwn."
  git clone https://github.com/fox-it/Invoke-ACLPwn.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/Invoke-ACLPwn/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/BloodHound/.git ]; then
     echo -e "Updating BloodHound."
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/BloodHound/; git pull
     echo
else
  echo -e "Downloading BloodHound."
  git clone https://github.com/BloodHoundAD/BloodHound.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/BloodHound/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/pykek/.git ]; then
     echo -e "Updating pykek."
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/pykek/; git pull
     echo
else
  echo -e "Downloading pykek."
  git clone https://github.com/SecWiki/windows-kernel-exploits/tree/master/MS14-068/pykek /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/pykek/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/Grouper/.git ]; then
     echo -e "Updating Grouper."
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/Grouper/; git pull
     echo
else
  echo -e "Downloading Grouper."
  git clone https://github.com/l0ss/Grouper.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/Grouper/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/ADRecon/.git ]; then
     echo -e "Updating ADRecon."
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/ADRecon/; git pull
     echo
else
  echo -e "Downloading ADRecon."
  git clone https://github.com/sense-of-security/ADRecon.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/ADRecon/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/ADACLScanner/.git ]; then
     echo -e "Updating ADACLScanner."
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/ADACLScanner/; git pull
     echo
else
  echo -e "Downloading ADACLScanner."
  git clone https://github.com/canix1/ADACLScanner.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/ADACLScanner/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/ACLight/.git ]; then
     echo -e "Updating ACLight."
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/ACLight/; git pull
     echo
else
  echo -e "Downloading ACLight."
  git clone https://github.com/cyberark/ACLight.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/ACLight/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/LAPSToolkit/.git ]; then
     echo -e "Updating LAPSToolkit."
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/LAPSToolkit/; git pull
     echo
else
  echo -e "Downloading LAPSToolkit."
  git clone https://github.com/leoloobeek/LAPSToolkit.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/LAPSToolkit/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/RiskySPN/.git ]; then
     echo -e "Updating RiskySPN."
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/RiskySPN/; git pull
     echo
else
  echo -e "Downloading RiskySPN."
  git clone https://github.com/cyberark/RiskySPN.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/RiskySPN/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/Mystique/.git ]; then
     echo -e "Updating Mystique."
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/Mystique/; git pull
     echo
else
  echo -e "Downloading Mystique."
  git clone https://github.com/machosec/Mystique.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/Mystique/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/Rubeus/.git ]; then
     echo -e "Updating Rubeus."
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/Rubeus/; git pull
     echo
else
  echo -e "Downloading Rubeus."
  git clone https://github.com/GhostPack/Rubeus.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/Rubeus/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/kekeo/.git ]; then
     echo -e "Updating kekeo."
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/kekeo/; git pull
     echo
else
  echo -e "Downloading kekeo."
  git clone https://github.com/gentilkiwi/kekeo.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Domain Escalation"/kekeo/
  echo
fi

#Escalate Privileges
#Folder Path - "Escalate Privileges"/{"Domain Escalation","Local Escalation"}

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/UACME/.git ]; then
     echo -e "Updating UACME."
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/UACME/; git pull
     echo
else
  echo -e "Downloading UACME."
  git clone https://github.com/hfiref0x/UACME.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/UACME/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/windows-kernel-exploits/.git ]; then
     echo -e "Updating windows-kernel-exploits."
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/windows-kernel-exploits/; git pull
     echo
else
  echo -e "Downloading windows-kernel-exploits."
  git clone https://github.com/SecWiki/windows-kernel-exploits.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/windows-kernel-exploits/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/ElevateKit/.git ]; then
     echo -e "Updating ElevateKit."
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/ElevateKit/; git pull
     echo
else
  echo -e "Downloading ElevateKit."
  git clone https://github.com/rsmudge/ElevateKit.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/ElevateKit/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/Sherlock/.git ]; then
     echo -e "Updating Sherlock."
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/Sherlock/; git pull
     echo
else
  echo -e "Downloading Sherlock."
  git clone https://github.com/rasta-mouse/Sherlock.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/Sherlock/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/Tokenvator/.git ]; then
     echo -e "Updating Tokenvator."
     cd /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/Tokenvator/; git pull
     echo
else
  echo -e "Downloading Tokenvator."
  git clone https://github.com/0xbadjuju/Tokenvator.git /opt/RedTeam-Toolkit/"Escalate Privileges"/"Local Escalation"/Tokenvator/
  echo
fi

#Data Exfiltration

if [ -d /opt/RedTeam-Toolkit/"Data Exfiltration"/Cloakify/.git ]; then
     echo -e "Updating Cloakify."
     cd /opt/RedTeam-Toolkit/"Data Exfiltration"/Cloakify/; git pull
     echo
else
  echo -e "Downloading Cloakify."
  git clone https://github.com/TryCatchHCF/Cloakify.git /opt/RedTeam-Toolkit/"Data Exfiltration"/Cloakify/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Data Exfiltration"/DET/.git ]; then
     echo -e "Updating DET."
     cd /opt/RedTeam-Toolkit/"Data Exfiltration"/DET/; git pull
     echo
else
  echo -e "Downloading DET."
  git clone https://github.com/sensepost/DET.git /opt/RedTeam-Toolkit/"Data Exfiltration"/DET/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Data Exfiltration"/DNSExfiltrator/.git ]; then
     echo -e "Updating DNSExfiltrator."
     cd /opt/RedTeam-Toolkit/"Data Exfiltration"/DNSExfiltrator/; git pull
     echo
else
  echo -e "Downloading DNSExfiltrator."
  git clone https://github.com/Arno0x/DNSExfiltrator.git /opt/RedTeam-Toolkit/"Data Exfiltration"/DNSExfiltrator/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Data Exfiltration"/PyExfil/.git ]; then
     echo -e "Updating PyExfil."
     cd /opt/RedTeam-Toolkit/"Data PyExfil"/PyExfil/; git pull
     echo
else
  echo -e "Downloading PyExfil."
  git clone https://github.com/ytisf/PyExfil.git /opt/RedTeam-Toolkit/"Data Exfiltration"/PyExfil/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Data Exfiltration"/Egress-Assess/.git ]; then
     echo -e "Updating Egress-Assess."
     cd /opt/RedTeam-Toolkit/"Data Exfiltration"/Egress-Assess/; git pull
     echo
else
  echo -e "Downloading Egress-Assess."
  git clone https://github.com/FortyNorthSecurity/Egress-Assess.git /opt/RedTeam-Toolkit/"Data Exfiltration"/Egress-Assess/
  echo
fi

if [ -d /opt/RedTeam-Toolkit/"Data Exfiltration"/Powershell-RAT/.git ]; then
     echo -e "Updating Powershell-RAT."
     cd /opt/RedTeam-Toolkit/"Data Exfiltration"/Powershell-RAT/; git pull
     echo
else
  echo -e "Downloading Powershell-RAT."
  git clone https://github.com/Viralmaniar/Powershell-RAT.git /opt/RedTeam-Toolkit/"Data Exfiltration"/Powershell-RAT/
  echo
fi
