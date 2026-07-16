Project: Twin-T Notch Filter Simulation & Verification
Simulator: Qucs-S (Ngspice backend)

Overview:
This project validates the AC and transient response of a Twin-T notch filter. A nominal baseline circuit was compared against a tuned circuit optimized for a 1 kHz center frequency with >45 dB rejection.

Tuning Methodology:
To achieve the 1000 Hz ±2 Hz notch while strictly preserving Twin-T symmetry, the resistor family was tuned using the following mathematical constraints:
- C1 = C2 = 10 nF
- C3 = 20 nF
- R1 = R2 = Rtune = 15.915 kOhm
- R3 = Rtune / 2 = 7.957 kOhm

Transient Verification:
A composite 3-tone input (100 Hz, 1 kHz, 10 kHz at 100 mVpk each) was applied over a 200 ms simulation. 
- The 100 Hz and 10 kHz passband tones remained within 1.5 dB of their 100 mVpk input amplitudes.
- The 1 kHz notch frequency was successfully attenuated by >30 dB, effectively eliminating the noise from the time-domain signal.

Stress Testing & Sensitivity:
Boundary conditions were verified via nested parameter sweeps:
- Source impedance: 1 milliohm, 50 Ohms, 600 Ohms.
- Load impedance: 1 Megohm, 100 kOhms, 10 kOhms.
A +/- 1% component tolerance sensitivity analysis was conducted to identify the worst-case degradation of the mathematical null when Twin-T symmetry is broken.