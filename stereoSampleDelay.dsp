//-----------------------------------------------
// stereo sample delay
//-----------------------------------------------

declare name      "stereoSampleDelay";
declare version "2.0.0";
declare author "Bart Brouns";
declare license "GPL-3.0-only";
declare copyright "2016 - 2023, Bart Brouns";

import("sampleDelay.lib");


process(l,r) = l@lDelay,r@rDelay;


lDelay = hgroup("[0]left", delay);
rDelay = hgroup("[1]right", delay);
