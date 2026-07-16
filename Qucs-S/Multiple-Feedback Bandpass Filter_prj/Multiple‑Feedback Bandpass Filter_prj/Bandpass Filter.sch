<Qucs Schematic 26.1.0>
<Properties>
  <View=-1201,-1061,2879,1063,1,1408,1030>
  <Grid=10,10,1>
  <DataSet=Bandpass Filter.dat>
  <DataDisplay=Bandpass Filter.dpl>
  <OpenDisplay=0>
  <Script=Bandpass Filter.m>
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
  <OpAmp OP1 1 700 400 -26 -84 1 0 "1e6" 1 "15 V" 0>
  <Vac V1 1 240 460 18 -26 0 1 "1 V" 1 "1 kHz" 0 "0" 0 "0" 0 "0" 0 "0" 0>
  <R R1 1 310 370 -26 15 0 0 "6.8 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R2 1 710 240 -26 15 0 0 "150 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R3 1 440 450 15 -26 0 1 "2.2 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <C C1 1 580 380 -26 17 0 0 "10 nF" 1 "" 0 "neutral" 0>
  <GND * 1 660 520 0 0 0 0>
  <GND * 1 440 540 0 0 0 0>
  <C C2 1 730 140 -26 17 0 0 "10 nF" 1 "" 0 "neutral" 0>
  <.AC AC1 1 200 70 0 33 0 0 "log" 1 "10 Hz" 1 "100 kHz" 1 "100" 1 "no" 0>
  <Eqn Eqn1 1 850 -20 -29 17 0 0 "Gain_dB=20 * log10(abs(v(Out)))" 1 "Phase_deg=phase(v(Out))" 1 "yes" 0>
  <.CUSTOMSIM CUSTOM1 1 1170 -10 0 33 0 0 "* Set the number of Monte Carlo iterations\nlet mc_runs = 100\nlet run = 1\n\ndowhile run <= mc_runs\n    reset\n    \n    * Force a uniform random +/- 5% variation into each component\n    * sunif(0) generates a random number between -1.0 and +1.0\n    alter r1 = 6.8k * (1 + 0.05 * sunif(0))\n    alter r2 = 150k * (1 + 0.05 * sunif(0))\n    alter r3 = 2.2k * (1 + 0.05 * sunif(0))\n    alter c1 = 10n * (1 + 0.05 * sunif(0))\n    alter c2 = 10n * (1 + 0.05 * sunif(0))\n    \n    * Run the AC sweep\n    ac dec 25 10 100k\n    \n    * 1. Extract the center frequency (f0)\n    meas ac f_center max_at vm(Out)\n    \n    * 2. Calculate the -3dB threshold\n    meas ac v_peak max vm(Out)\n    let v_3db = v_peak / 1.4142\n    \n    * 3. Find the lower and upper -3dB cutoff frequencies using magnitude\n    meas ac f_low when vm(Out)=v_3db rise=1\n    meas ac f_high when vm(Out)=v_3db fall=1\n    \n    * 4. Calculate the Bandwidth\n    let bandwidth = f_high - f_low\n    \n    * Print the run number, f0, and bandwidth to the Ngspice log\n    print run f_center bandwidth\n    \n    let run = run + 1\nend" 1 "V(out);V(in)" 0 "custom#ac1#.plot;custom#ac1#.print" 0>
</Components>
<Wires>
  <670 420 660 420 "" 0 0 0 "">
  <660 420 660 520 "" 0 0 0 "">
  <240 430 240 370 "" 0 0 0 "">
  <340 370 440 370 "" 0 0 0 "">
  <440 370 440 380 "" 0 0 0 "">
  <440 480 440 510 "" 0 0 0 "">
  <440 510 440 540 "" 0 0 0 "">
  <240 510 240 490 "" 0 0 0 "">
  <670 380 630 380 "" 0 0 0 "">
  <440 380 440 420 "" 0 0 0 "">
  <740 400 840 400 "" 0 0 0 "">
  <550 380 480 380 "" 0 0 0 "">
  <700 140 480 140 "" 0 0 0 "">
  <480 380 440 380 "" 0 0 0 "">
  <480 140 480 380 "" 0 0 0 "">
  <760 140 840 140 "" 0 0 0 "">
  <840 400 890 400 "" 0 0 0 "">
  <840 140 840 240 "" 0 0 0 "">
  <680 240 630 240 "" 0 0 0 "">
  <630 380 610 380 "" 0 0 0 "">
  <630 240 630 380 "" 0 0 0 "">
  <840 240 840 400 "" 0 0 0 "">
  <740 240 840 240 "" 0 0 0 "">
  <440 510 240 510 "" 0 0 0 "">
  <280 370 240 370 "" 0 0 0 "">
  <890 400 890 400 "Out" 920 370 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
