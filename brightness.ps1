param([string]$dir)
$cur = (Get-WmiObject -Namespace root/WMI -Class WmiMonitorBrightness).CurrentBrightness
if ($dir -eq "down") { $new = [Math]::Max(0, $cur - 10) }
else { $new = [Math]::Min(100, $cur + 10) }
(Get-WmiObject -Namespace root/WMI -Class WmiMonitorBrightnessMethods).WmiSetBrightness(1, $new)
