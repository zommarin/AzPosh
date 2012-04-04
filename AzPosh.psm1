#
# PowerShell module with various "useful stuff"
#
# This is stuff that does not fit in any other more specific module
#

$ScriptDir = $MyInvocation.

$CommandFiles = ls $ScriptDir -Recurse -Include *.ps1

foreach ($Script in $CommandFiles) {
	. $Script
}

$CmdLetNames = $CommandFiles | % { $_.Name -replace ".ps1$","" }

Export-ModuleMember $CmdLetNames
