param(
    [switch] $Silent,
    [string[]] $bcContainerHelperConfigFile = @()
)

. (Join-Path $PSScriptRoot "InitializeModule.ps1") `
    -Silent:$Silent `
    -bcContainerHelperConfigFile $bcContainerHelperConfigFile `
    -moduleName $MyInvocation.MyCommand.Name `
    -moduleDependencies @( 'BC.HelperFunctions' )

. (Join-Path $PSScriptRoot "HelperFunctions.ps1")

# AL-Go for GitHub functions
. (Join-Path $PSScriptRoot "AL-Go\New-ALGoAuthContext.ps1")
. (Join-Path $PSScriptRoot "AL-Go\New-ALGoAppSourceContext.ps1")
. (Join-Path $PSScriptRoot "AL-Go\New-ALGoStorageContext.ps1")
. (Join-Path $PSScriptRoot "AL-Go\New-ALGoNugetContext.ps1")
#. (Join-Path $PSScriptRoot "AL-Go\New-ALGoRepo.ps1")
#. (Join-Path $PSScriptRoot "AL-Go\New-ALGoRepoWizard.ps1")
