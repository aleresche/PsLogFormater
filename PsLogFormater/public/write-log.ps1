function write-Log() {
    <#
    .SYNOPSIS
    Name: write-log
    output formater for logging information in azure automation
    powershell runbook
    .DESCRIPTION
    this function format and output following DW naming convention
    it will output them on the console by default it is meant to be used
    with Azure Powershell Runbook (not worklfow)
    .PARAMETER taskname (OPTIONAL)
    param to specifiy log file name  
    .PARAMETER Level (OPTIONAL)
    param to specifiy level of the log (INFO, ERRO, WARN)
    .PARAMETER Message (MANDATORY)
    content of the error (as detailed as possible)
    .EXAMPLE
    write-log -Message "Checking users"
    .EXAMPLE
    write-log -level ERRO -Message "unable to resolve www.example.com"
    .EXAMPLE
    write-log -taskname "MailboxMigration"  -level WARN -Message "Unable to verify SSL certificate validity"
    #>
        Param (
            [Parameter(Mandatory = $false)]  [string]$taskname,
            [Parameter(Mandatory = $false)]  [string]$level = "INFO",
            [Parameter(Mandatory = $true)]   [string]$Message
        )            
        if (!($taskname)) {
            $taskname = "pslogger"
        }
        $Line = "$Level - $Message"
        write-output $Line 
    }