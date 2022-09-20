param($network,$server)
for ($x = 0; $x -lt 255; $x++)
{

$ip = "$network" + "." + "$x"

$result = Resolve-DnsName -DnsOnly $ip -Server $server -ErrorAction Ignore | Select -Property NameHost, Name
echo $result

}
