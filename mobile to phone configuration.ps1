conf t
 voice service voip
  allow-connections h323 to sip    
  allow-connections sip to h323
  allow-connections sip to sip
  supplementary-service h450.12
 sip
   bind control source-interface fa0/0
   bind media source-interface fa0/0
   registrar server expires max 600 min 60
!
 voice register global
  mode cme
  source-address 10.31.100.8 port 5060
  max-dn 12
  max-pool 12
  authenticate register
  create profile sync
 voice register dn 1
   number 3128
   allow watch
   name 3128
 voice register dn 2
   number 3127
   allow watch
   name 3127
!
  voice register pool 1
    id mac 8C31.D035.808C
    number 1 dn 1
    dtmf-relay sip-notify
    username 3128 password 3128
    codec g711ulaw
!
  voice register pool 2
    id mac 76E5.5268.CBA5
    number 1 dn 2
    dtmf-relay sip-notify
    username 3127 password 3127
    codec g711ulaw
!






