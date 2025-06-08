﻿##Install-WindowsFeature  -name dns  -includeManagementTools
Add-DnsServerPrimaryZone -Name "bpiph31.com" -ZoneFile "bpiph31.com.dns"
add-DnsServerResourceRecord -zonename bpiph31.com -A -name ns  -ipv4address 10.31.1.10
add-DnsServerResourceRecord -zonename bpiph31.com -Cname -name www -hostname ns.bpiph31.com
add-DnsServerResourceRecord -zonename bpiph31.com -Cname -name imap -hostname ns.bpiph31.com
add-DnsServerResourceRecord -zonename bpiph31.com -Cname -name pop -hostname ns.bpiph31.com
add-DnsServerResourceRecord -zonename bpiph31.com -Cname -name smtp -hostname ns.bpiph31.com
###FOR CISCO DEVICES DNS RECORDS;
add-DnsServerResourceRecord -zonename bpiph31.com -A -name cb  -ipv4address 10.31.1.4
add-DnsServerResourceRecord -zonename bpiph31.com -A -name ct  -ipv4address 10.31.1.2
add-DnsServerResourceRecord -zonename bpiph31.com -A -name cm  -ipv4address 10.31.100.8
add-DnsServerResourceRecord -zonename bpiph31.com -A -name ed  -ipv4address 10.31.31.1
add-DnsServerResourceRecord -zonename bpiph31.com -A -name p1  -ipv4address 10.31.100.101
add-DnsServerResourceRecord -zonename bpiph31.com -A -name p2  -ipv4address 10.31.100.102
add-DnsServerResourceRecord -zonename bpiph31.com -A -name c1  -ipv4address 10.31.50.6
add-DnsServerResourceRecord -zonename bpiph31.com -A -name c2  -ipv4address 10.31.50.8
add-DnsServerResourceRecord -zonename bpiph31.com -A -name ap  -ipv4address 10.31.10.3