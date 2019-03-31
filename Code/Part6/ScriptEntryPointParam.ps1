Function Invoke-ApplicationInstall {

[CmdletBinding()]
    Param (        
        [Parameter(Mandatory=$true)]
        [ValidateSet("x64","x86")]
        [String]
        $Architecture,
        [Parameter(Mandatory=$true)]
        [ValidateNotNullorEmpty()]
        [String]
        $Text
    )    

    # This function does some clever deployment here...

}


#Script entry point with parameters
Invoke-ApplicationInstall -Architecture x64 -Text "Some important text"