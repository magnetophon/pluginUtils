//-----------------------------------------------
// stereo sample delay
//-----------------------------------------------

declare name      "stereoSampleDelay";
declare version   "1.1";
declare author    "Bart Brouns";
declare license   "GNU 3.0";
declare copyright "(c) Bart Brouns 2016";

import("sampleDelay.lib");


process(l,r) = l@lDelay,r@rDelay;


lDelay = hgroup("[0]left", delay);
rDelay = hgroup("[1]right", delay);
