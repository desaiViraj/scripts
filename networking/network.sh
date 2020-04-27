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

To create:
$ sudo tcpdump -w sshdump.tcpdump tcp port 22
To Display:
$ sudo tcpdump -r sshdump.tcpdump

*****************************************************************************
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!BINDING and BONDING!!!!!!!!!!!!!!!!!!!!!!!!!!
Sometimes server needs more than one IP address on the same network card.
This is called Binding.

Activating multiple network cards behind the same IP address.
This is called Bonding

To Bind extra IP[RHEL]:
1. ADDING
MAIN IP
#vi /etc/sysconfig/network-scripts/ifcfg-eth0:0
DEVICE="eth0:0"
IPADDR="192.168.10.11"

Add, : and digit to add extra IP
#vi /etc/sysconfig/network-scripts/ifcfg-eth0:1
DEVICE="eth0:0"
IPADDR="192.168.10.12"

2. ENABLING
#ifup eth0:0
#ifup eth0:1

3. VERIFYING
#ifconfig
Or ping from another server.

To Bind extra IP[DEBIAN]:
1. ADDING
#vi /etc/network/interfaces

2. ENABLING
#ifup eth0:0
#ifup eth0:1

3. VERIFYING
#ifconfig
Or ping from another server.

BONDING
On RHEL

1. List the network cards
#ifconfig -a | grep Ethernet

2. Add entry to modprobe(To make kernel aware)
#vim /etc/modprobe.d/bonding.conf
alias bond0 bonding

3. Create bond0 interface
#vim /etc/sysconfig/network-scripts/ifcfg-bond0
DEVICE=bond0
IPADDR=192.168.10.123
NETMASK=255.255.255.0
ONBOOT=yes
BOOTPROTO=none
USERCTL=no
:wq

4. Create 2 Slave files, one for each network card.
#vim ifcfg-eth1
DEVICE=eth1
ONBOOT=yes
BOOTPROTO=none
MASTER=bond0
SLAVE=yes
USERCTL=no

#vim ifcfg-eth2
DEVICE=eth0
ONBOOT=yes
BOOTPROTO=none
MASTER=bond0
SLAVE=yes
USERCTL=no

5. Bring UP the interface
#ifup bond0

#cat /proc/net/bonding
NET
echo "_____________________________________________________________________________________________"

