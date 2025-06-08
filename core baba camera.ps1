config t
ip routing
ip dhcp pool CAMERA6
host 10.31.50.6 255.255.255.0
client-identifier 001a.0709.c26b
ip dhcp pool CAMERA8
host 10.31.50.8 255.255.255.0
client-identifier 001a.0706.c2f7
end