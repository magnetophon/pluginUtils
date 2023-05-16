//-----------------------------------------------
// mono sample delay
//-----------------------------------------------

declare name      "monoSampleDelay";
declare version "2.0.0";
declare author "Bart Brouns";
declare license "GPL-3.0-only";
declare copyright "2016 - 2023, Bart Brouns";

import("sampleDelay.lib");

process(x) = hgroup("delay", x@delay);
