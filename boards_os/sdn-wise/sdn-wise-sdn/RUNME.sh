#!/bin/bash

#TARGET="sky"
TARGET="z1"
#COOJA_BUILD=1
SDN_WISE_DEBUG=1


#make TARGET=$TARGET DEFINES=COOJA=0,SINK=1 
make TARGET=$TARGET TARGET=$TARGET DEFINES=SINK=1
mv sdn-wise.$TARGET compiled/sink-sdn-wise.$TARGET



#mkdir cooja_firmwares

#make TARGET=$TARGET DEFINES=COOJA=$COOJA_BUILD,SINK=1,SDN_WISE_DEBUG=$SDN_WISE_DEBUG
#mv sdn-wise.$TARGET cooja_firmwares/sink.$TARGET 
#make TARGET=$TARGET clean

#make TARGET=$TARGET DEFINES=COOJA=$COOJA_BUILD,SINK=0,SDN_WISE_DEBUG=$SDN_WISE_DEBUG
#mv sdn-wise.$TARGET cooja_firmwares/node.$TARGET 
#make TARGET=$TARGET clean

#make TARGET=$TARGET DEFINES=COOJA=$COOJA_BUILD,SINK=0,SDN_WISE_DEBUG=$SDN_WISE_DEBUG,MOBILE=1
#mv sdn-wise.$TARGET cooja_firmwares/mobile.$TARGET 
#make TARGET=$TARGET clean

