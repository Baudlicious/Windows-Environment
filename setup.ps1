#------------------------------------------------------------------------------
#     Baudlicious' Script for Setting up a Preferred Windows Environment      #
#------------------------------------------------------------------------------
# A script for automating the installation to create a prefered Windows       #
# Environment.                                                                #
#------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# > Variables
#------------------------------------------------------------------------------

# !!!! Directories
$github = "C:\Github\"
$tools = "C:\Tools\"
$win_env_folder = "Windows-Environment\"

# !!!! Repos
$win_env_repo = "https:\\www.github.com\baudlicious\Windows-Environment"
$vim_ps_repo = ""

#------------------------------------------------------------------------------
# > Functions
#------------------------------------------------------------------------------

# check to see if dir exists, if not make it
function make_dir ($path) {
	Test-Path -PathType Container -Path $path
	if (pathtest $path -eq $False) {
		mkdir $path
	}
}

# check to see if github repo exists if not pull it 
function github_pull ($path, $git_repo) {
	Test-Path -PathType Container -Path $path
	if (pathtest $github$path -eq $False) {
		git clone $git_repo
	}
}

#------------------------------------------------------------------------------
# > User Prompts
#------------------------------------------------------------------------------
$personal_install = Read-Host -Prompt "> Do you want the extra utilities? (Y | N)"

#------------------------------------------------------------------------------
# > Environment
#------------------------------------------------------------------------------
# Create a C:\Tools folder
make_dir $tools

# Create a C:\Github folder
make_dir $github

# Install Scoop
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

#------------------------------------------------------------------------------
# > Github Repos
#------------------------------------------------------------------------------
github_pull $win_env_folder $win_env_repo

#------------------------------------------------------------------------------
# > Scoop Installs: Utilities
#------------------------------------------------------------------------------

# Install aria2
scoop install aria2

# Install FireFox 
scoop install Firefox brave

# Scoop bucket add extras and Fonts
scoop bucket add extras
scoop bucket add Nerd-Fonts


# !!! > 100% Always utilities
scoop install 7zip Notepadplusplus nvim git openvpn robocopy-gui

# TODO: Setup NVIM with Windows-Environment 

# !!! > Bonus Utilities
scoop install wireshark wxhexeditor grep sed less touch exiftool sysinternals

# !!! > Development
scoop install python3 asciidoctor go 
# TODO: Set up PowerShell aliases

# !!! > Forensics 
# Adds NirSoft bucket to allow for downloading NirSoft Tools
scoop bucket add extras

