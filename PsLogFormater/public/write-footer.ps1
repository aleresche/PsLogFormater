function write-footer() {
    <#
    .SYNOPSIS
    Name: write-footer
    script footer output
    .DESCRIPTION
    this function format and output following DW naming convention
    for script footer
    .EXAMPLE
    write-footer
    #>
    $Now=get-date
    write-output "======================================================="
    write-output "End of script $Now"
    write-output "=======================================================" 
}