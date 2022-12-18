#!/bin/bash

cp siox-bottom-pos.csv jlcpcb-cpl-bottom.csv
cp siox-top-pos.csv jlcpcb-cpl-top.csv

perl -pi -e "s/Ref,Val,Package,PosX,PosY,Rot,Side/Designator,Mid X,Mid Y,Rotation,Layer/" jlcpcb-cpl*.csv
perl -pi -e 's/","[^"]*","[^"]*"/"/' jlcpcb-cpl*.csv

