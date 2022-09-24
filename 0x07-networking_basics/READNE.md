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

