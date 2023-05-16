
//-----------------------------------------------
// stereo to mid side
//-----------------------------------------------

declare name      "stereo2ms";
declare version   "1.1";
declare author    "Bart Brouns";
declare license   "GNU 3.0";
declare copyright "(c) Bart Brouns 2016";

process(left,right) = mid,side
with {
  mid = (left + right) * sqrt(0.5);
  side = (left - right) * sqrt(0.5);
};
