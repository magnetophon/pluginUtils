//-----------------------------------------------
// dual mono amplifier
//-----------------------------------------------

declare name      "dualMonoAmp";
declare version "2.0.0";
declare author "Bart Brouns";
declare license "GPL-3.0-only";
declare copyright "2016 - 2023, Bart Brouns";

import("stdfaust.lib");


process(l,r) = l*lAmp,r*rAmp;

lAmp = hgroup("[0]left", amp);
rAmp = hgroup("[1]right", amp);

amp = hslider("amplification[unit: dB][amplification in deciBell", 0, -144, 24, 0.001):si.smooth(0.999):ba.db2linear;
