# 0x07. Networking basics #0
## OSI model
Open Systems Interconnection model.
A conceptual model that 'provides a common basis for the 
coordination of [ISO] standards development for the 
purpose of systems interconnection'.

In the OSI reference model, the communications between a 
computing system are split into seven different 
abstraction layers: Physical, Data Link, Network, 
Transport, Session, Presentation, and Application.

Each intermediate layer serves a class of functionality 
to the layer above it and is served by the layer below it.

Data processing by two communicating OSI-compatible devices proceeds as follows:
1. The data to be transmitted is composed at the topmost 
layer of the transmitting device (layer N) into a protocol 
data unit (PDU).

2. The PDU is passed to layer N-1, where it is known as the 
service data unit (SDU).

3. At layer N-1 the SDU is concatenated with a header, a 
footer, or both, producing a layer N-1 PDU. It is then passed 
to layer N-2.

4. The process continues until reaching the lowermost level, from which the data is transmitted to the receiving device.

5. At the receiving device the data is passed from the lowest 
to the highest layer as a series of SDUs while being 
successively stripped from each layer's header or footer 
until reaching the topmost layer, where the last of the data 
is consumed.

### THE OSI MODEL LAYERS
7. Application layer 
6. Presentation layer
5. Session layer
4. Transport layer
3. Network layer
2. Data link layer
1. Physical layer
(to be updated)

### what's an IP address
Every machine on the the Internet has a unique number assigned to it, called an IP address

#### IPv4 and IPv6 Addresses
An IP address always consists of 4 numbers separated by 
periods, with the numbers having a possible range of 0 
through 255.
Out of these addresses there are 3 special ranged that are 
reserved for special purposes.

The first is the ```0.0.0.0``` address and refers to the default 
network 
```255.255.255.255``` address which is called the broadcast address.
The third address, ```127.0.0.1```, is the loopback address, and refers to your machine. 

##### IPv4 
Internet Protocol Version 4
This version uses 32-bit addresses

##### IPv6 
Internet Protocol Version 6
This version uses 128-bit addresses


Note that a specific IP + port = socket.
