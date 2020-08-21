:: Disable Windows Defender
PowerShell Set-MpPreference -DisableAutoExclusions $true
PowerShell Set-MpPreference -DisablePrivacyMode $true
PowerShell Set-MpPreference -DisableBehaviorMonitoring $true
PowerShell Set-MpPreference -DisableIntrusionPreventionSystem $true
PowerShell Set-MpPreference -DisableIOAVProtection $true
PowerShell Set-MpPreference -DisableRealtimeMonitoring $true
PowerShell Set-MpPreference -DisableScriptScanning $true
PowerShell Set-MpPreference -DisableArchiveScanning $true
PowerShell Set-MpPreference -DisableCatchupFullScan $true
PowerShell Set-MpPreference -DisableCatchupQuickScan $true
PowerShell Set-MpPreference -DisableEmailScanning $true
PowerShell Set-MpPreference -DisableRemovableDriveScanning $true
PowerShell Set-MpPreference -DisableScanningMappedNetworkDrivesForFullScan $true
PowerShell Set-MpPreference -DisableScanningNetworkFiles $true
PowerShell Set-MpPreference -EnableNetworkProtection AuditMode -Force 
PowerShell Set-MpPreference -MAPSReporting Disabled 
PowerShell Set-MpPreference -SubmitSamplesConsent NeverSend

:: Take no Action when Threat is Detected
PowerShell Set-MpPreference -SevereThreatDefaultAction NoAction
PowerShell Set-MpPreference -HighThreatDefaultAction NoAction
PowerShell Set-MpPreference -ModerateThreatDefaultAction NoAction
PowerShell Set-MpPreference -LowThreatDefaultAction NoAction
PowerShell Set-MpPreference -UnknownThreatDefaultAction NoAction

:: Disable SmartScreen Filter
Powershell Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Explorer" -Name "SmartScreenEnabled" -Type String -Value "Off"
PowerShell Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\AppHost" -Name "EnableWebContentEvaluation" -Type DWord -Value 0
