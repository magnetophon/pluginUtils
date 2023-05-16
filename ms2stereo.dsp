//-----------------------------------------------
// mid side to stereo
//-----------------------------------------------

declare name      "ms2stereo";
declare version "2.0.0";
declare author "Bart Brouns";
declare license "GPL-3.0-only";
declare copyright "2016 - 2023, Bart Brouns";

process(mid, side) = (left, right)
with {
  left = (mid + side) * sqrt(0.5);
  right = (mid - side) * sqrt(0.5);
};
