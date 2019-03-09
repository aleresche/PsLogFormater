function write-header() {
    <#
    .SYNOPSIS
    Name: write-header
    script header output
    .DESCRIPTION
    this function format and output following DW naming convention
    for script header
    .PARAMETER title (MANDATORY)
    title of the script  
    .PARAMETER description (OPTIONAL)
    description of process
    .EXAMPLE
    write-header -title "Assign Licence"
    .EXAMPLE
    write-header -title "Prepare Mailbox Migration" -Description "prepare batch of users to migrate them"
    #>
        Param (
            [Parameter(Mandatory = $true)]  [string]$title,
            [Parameter(Mandatory = $false)] [string]$description
        )            
        write-output "======================================================="
        write-output $title
        write-output $description
        write-output "=======================================================" 
    }