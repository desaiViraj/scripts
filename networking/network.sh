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


NET
echo "_____________________________________________________________________________________________"

