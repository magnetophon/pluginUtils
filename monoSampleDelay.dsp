//-----------------------------------------------
// mono sample delay
//-----------------------------------------------

declare name      "monoSampleDelay";
declare version   "1.0";
declare author    "Bart Brouns";
declare license   "GNU 3.0";
declare copyright "(c) Bart Brouns 2016";

import("sampleDelay.lib");


process(x) = hgroup("delay", x@delay);
