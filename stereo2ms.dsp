
//-----------------------------------------------
// stereo to mid side
//-----------------------------------------------

declare name      "stereo2ms";
declare version   "1.0";
declare author    "Bart Brouns";
declare license   "GNU 3.0";
declare copyright "(c) Bart Brouns 2016";

process(l,r) = (l+r),(l-r);