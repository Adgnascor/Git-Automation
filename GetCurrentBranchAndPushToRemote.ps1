function Get-CurrentBranch{
    [cmdletbinding()]
    param()
    process{
        [string]$result = &git branch --show-current
        if(-not $result){
            $result = $result.trim();
        }
        $result
    }
}



# Handle Mergeconlict in some way?
git add .

$timeStamp = Get-Date
git commit -m 'Automate commit: $timeStamp'

$currentBranch = Get-CurrentBranch
git push origin $currentBranch
