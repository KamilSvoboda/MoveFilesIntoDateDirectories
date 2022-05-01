[string] $thisScriptsDirectory = $PSScriptRoot
[string] $scriptFilePath = Join-Path -Path $thisScriptsDirectory -ChildPath 'MoveFilesIntoDateDirectories.ps1'

# Specify the parameters to call the cmdlet with.
[hashtable] $scriptParameters = @{
	SourceDirectoryPath        = 'C:\Temp\Photos'
	#SourceDirectoryDepthToSearch = 2
	TargetDirectoryPath        = 'C:\Temp\Photos'
	FileNameDateStringFormat   = 'yyyyMMdd'
	PrefixesToIgnore           = 'img_', 'img-', 'vid_', 'vid-'
	TargetDirectoriesDateScope = 'Day'	#Hour, Day, Month, or Year
	Force                      = $false
}

# Run the cmdlet using the specified parameters.
& $scriptFilePath @scriptParameters
