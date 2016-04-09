#
# Module manifest for module 'NZB-Powershell'
#
# Generated by: Ben Gould
#
# Generated on: 24/03/2016
#

@{

# Script module or binary module file associated with this manifest.
RootModule = "$psscriptroot\NZB-Powershell.psm1"

# Version number of this module.
ModuleVersion = '1.0.0.62'

# ID used to uniquely identify this module
GUID = 'fef43043-7d3b-4ad5-9a7c-6478aba9a102'

# Author of this module
Author = 'Ben Gould'

# Company or vendor of this module
CompanyName = 'Unknown'

# Copyright statement for this module
Copyright = '2016 Ben Gould. All rights reserved.'

# Description of the functionality provided by this module
# Description = ''

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '4.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
PowerShellHostVersion = '4.0'

# Minimum version of Microsoft .NET Framework required by this module
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
ProcessorArchitecture = 'None'

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
ScriptsToProcess = @("$PSScriptRoot\secrets.ps1")

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module
FunctionsToExport = '*'

# Cmdlets to export from this module
CmdletsToExport = '*'

# Variables to export from this module
VariablesToExport = 'documentDBLocation,PushAuthToken,geekURL,geekKey,sabUrl,sabKey,SonarrURL,SonarrKey,rootFolderPath,CouchURL,couchKey,CouchAPIKey,mailgunKey,mailDomain,mailRecipient1,mailRecipient2,mailRecipients,mailRecipientsForTest,TVDBIDKey'

# Aliases to export from this module
AliasesToExport = '*'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        # Tags = @()

        # A URL to the license for this module.
        # LicenseUri = ''

        # A URL to the main website for this project.
        # ProjectUri = ''

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        # ReleaseNotes = ''

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

