

/ip firewall mangle add action=mark-routing chain=prerouting comment="WhatsAPP STUN protocol 5349 TLS" dst-port=3478,5349 new-routing-mark=to-vpn_Moscow passthrough=no protocol=tcp
/ip firewall mangle add action=mark-routing chain=prerouting comment="WhatsAPP STUN protocol 3478 without TSL" dst-port=3478 new-routing-mark=to-vpn_Moscow passthrough=no protocol=udp

/ip firewall mangle add action=mark-routing chain=prerouting comment= "To vpn. WhatsAPP - Facebook - Instagram " dst-address-list=IP_WhatsAPP new-routing-mark=to-vpn_Moscow passthrough=no