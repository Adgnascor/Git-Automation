$scriptPath = "./GetCurrentBranchAndPushToRemote.ps1"
$counter = 0;

while($counter -lt 3){
    &$scriptPath
    Start-Sleep -Seconds 1.5
    $counter +=1
    }
