$t = '[DllImport("user32.dll")] public static extern bool ShowWindow(int handle, int state);'
add-type -name win -member $t -namespace native
[native.win]::ShowWindow(([System.Diagnostics.Process]::GetCurrentProcess() | Get-Process).MainWindowHandle, 0)

while($true)
{

$a = Get-WmiObject -ns root/wmi -class wmiMonitorBrightNess
$a1 = $a.Currentbrightness

$b = Get-WmiObject -ns root/wmi -class batterystatus
$b1 = $b.poweronline

start-sleep 1

$b = Get-WmiObject -ns root/wmi -class batterystatus
$b2 = $b.poweronline

If ($b2 -ne $b1)
{
$c = Get-WmiObject -ns root/wmi -class wmiMonitorBrightNessMethods
$c.WmiSetBrightNess(0,$a1)
}

[GC]::Collect()

}