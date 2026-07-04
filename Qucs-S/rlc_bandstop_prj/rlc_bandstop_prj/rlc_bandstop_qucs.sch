<Qucs Schematic 26.1.0>
<Properties>
  <View=54,-582,2841,900,1.77156,2702,602>
  <Grid=10,10,1>
  <DataSet=rlc_bandstop_qucs.dat>
  <DataDisplay=rlc_bandstop_qucs.dpl>
  <OpenDisplay=0>
  <Script=rlc_bandstop_qucs.m>
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
  <Vac V1 1 320 330 18 -26 0 1 "1 V" 1 "1 kHz" 0 "0" 0 "0" 0 "0" 0 "0" 0>
  <R R1 1 430 250 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <L L1 1 570 310 -64 -26 0 3 "10 mH" 1 "" 0>
  <C C1 1 570 440 17 -26 0 1 "100 nF" 1 "" 0 "neutral" 0>
  <R RLoad 1 680 360 15 -26 0 1 "1 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 490 560 0 0 0 0>
  <.AC AC1 1 280 60 0 33 0 0 "log" 1 "100 Hz" 1 "100 kHz" 1 "301" 1 "no" 0>
  <Eqn Eqn1 1 470 -30 -29 17 0 0 "y=1" 1 "Gain_dB=20*log10(abs(VOUT.v))" 1 "yes" 0>
</Components>
<Wires>
  <570 340 570 410 "LC_BRANCH" 460 380 36 "">
  <320 250 320 300 "" 0 0 0 "">
  <320 250 400 250 "VIN" 360 220 13 "">
  <460 250 570 250 "" 0 0 0 "">
  <570 250 570 280 "" 0 0 0 "">
  <570 280 570 290 "" 0 0 0 "">
  <680 250 680 330 "" 0 0 0 "">
  <570 250 680 250 "VOUT" 690 220 20 "">
  <570 470 570 520 "" 0 0 0 "">
  <570 520 680 520 "" 0 0 0 "">
  <680 390 680 520 "" 0 0 0 "">
  <320 360 320 520 "" 0 0 0 "">
  <320 520 490 520 "" 0 0 0 "">
  <490 520 570 520 "" 0 0 0 "">
  <490 520 490 560 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 900 540 676 363 3 #c0c0c0 1 10 1 0 10000 100000 1 -0.0370139 0.2 1.04232 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.v(vout)" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect 900 100 669 297 3 #c0c0c0 1 10 1 0 10000 100000 1 0 0.5 2 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.v(vin)" #0000ff 1 3 0 0 0>
  </Rect>
  <Rect 1737 160 464 315 3 #c0c0c0 1 10 1 100 1 100000 1 nan 1 nan 1 -1 0.5 1 315 0 225 1 1 0 "" "" "">
	<"ngspice/ac.gain_db" #0000ff 1 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
