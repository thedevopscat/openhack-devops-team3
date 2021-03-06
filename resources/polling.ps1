Param(
    [string] [Parameter(Mandatory = $true)] $Uri,
    [boolean] [Parameter(Mandatory = $false)] $displayUri
)

    while ($true) {
        $R = Invoke-WebRequest -URI $Uri
        $timestamp = Get-Date

        $output = ""

        if ($displayUri) {
            $output = $output = '{0} | {1} | {2}' -f ($timestamp, $R.StatusCode, $Uri)
        }
    else {
        $output = '{0} | {1}' -f ($timestamp, $R.StatusCode)
        Write-Host "All Good!"
        Exit 0
    }

    Write-Output $output
    Start-Sleep -Seconds 1
}