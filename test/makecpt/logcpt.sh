#!/bin/bash
# Test makecpt -Q options

ps=logcpt.ps
gmt makecpt -T1/1000/2 -Qo -Cjet | gmt psscale -Dx0i/4.5i+w9i/0.2i+jML -P -K -By+l"-Qo" > $ps
gmt makecpt -T1/3/0.2 -Qi -Cjet | gmt psscale -Dx2i/4.5i+w9i/0.2i+jML -By+l"-Qi" -O -K --FORMAT_FLOAT_MAP=%.0f >> $ps
gmt makecpt -T1/1000/2 -Qo -Cjet | gmt psscale -Dx4i/4.5i+w9i/0.2i+jML -O -K -L -By+l"-Qo -L" >> $ps
gmt makecpt -T1/3/0.2 -Qi -Cjet | gmt psscale -Dx6i/4.5i+w9i/0.2i+jML -L -By+l"-Qi -L" -O --FORMAT_FLOAT_MAP=%.0f >> $ps
