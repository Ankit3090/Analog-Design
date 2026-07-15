<Qucs Schematic 26.1.0>
<Properties>
  <View=-280,-197,3090,1592,0.75629,247,193>
  <Grid=10,10,1>
  <DataSet=Microstrip.dat>
  <DataDisplay=Microstrip.dpl>
  <OpenDisplay=0>
  <Script=Microstrip.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <SUBST Subst1 1 290 640 -30 24 0 0 "4.5" 1 "0.3937 mm" 1 "0 um" 1 "2e-4" 1 "0.022e-6" 1 "0.15e-6" 1>
  <MLIN MS1 1 730 280 -26 15 0 0 "Subst1" 1 "0.787 mm" 1 "39.37 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MLIN MS2 1 1000 280 -26 15 0 0 "Subst1" 1 "0.787 mm" 1 "39.37 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <MLIN MS3 1 860 490 15 -26 0 1 "Subst1" 1 "0.787 mm" 1 "39.37 mm" 1 "Hammerstad" 0 "Kirschning" 0 "26.85" 0 "DC" 0>
  <GND * 1 530 530 0 0 0 0>
  <GND * 1 1230 530 0 0 0 0>
  <Pac P2 1 1230 440 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <Pac P1 1 530 430 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <Eqn Eqn1 1 430 130 -29 17 0 0 "dB_21=dB(S[2,1])" 1 "yes" 0>
  <.SP SP1 1 200 400 0 56 0 0 "lin" 1 "0 MHz" 1 "10 GHz" 1 "10000" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
</Components>
<Wires>
  <860 280 970 280 "" 0 0 0 "">
  <760 280 860 280 "" 0 0 0 "">
  <860 280 860 460 "" 0 0 0 "">
  <530 280 700 280 "" 0 0 0 "">
  <530 280 530 400 "" 0 0 0 "">
  <1030 280 1230 280 "" 0 0 0 "">
  <1230 280 1230 410 "" 0 0 0 "">
  <530 460 530 530 "" 0 0 0 "">
  <1230 470 1230 530 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
