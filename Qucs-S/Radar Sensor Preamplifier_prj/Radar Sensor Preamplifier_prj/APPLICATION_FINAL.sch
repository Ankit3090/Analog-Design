<Qucs Schematic 26.1.0>
<Properties>
  <View=-1551,-566,2149,1320,1.45626,2713,813>
  <Grid=10,10,1>
  <DataSet=APPLICATION_FINAL.dat>
  <DataDisplay=APPLICATION_FINAL.dpl>
  <OpenDisplay=0>
  <Script=APPLICATION_FINAL.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID 430 14 SUB "1=File1=fet.sch==">
  <Rectangle 340 -20 10 100 #0000ff 1 1 #0000ff 1 1>
  <Line 350 0 60 0 #0000ff 1 1>
  <Line 350 60 60 0 #0000ff 1 1>
  <Arrow 280 50 60 0 20 8 #0000ff 1 1 0>
</Symbol>
<Components>
  <Pac P1 1 360 440 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <Pac P2 1 1120 400 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0>
  <GND * 1 730 550 0 0 0 0>
  <L L1 1 530 350 -26 10 0 0 "1.1 nH" 1 "" 0>
  <L L2 1 650 430 10 -26 0 1 "4 nH" 1 "" 0>
  <.SP SP1 1 1220 -40 0 54 0 0 "lin" 1 "1 GHz" 1 "20 GHz" 1 "39" 1 "yes" 1 "1" 0 "2" 0 "no" 0 "no" 0>
  <Sub SUB1 1 800 390 -26 28 0 0 "fet.sch" 1>
  <Vdc V1 1 920 200 -62 -26 0 3 "1 V" 1>
  <GND * 1 920 170 0 0 0 2>
  <Eqn Eqn1 1 1480 30 -29 17 0 0 "dB_21=dB(S[2,1])" 1 "dB_11=dB(S[1,1])" 1 "dB_22=dB(S[2,2])" 1 "delta=S[1,1]*S[2,2] - S[1,2]*S[2,1]" 1 "K_fact=(1 - mag(S[1,1])^2 - mag(S[2,2])^2 + mag(delta)^2) / (2 * mag(S[1,2]*S[2,1]))" 1 "yes" 0>
  <C C1 1 980 370 -26 -59 0 2 "1 pF" 1 "" 0 "neutral" 0>
  <L L3 1 920 280 10 -26 0 1 "1 uH" 1 "" 0>
  <R R1 1 870 370 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
</Components>
<Wires>
  <360 350 360 410 "" 0 0 0 "">
  <360 350 500 350 "" 0 0 0 "">
  <560 350 650 350 "" 0 0 0 "">
  <650 350 650 400 "" 0 0 0 "">
  <820 410 820 500 "" 0 0 0 "">
  <1120 430 1120 500 "" 0 0 0 "">
  <650 460 650 500 "" 0 0 0 "">
  <650 500 730 500 "" 0 0 0 "">
  <360 470 360 500 "" 0 0 0 "">
  <360 500 650 500 "" 0 0 0 "">
  <730 500 820 500 "" 0 0 0 "">
  <730 500 730 550 "" 0 0 0 "">
  <650 400 780 400 "" 0 0 0 "">
  <780 390 780 400 "" 0 0 0 "">
  <820 500 1120 500 "" 0 0 0 "">
  <1120 370 1010 370 "" 0 0 0 "">
  <920 250 920 230 "" 0 0 0 "">
  <900 370 920 370 "" 0 0 0 "">
  <920 370 950 370 "" 0 0 0 "">
  <920 370 920 310 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
