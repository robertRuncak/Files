Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Services\W32Time\TimeProviders\VMICTimeProvider -Name Enabled -Value 0
Restart-Service "Windows Time"

# check if domain controller is being used for time synchronization
# note: you don't want to see VMIC Time Synchronization Provider as the source
w32tm /query /source
w32tm /query /status
