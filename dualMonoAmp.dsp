//-----------------------------------------------
// dual mono amplifier
//-----------------------------------------------

declare name      "dualMonoAmp";
declare version   "1.1";
declare author    "Bart Brouns";
declare license   "GNU 3.0";
declare copyright "(c) Bart Brouns 2016";

import("stdfaust.lib");


process(l,r) = l*lAmp,r*rAmp;

lAmp = hgroup("[0]left", amp);
rAmp = hgroup("[1]right", amp);

amp = hslider("amplification[unit: dB][amplification in deciBell", 0, -144, 24, 0.001):si.smooth(0.999):ba.db2linear;