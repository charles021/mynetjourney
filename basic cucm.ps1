config t
   hostname CUCM-31
   enable secret pass
   service password-encryption
   no logging console
   no ip domain-lookup
   line console 0
     password pass
     login
     exec-timeout 0 0
    line vty 0 14
      password pass
      login
      exec-timeout 0 0
   Int Fa 0/0
     no shutdown
	 ip add 10.31.100.8 255.255.255.0 
	 end

ANALOG PHONES:
configure terminal
dial-peer voice 1 pots
   destination-pattern 3100
   port 0/0/0
dial-peer voice 2 pots
   destination-pattern 3101
   port 0/0/1
dial-peer voice 3 pots
   destination-pattern 3102
   port 0/0/2
dial-peer voice 4 pots
   destination-pattern 3103
   port 0/0/3
end