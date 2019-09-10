#------------------------------------------------------------------------------
#     Baudlicious' Script for Setting up a Preferred Windows Environment      #
#------------------------------------------------------------------------------

$forensics_install = Read-Host -Prompt "> Do you require forensic tools? (Y | N)"
$extra_install = Read-Host -Prompt "> Do you want the extra utilities? (Y | N)"

#------------------------------------------------------------------------------
# > Environment
#------------------------------------------------------------------------------
$github = "C:\Github"
$tools = "C:\Tools"

# TODO: Create a C:\Tools folder
# TODO: Create a C:\Github folder
# TODO: Install Scoop
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
# TODO: Install aria2
scoop install aria2
# TODO: Install FireFox (this is after Aria2, Scoop will use Aria2 for dl)
scoop install Firefox
# TODO: Scoop bucket add extras
scoop bucket add extras

#------------------------------------------------------------------------------
# > Utilities
#------------------------------------------------------------------------------
# 100% Always utilities
scoop install 7zip NerdFonts Notepadplusplus nvim git openvpn
# TODO: Setup NVIM with Windows-Environment 

# Bonus Utilities
scoop install wireshark wxhexeditor grep sed less touch exiftool sysinternals

#------------------------------------------------------------------------------
# > Development
#------------------------------------------------------------------------------
scoop install python3 asciidoctor go 
# TODO: Set up PowerShell aliases

#------------------------------------------------------------------------------
# > Forensics 
#------------------------------------------------------------------------------
# Adds NirSoft bucket to allow for downloading NirSoft Tools
scoop bucket add extras

