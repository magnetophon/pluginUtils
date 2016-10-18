//-----------------------------------------------
// mid side to stereo
//-----------------------------------------------

declare name      "ms2stereo";
declare version   "1.1";
declare author    "Bart Brouns";
declare license   "GNU 3.0";
declare copyright "(c) Bart Brouns 2016";

process(m,s) = (m+s),(m-s);