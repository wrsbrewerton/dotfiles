$repos = @()
$repos = @(Get-ChildItem -Path "C:\Repos\Repos\github\worldremit" | ?{ $_.PSIsContainer })
ForEach ($repo in $repos)
{
	Set-Location -Path "C:\Repos\Repos\github\worldremit\$($repo.Name)"
	$repo.Name
	git checkout master | Out-Null
	git pull
}
Set-Location -Path "C:\Repos"