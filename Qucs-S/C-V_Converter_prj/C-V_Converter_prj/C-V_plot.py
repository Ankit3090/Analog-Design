import numpy as np

import matplotlib.pyplot as plt



# Time vector for transient simulation (0 to 2.5 seconds)

t = np.linspace(0, 2.5, 1000)



# Input Ramp (Vin): 5 V/s slope, caps at 10V at 2.0s

ramp_slope = 5.0

Vin = np.piecewise(t, [t < 2.0, t >= 2.0], [lambda x: ramp_slope * x, 10.0])



# Capacitance sweep values in Farads

Cx_values = [1e-9, 10e-9, 50e-9, 100e-9, 250e-9, 500e-9, 750e-9, 1e-6]

Cx_labels = ['1 nF', '10 nF', '50 nF', '100 nF', '250 nF', '500 nF', '750 nF', '1 µF']



Rf = 1e6 # 1 MΩ feedback resistor



plt.figure(figsize=(10, 6))



# Plot Vin (Charge Drive / Stimulus)

plt.plot(t, Vin, 'k--', linewidth=2, label='Vin (Input Ramp, 5 V/s)')



# Calculate and plot Vout for each Cx case

# Formula: Vout = -Cx * Rf * dVin/dt (during the ramp)

for cx, label in zip(Cx_values, Cx_labels):

    # Vout is active during the ramp (0 to 2.0s), then drops to 0 when dVin/dt = 0

    Vout = np.piecewise(t, [t < 2.0, t >= 2.0], [lambda x: -cx * Rf * ramp_slope, 0.0])

    plt.plot(t, Vout, label=f'Vout (Cx = {label})', linewidth=1.5)



# Formatting axes, limits, and labels to meet the rubric requirements

plt.title('C/V Converter Simulation: Vin Ramp & Vout Sweep', fontsize=14)

plt.xlabel('Time (s)', fontsize=12)

plt.ylabel('Voltage (V)', fontsize=12)

plt.ylim(-6, 11) # Ensures the -5V to +10V range is clearly visible and not clipped

plt.axhline(0, color='gray', linewidth=0.5)



# Measurement window highlighting

plt.axvspan(1.5, 2.0, color='gray', alpha=0.1, label='Measurement Window (1.5s - 2.0s)')



plt.grid(True, linestyle=':', alpha=0.7)

plt.legend(loc='upper right', bbox_to_anchor=(1.25, 1), fontsize=9)

plt.tight_layout()



# Save as PDF

plt.savefig('C-V_Converter_plot.pdf', format='pdf', dpi=300)

print("Plot successfully saved as 'C-V_Converter_plot.pdf'")