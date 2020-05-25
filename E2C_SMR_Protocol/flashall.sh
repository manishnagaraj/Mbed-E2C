#!/bin/bash 

serials=(
	303636464646333333323331353434
	303636414646333933373331343335
	303636424646343935303537373137
	303636444646353035303537373137
	303636394646333833303334353434
	303636454646333933373331343335
	303636394646353735353530383937
)

for id in  ${serials[@]};
do
	echo "$id"
	st-flash --serial $id write BUILD/NUCLEO_F401RE/GCC_ARM/E2CGit.bin 0x8000000 
done