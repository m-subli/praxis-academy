    Get-WmiObject -Class Win32_OperatingSystem –ComputerName localhost |
        Select-Object -Property CSName,@{n=”Terakhir Boot”;
    e={[Management.ManagementDateTimeConverter]::ToDateTime($_.LastBootUpTime)}}