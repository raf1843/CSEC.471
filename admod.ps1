if (-not (Test-Path '.\ADModule.zip') ) {
  iwr -uri "https://github.com/samratashok/admodule/archive/master.zip" -outfile "ADModule.zip"
  Expand-Archive .\ADModule.zip
}
cd .\ADModule\ADModule-master
Import-Module .\Microsoft.ActiveDirectory.Management.dll
Import-Module .\ActiveDirectory\ActiveDirectory.psd1
cd ..\..
