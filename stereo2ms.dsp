
//-----------------------------------------------
// stereo to mid side
//-----------------------------------------------

declare name "stereo2ms";
declare version "2.0.0";
declare author "Bart Brouns";
declare license "GPL-3.0-only";
declare copyright "2016 - 2023, Bart Brouns";

process(left,right) = mid,side
with {
  mid = (left + right) * sqrt(0.5);
  side = (left - right) * sqrt(0.5);
};
