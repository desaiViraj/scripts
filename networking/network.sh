#!/bin/bash
echo "_____________________________________________________________________________________________"
echo "---------------------------------------NETWORKING--------------------------------------------"
cat << NET
SEVEN OSI LAYERS
1. Application
2. Presentation
3. Session
4. Transport
5. Network
6. Data Link
7. Physical
--------------------------------------------------------------------

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!DoD LAYERS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
PHYSICAL LAYER
Known as Layer 1.
It is all about cableing, mechanical connections etc.
Devices used: Repeaters and Hubs.
Networking Technologies: CSMA/CD and Token Ring.

DATA LINK LAYER
Known as Layer 2.
It is all about Frames.
A frame has CRC(Cyclic Redundancy Check).
Ethernet(802.3) - Identifiable by 48-bit MAC address.
Devices Used: Bridges and Switches.

NETWORK LAYER
Known as Layer 3.
It is all about IP packets.
This layer gives every host unique 32-bit IP address.
cat /etc/protocols ---> To view complete list.
Devices Used: Routers and Switches(Layer 3).
Commonly Known as Internet Layer.

TRANSPORT LAYER
Known as Layer 4.
This is host-to-host layer as it uses TCP and UDP protocols.

LAN
Local Area Network
This can be one room, one floor or one building.

MAN
Metropolitan Are Network
Something between LAN and WAN.
Can be several buildings in the same city.
Uses FDDI or Ethernet.

WAN
Wide Area Network
Large Surface area network like the Internet.
Uses protocol FDDI, Frame Relay, ATM or X.25.
Ex. Cisco WAN Router.

PAN-WPAN
(Wireless)Personal Area Network
Home Network.

INTERNET
GLOBAL Network, forms by connecting many networks.
Derived from ARPANET.

INTRANET
It is a private tpc/ip network.(within one organization)

EXTRANET
It is similar to INTRANET with addition access to trusted organizations.
*************************************************************************************

rfc(Request For Comment)
The protocol that are used on the internet are defined in rfc's.
It describes the inner working of all internet protocols.
Ex. rfc2132(defines dhcp and bootp)

TCP - Connection Oriented
UDP - Connectionless
`cat /etc/protocols | egrep -e TCP -e UDP`

To see the list of PORT Numners:
cat /etc/services

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!NETWORK CONFIGURATION!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
DEBIAN
/etc/network/interfaces

RHEL
/etc/sysconfig/network
/etc/sysconfig/network-scripts/ifcfg-

To Display Hostname:
sysctl kernel.hostname

To Set Hostname:
sysctl kernel.hostname=ubuntu

arp(Address Resolution Protocol)
IP to MAC resolution is handled by ARP protocol.

arp -a ---> To display all entries
arp -d ---> To remove entry
Other Commands:
#route
#netstat -r
-----------------------------------------------------------------------------

To Display or change network card settings
Use ethtool
#ethtool eth0

+++++++++++++++++++++++++++++++NETWORK SNIFFING++++++++++++++++++++++++++++++
TOOLS: Wireshark, tcpdump




NET
echo "_____________________________________________________________________________________________"

