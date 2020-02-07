function Do-SomethingWithParameter {

[CmdletBinding()]

    param (
        [parameter (Mandatory=$true)]     
        [string]$Message
    )    

    Process {
        write-output "I'm doing something really cool using the supplied parameter of: $Message"
    }
}