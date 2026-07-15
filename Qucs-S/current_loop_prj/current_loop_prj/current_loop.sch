<Qucs Schematic 26.1.0>
<Properties>
  <View=0,189,1592,1064,1,19,0>
  <Grid=10,10,1>
  <DataSet=current_loop.dat>
  <DataDisplay=current_loop.dpl>
  <OpenDisplay=0>
  <Script=current_loop.m>
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
  <R RS_TX 1 540 590 15 -26 0 1 "1 MOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R RL_LINE 1 650 480 -26 15 0 0 "100 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R RDISPLAY 1 940 480 -26 15 0 0 "250 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R RCONTROLLER 1 1080 570 15 -26 0 1 "500 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Vdc V_SUPPLY_24V 1 800 700 -26 -60 0 2 "24 V" 1>
  <GND * 1 910 750 0 0 0 0>
  <.DC DC1 1 290 830 0 33 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.SW SW1 1 520 820 0 54 0 0 "DC1" 1 "lin" 1 "IS_LOOP" 1 "0" 1 "24 m" 1 "25" 1>
  <Idc IS_LOOP 1 410 600 18 -26 0 1 "PWL(0 4m 10m 4m 10.01m 12m 20m 12m 20.01m 20m 30m 20m 30.01m 0 40m 0 40.01m 24m 50m 24m)" 1>
</Components>
<Wires>
  <410 530 410 570 "" 0 0 0 "">
  <410 530 540 530 "" 0 0 0 "">
  <540 530 540 560 "" 0 0 0 "">
  <540 480 620 480 "VTOP" 460 460 27 "">
  <540 480 540 530 "" 0 0 0 "">
  <410 630 410 700 "" 0 0 0 "">
  <410 700 540 700 "" 0 0 0 "">
  <540 700 770 700 "" 0 0 0 "">
  <540 620 540 700 "" 0 0 0 "">
  <830 700 910 700 "" 0 0 0 "">
  <1080 600 1080 700 "" 0 0 0 "">
  <1080 480 1080 540 "" 0 0 0 "">
  <970 480 1080 480 "V_MID" 1110 450 5 "">
  <680 480 910 480 "V_IN" 790 440 143 "">
  <910 700 1080 700 "" 0 0 0 "">
  <910 700 910 750 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
