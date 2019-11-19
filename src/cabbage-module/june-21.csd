  bounds(0, 0, 0, 0)
 /*
 This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.
  
  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.
  
  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */
 
<Cabbage>  
bounds(0, 0, 0, 0)
form caption("June 21"), size(800, 650), colour(26,26,26), pluginid("June-21") bundle("./imgs", "./presets","june-21.txt")

keyboard bounds(148, 462, 579, 122)  



image bounds(0, 0, 800, 450) file("imgs/background.svg") 
image bounds(10, 4, 300, 45) file("imgs/june-21.png")




#define rsliderstyle outlinecolour(255, 0, 0, 255) markercolour(255, 0, 0, 255) trackercolour(255, 0, 0, 255)
#define vsliderstyle  trackercolour(255, 0, 0, 255)




rslider bounds(8, 102, 44, 44), range(0, 127, 0, 1, 1),  channel("lforate"),  $rsliderstyle 
rslider bounds(56, 102, 44, 44), range(0, 127, 0, 1, 1),  channel("lfodely"),  $rsliderstyle 
rslider bounds(188, 102, 44, 44), range(0, 127, 0, 1, 1), channel("dcolfo") ,  $rsliderstyle 
rslider bounds(236, 102, 44, 44), range(0, 127, 0, 1, 1), , channel("dcoenvd"), $rsliderstyle markercolour(255, 0, 0, 255) outlinecolour(255, 0, 0, 255)
rslider bounds(308, 222, 44, 44) range(0, 127, 0, 1, 1) channel("pwpwm")   $rsliderstyle 
rslider bounds(356, 222, 44, 44) range(0, 127, 0, 1, 1) channel("pwmrate")  $rsliderstyle 
rslider bounds(486, 222, 44, 44) range(0, 127, 0, 1, 1) channel("vcffreq")  $rsliderstyle 
rslider bounds(534, 222, 44, 44) range(0, 127, 0, 1, 1) channel("vcfreso")  $rsliderstyle 
rslider bounds(630, 222, 44, 45) range(0, 127, 0, 1, 1) channel("vcfenvd") $rsliderstyle markercolour(255, 0, 0, 255) outlinecolour(255, 0, 0, 255)
rslider bounds(308, 380, 44, 44) range(0, 127, 0, 1, 1) channel("envt1")  $rsliderstyle 
rslider bounds(404, 380, 44, 44) range(0, 127, 0, 1, 1) channel("envt2")  $rsliderstyle 
rslider bounds(500, 380, 44, 44) range(0, 127, 0, 1, 1) channel("envt3")  $rsliderstyle 
rslider bounds(596, 380, 44, 44) range(0, 127, 0, 1, 1) channel("envt4")  $rsliderstyle 
rslider bounds(236, 380, 44, 44) range(0, 127, 0, 1, 1) channel("crsrate")  $rsliderstyle markercolour(255, 0, 0, 255) outlinecolour(255, 0, 0, 255)
rslider bounds(582, 222, 44, 44) range(0, 127, 0, 1, 1) channel("vcflfo")  $rsliderstyle 
rslider bounds(740, 220, 48, 48) range(0, 15, 0, 1, 1) channel("vcfkybd")  $rsliderstyle markercolour(255, 0, 0, 255) outlinecolour(255, 0, 0, 255)
rslider bounds(644, 380, 44, 44) range(0, 127, 0, 1, 1) channel("envkybd")  $rsliderstyle 
rslider bounds(8, 378, 44, 44) range(0, 127, 0, 1, 1) channel("vcalevl") $rsliderstyle 
rslider bounds(356, 380, 44, 44) range(0, 127, 0, 1, 1) channel("envl1") $rsliderstyle 
rslider bounds(452, 380, 44, 44) range(0, 127, 0, 1, 1) channel("envl2") $rsliderstyle 
rslider bounds(548, 380, 44, 44) range(0, 127, 0, 1, 1) channel("envl3") $rsliderstyle 

rslider bounds(456, 8, 37, 37) range(0, 1, 0.5, 1, 0.01) channel("lid") $rsliderstyle 





vslider bounds(152, 96, 25, 66) range(0, 3, 0, 1, 1) channel("dcorng")   $vsliderstyle  
vslider bounds(84, 200, 25, 104) range(0, 5, 0, 1, 1) channel("sawtooth") $vsliderstyle  
vslider bounds(32, 200, 25, 66) range(0, 3, 0, 1, 1) channel("pulse") $vsliderstyle  
vslider bounds(152, 200, 25, 104) range(0, 5, 0, 1, 1) channel("sub") $vsliderstyle  
vslider bounds(312, 94, 25, 66) range(0, 3, 0, 1, 1) channel("dcoenv") $vsliderstyle  
vslider bounds(200, 210, 30, 65) range(0, 3, 0, 1, 1) channel("sublevl") $vsliderstyle  
vslider bounds(250, 210, 30, 67) range(0, 3, 0, 1, 1) channel("noislvl") $vsliderstyle  
vslider bounds(84, 368, 31, 66) range(0, 3, 0, 1, 1) channel("vcaenv") $vsliderstyle  
vslider bounds(200, 380, 31, 44) range(0, 1, 0, 1, 1) channel("chorus") $vsliderstyle  
vslider bounds(706, 210, 25, 66) range(0, 3, 0, 1, 1) channel("vcfenv") $vsliderstyle  
vslider bounds(424, 222, 32, 65) range(0, 3, 0, 1, 1) channel("hpffreq") $vsliderstyle  

button bounds(406, 70, 86, 20) colour:0(118, 118, 118, 255) colour:1(255, 0, 0, 255) radiogroup("1") text("PRESET", "PRESET") channel("grpPreset") value(1) fontcolour:1(0, 0, 0, 255)
button bounds(406, 94, 86, 20) colour:0(118, 118, 118, 255) colour:1(255, 0, 0, 255) radiogroup("1") text("MEMORY", "MEMORY") channel("grpMemory") fontcolour:1(0, 0, 0, 255)
button bounds(406, 118, 52, 20) colour:0(118, 118, 118, 255) colour:1(255, 0, 0, 255) radiogroup("1") text("FILE", "FILE") channel("grpCartridge")  fontcolour:1(0, 0, 0, 255) , 
button bounds(18, 486, 51, 31) channel("OctDown") colour:1(255, 0, 0, 255) text("Down", "Down") radiogroup("oct") visible(0)
button bounds(74, 486, 51, 31) channel("OctUp") text("Normal", "Normal") radiogroup("oct") colour:1(255, 0, 0, 255) visible(0)



label bounds(194, 186, 40, 12), text("SUB"), 
label bounds(242, 184, 50, 12) ,text("NOISE"), 
label bounds(414, 208, 50, 12) text("HPF") 
label bounds(136, 78, 50, 12), text("RANGE")
label bounds(284, 78, 60, 12), text("ENV MODE")
label bounds(6, 466, 128, 16) text("OCT TRANSPOSE") visible(0)
label bounds(698, 180, 40, 12) text("ENV")
label bounds(62, 322, 50, 16) text("VCA")
label bounds(200, 322, 80, 16) text("CHORUS")
label bounds(16, 58, 80, 16) text("LFO")
label bounds(8, 78, 49, 12) text("RATE")
label bounds(54, 78, 50, 12) text("DELAY")
label bounds(196, 58, 80, 16) text("DCO")
label bounds(190, 78, 40, 12) text("LFO")
label bounds(236, 78, 40, 12) text("ENV")
label bounds(24, 184, 42, 12) text("PULSE")
label bounds(74, 170, 40, 12) text("SAW")
label bounds(74, 184, 40, 12) text("TOOTH")
label bounds(144, 184, 40, 12) text("SUB")
label bounds(190, 196, 50, 12) text("LEVEL")
label bounds(242, 196, 50, 12) text("LEVEL")
label bounds(312, 204, 40, 12) text("PWM")
label bounds(354, 194, 40, 12) text("PWM")
label bounds(354, 204, 40, 13) text("RATE")
label bounds(560, 154, 80, 16) text("VCF")
label bounds(484, 204, 50, 12) text("FREQ")
label bounds(534, 204, 50, 12) text("RES")
label bounds(586, 204, 40, 12) text("LFO")
label bounds(630, 204, 40, 12) text("ENV")
label bounds(692, 192, 50, 12) text("MODE")
label bounds(744, 184, 40, 12) text("KEY")
label bounds(740, 196, 50, 12) text("FOLLOW")
label bounds(10, 360, 40, 12) text("LEVEL")
label bounds(80, 340, 40, 12) text("ENV")
label bounds(74, 352, 50, 12) text("MODE")
label bounds(240, 362, 40, 12) text("RATE")
label bounds(464, 322, 80, 16) text("ENV")
label bounds(310, 362, 40, 12) text("T1")
label bounds(358, 362, 40, 12) text("L1")
label bounds(406, 362, 40, 12) text("T2")
label bounds(454, 362, 40, 12) text("L2")
label bounds(502, 362, 40, 12) text("T3")
label bounds(550, 362, 40, 12) text("L3")
label bounds(598, 362, 40, 12) text("T4")
label bounds(644, 352, 40, 12) text("KEY")
label bounds(640, 362, 50, 12) text("FOLLOW")



groupbox bounds(496, 4, 297, 49),  outlinecolour(160, 160, 160, 0) {
image     file("imgs/panel.png") bounds(0, 0, 295, 47)
image     file("imgs/backlcd.png") alpha(0) bounds(0, 2, 295, 47) identchannel("backled")
image     file("imgs/lcdcharsv3.png") alpha(0.7) bounds(3, 11, 18, 27) identchannel("pos0")
image     file("imgs/lcdcharsv3.png") alpha(0.7) bounds(21, 11, 18, 27) identchannel("pos1")
image     file("imgs/lcdcharsv3.png") alpha(0.7) bounds(39, 11, 18, 27) identchannel("pos2")
image     file("imgs/lcdcharsv3.png") alpha(0.7) bounds(58, 11, 18, 27) identchannel("pos3")
image     file("imgs/lcdcharsv3.png") alpha(0.7) bounds(76, 11, 18, 27) identchannel("pos4")
image     file("imgs/lcdcharsv3.png") alpha(0.7) bounds(94, 11, 18, 27) identchannel("pos5")
image     file("imgs/lcdcharsv3.png") alpha(0.7) bounds(112, 11, 18, 27) identchannel("pos6")
image     file("imgs/lcdcharsv3.png") alpha(0.7) bounds(131, 11, 18, 27) identchannel("pos7")
image     file("imgs/lcdcharsv3.png") alpha(0.7) bounds(149, 11, 18, 27) identchannel("pos8")
image     file("imgs/lcdcharsv3.png") alpha(0.7) bounds(167, 11, 18, 27) identchannel("pos9")
image     file("imgs/lcdcharsv3.png") alpha(0.7) bounds(185, 11, 18, 27) identchannel("pos10")
image     file("imgs/lcdcharsv3.png") alpha(0.7) bounds(203, 11, 18, 27) identchannel("pos11")
image     file("imgs/lcdcharsv3.png") alpha(0.7) bounds(222, 11, 18, 27) identchannel("pos12")
image     file("imgs/lcdcharsv3.png") alpha(0.7) bounds(240, 11, 18, 27) identchannel("pos13")
image     file("imgs/lcdcharsv3.png") alpha(0.7) bounds(258, 11, 18, 27) identchannel("pos14")
image     file("imgs/lcdcharsv3.png") alpha(0.7) bounds(276, 11, 18, 27) identchannel("pos15")
image     file("imgs/alpha.png") bounds(0, 0, 295, 47) identchannel("light") alpha(0.7)
}

groupbox bounds(493, 56, 305, 90),  outlinecolour(160, 160, 160, 0) colour(35, 35, 35, 0) {
button bounds(4, 19, 31, 17)  colour:0(118, 118, 118, 255) text("1", "1") colour:1(255, 0, 0, 255) channel("btb1") radiogroup("btbank") value(1)
button bounds(41, 19, 31, 17)  colour:0(118, 118, 118, 255) text("2", "2") colour:1(255, 0, 0, 255) channel("btb2") radiogroup("btbank") 
button bounds(78, 19, 31, 17) colour:0(118, 118, 118, 255) text("3", "3") colour:1(255, 0, 0, 255) channel("btb3") radiogroup("btbank") 
button bounds(115, 19, 31, 17) colour:0(118, 118, 118, 255) text("4", "4") colour:1(255, 0, 0, 255) channel("btb4") radiogroup("btbank") 
button bounds(153, 19, 31, 17) colour:0(118, 118, 118, 255) text("5", "5") colour:1(255, 0, 0, 255) channel("btb5") radiogroup("btbank") 
button bounds(189, 19, 31, 17) colour:0(118, 118, 118, 255) text("6", "6") colour:1(255, 0, 0, 255) channel("btb6") radiogroup("btbank") 
button bounds(226, 19, 31, 17) colour:0(118, 118, 118, 255) text("7", "7") colour:1(255, 0, 0, 255) channel("btb7") radiogroup("btbank") 
button bounds(264, 19, 31, 17) colour:0(118, 118, 118, 255) text("8", "8") colour:1(255, 0, 0, 255) channel("btb8") radiogroup("btbank") 

button bounds(4, 64, 31, 17)  colour:0(118, 118, 118, 255) text("1", "1") colour:1(255, 0, 0, 255) channel("btn1") radiogroup("btnumber")  value(1)
button bounds(41, 64, 31, 17)  colour:0(118, 118, 118, 255) text("2", "2") colour:1(255, 0, 0, 255) channel("btn2") radiogroup("btnumber") 
button bounds(78, 64, 31, 17) colour:0(118, 118, 118, 255) text("3", "3") colour:1(255, 0, 0, 255) channel("btn3") radiogroup("btnumber") 
button bounds(115, 64, 31, 17) colour:0(118, 118, 118, 255) text("4", "4") colour:1(255, 0, 0, 255) channel("btn4") radiogroup("btnumber") 
button bounds(153, 64, 31, 17) colour:0(118, 118, 118, 255) text("5", "5") colour:1(255, 0, 0, 255) channel("btn5") radiogroup("btnumber") 
button bounds(189, 64, 31, 17) colour:0(118, 118, 118, 255) text("6", "6") colour:1(255, 0, 0, 255) channel("btn6") radiogroup("btnumber") 
button bounds(226, 64, 31, 17) colour:0(118, 118, 118, 255) text("7", "7") colour:1(255, 0, 0, 255) channel("btn7") radiogroup("btnumber") 
button bounds(264, 64, 31, 17) colour:0(118, 118, 118, 255) text("8", "8") colour:1(255, 0, 0, 255) channel("btn8") radiogroup("btnumber") 

button bounds(205, 10, 72, 1) colour:0(255, 0, 0, 255)  colour:1(255, 0, 0, 255) radiogroup("666") 
button bounds(10, 10, 72, 1) colour:0(255, 0, 0, 255) colour:1(255, 0, 0, 255) radiogroup("666") 
button bounds(205, 53, 72, 1) colour:0(255, 0, 0, 255)  colour:1(255, 0, 0, 255) radiogroup("666") 
button bounds(10, 53, 72, 1) colour:0(255, 0, 0, 255) colour:1(255, 0, 0, 255) radiogroup("666")  

label bounds(74, 3, 142, 11) text("BANK") fontcolour(255, 0, 0, 255) 
label bounds(74, 46, 142, 11) text("NUMBER") fontcolour(255, 0, 0, 255) 

}


image bounds(286, 92, 25, 16)  file("imgs/adsrn.png")
image bounds(286, 108, 25, 16) file("imgs/adsri.png")
image bounds(286, 126, 25, 16) file("imgs/adsrn.png")
image bounds(286, 142, 25, 16) file("imgs/adsri.png")


image bounds(8, 196, 25, 16) file("imgs/sq_3.png")
image bounds(8, 214, 25, 16) file("imgs/sq_2.png")
image bounds(8, 232, 25, 16) file("imgs/sq_1.png")
label bounds(7, 250, 28, 12) text("OFF")

image bounds(62, 196, 25, 16) file("imgs/tri_5.png")
image bounds(62, 214, 25, 16) file("imgs/tri_4.png")
image bounds(62, 232, 25, 16) file("imgs/tri_3.png")
image bounds(62, 250, 25, 16) file("imgs/tri_2.png")
image bounds(62, 268, 25, 16) file("imgs/tri_1.png")
label bounds(62, 286, 28, 12) text("OFF")

image bounds(116, 196, 40, 16) file("imgs/sub6.png")
image bounds(116, 214, 40, 16) file("imgs/sub5.png")
image bounds(116, 232, 40, 16) file("imgs/sub4.png")
image bounds(116, 250, 40, 16) file("imgs/sub3.png")
image bounds(116, 268, 40, 16) file("imgs/sub2.png")
image bounds(116, 286, 40, 16) file("imgs/sub1.png")

label bounds(176, 380, 28, 12) text("ON") align("right")
label bounds(176, 406, 28, 12) text("OFF") align("right")

image bounds(62, 366, 25, 16) file("imgs/adsrn.png")
image bounds(62, 382, 25, 16) file("imgs/gaten.png")
image bounds(62, 398, 25, 16) file("imgs/adsrn.png")
image bounds(62, 414, 25, 16) file("imgs/gaten.png")


image bounds(682, 208, 25, 16) file("imgs/adsrn.png")
image bounds(682, 224, 25, 16) file("imgs/adsri.png")
image bounds(682, 240, 25, 16) file("imgs/adsrn.png")
label bounds(678, 256, 28, 12) text("dyn") align("right")




label bounds(134, 96, 20, 12) text("32") align("right")
label bounds(134, 112, 20, 12) text("16") align("right")
label bounds(134, 128, 20, 12) text("8") align("right")
label bounds(134, 144, 20, 12) text("4") align("right")

label bounds(184, 210, 20, 12) text("3") align("right")
label bounds(184, 226, 20, 12) text("2") align("right")
label bounds(184, 242, 20, 12) text("1") align("right")
label bounds(184, 258, 20, 12) text("0") align("right")

label bounds(234, 210, 20, 12) text("3") align("right")
label bounds(234, 226, 20, 12) text("2") align("right")
label bounds(234, 242, 20, 12) text("1") align("right")
label bounds(234, 258, 20, 12) text("0") align("right")

label bounds(408, 222, 20, 12) text("3") align("right")
label bounds(408, 238, 20, 12) text("2") align("right")
label bounds(408, 254, 20, 12) text("1") align("right")
label bounds(408, 270, 20, 12) text("0") align("right")

filebutton bounds(460, 118, 31, 21) mode("file") populate("*.SYX") text("...") channel ("openFile")

image bounds(716, 248, 20, 46)  file("imgs/dyn-link2.png")
image bounds(322, 132, 20, 46)  file("imgs/dyn-link2.png")
image bounds(98, 406, 20, 46)  file("imgs/dyn-link2.png")


label bounds(254, 162, 70, 12) text("DYNAMICS") align("right")
label bounds(648, 278, 70, 12) text("DYNAMICS") align("right")
label bounds(30, 436, 70, 12) text("DYNAMICS") align("right")


label bounds(404, 20, 50, 12) text("light") align("right")
</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -d -+rtmidi=NULL -M0 -m0d --midi-key-cps=4 --midi-velocity-amp=5 --midi-velocity=6
</CsOptions>
<CsInstruments>

; Initialize the global variables. 
sr=44100
kr=4410
ksmps = 10
nchnls = 2
0dbfs = 1

// ---------------------------------------------------------------------------------------------------------------
// Global variables
// ---------------------------------------------------------------------------------------------------------------


// Values of lfo amplitude in % of frequency when applied to DCO from 0-127 for "DCO LFO"
// NB : I  interpolated those values from my 30 years old Juno-2, results weren't stable between measures...
gilfovals[] fillarray 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.001567, 0.003348, 0.005130, 
                      0.006911, 0.008692, 0.010473, 0.012254, 0.014036, 0.015817, 0.017598, 0.019379, 
                      0.021160, 0.022942, 0.024723, 0.026504, 0.028285, 0.029891, 0.031496, 0.033101, 
                      0.034707, 0.036312, 0.037918, 0.039523, 0.041128, 0.042734, 0.044339, 0.045998, 
                      0.047657, 0.049316, 0.050975, 0.052634, 0.054292, 0.055951, 0.057610, 0.059269, 
                      0.060928, 0.062511, 0.064093, 0.065675, 0.067258, 0.068840, 0.070423, 0.072005, 
                      0.073588, 0.075170, 0.076753, 0.078404, 0.080055, 0.081706, 0.083358, 0.085009, 
                      0.086660, 0.088311, 0.089963, 0.091614, 0.093265, 0.095941, 0.098616, 0.101292, 
                      0.103968, 0.106643, 0.109319, 0.111994, 0.114670, 0.117346, 0.120021, 0.123462, 
                      0.126902, 0.130342, 0.133782, 0.137222, 0.140662, 0.144102, 0.147542, 0.150982, 
                      0.154422, 0.157786, 0.161150, 0.164513, 0.167877, 0.171241, 0.174604, 0.177968, 
                      0.181332, 0.184695, 0.188059, 0.192952, 0.197844, 0.202737, 0.207629, 0.212522, 
                      0.217415, 0.222307, 0.227200, 0.232092, 0.236985, 0.244003, 0.251021, 0.258038, 
                      0.265056, 0.272074, 0.279092, 0.286110, 0.293127, 0.300145, 0.307163, 0.313822, 
                      0.320480, 0.327139, 0.333797, 0.340456, 0.347114, 0.353773, 0.360431, 0.367090, 
                      0.373748, 0.381480, 0.389212, 0.396944, 0.404676, 0.412408, 0.420140, 0.427872
                      
// Values of lfo delay in sec from 0-127 "LFO DLY"
// approximate formula used:  exp([LDO DLY]/14.2-3)/10
// NB : I  extrapolated those values from my 30 years old Juno-2, results weren't stable between measures...
gilfodels[] fillarray 0.069000, 0.064100, 0.059200, 0.054300, 0.049400, 0.044500, 0.039600, 0.034700, 
                      0.029800, 0.024900, 0.020000, 0.018300, 0.016600, 0.014900, 0.013200, 0.011500, 
                      0.009800, 0.008100, 0.006400, 0.004700, 0.003000, 0.007500, 0.012000, 0.016500, 
                      0.021000, 0.025500, 0.030000, 0.034500, 0.039000, 0.043500, 0.048000, 0.053200, 
                      0.058400, 0.063600, 0.068800, 0.074000, 0.079200, 0.084400, 0.089600, 0.094800, 
                      0.100000, 0.104600, 0.109200, 0.113800, 0.118400, 0.123000, 0.127600, 0.132200, 
                      0.136800, 0.141400, 0.146000, 0.161000, 0.176000, 0.191000, 0.206000, 0.221000, 
                      0.236000, 0.251000, 0.266000, 0.281000, 0.296000, 0.368500, 0.441000, 0.513500, 
                      0.586000, 0.658500, 0.731000, 0.803500, 0.876000, 0.948500, 1.021000, 1.036400, 
                      1.051800, 1.067200, 1.082600, 1.098000, 1.113400, 1.128800, 1.144200, 1.159600, 
                      1.175000, 1.289800, 1.404600, 1.519400, 1.634200, 1.749000, 1.863800, 1.978600, 
                      2.093400, 2.208200, 2.323000, 2.538500, 2.754000, 2.969500, 3.185000, 3.400500, 
                      3.616000, 3.831500, 4.047000, 4.262500, 4.478000, 5.092500, 5.707000, 6.321500, 
                      6.936000, 7.550500, 8.165000, 8.779500, 9.394000, 10.008500, 10.623000, 11.799300, 
                      12.975600, 14.151900, 15.328200, 16.504500, 17.680800, 18.857100, 20.033400, 21.209700, 
                      22.386000, 23.986286, 25.586571, 27.186857, 28.787143, 30.387429, 31.987714, 33.588000

// Primary LFO rate
gilforate[] fillarray 0.000411, 0.003560, 0.006709, 0.009858, 0.013007, 0.016156, 0.019305, 0.022454, 
                      0.025603, 0.028752, 0.031901, 0.035050, 0.038199, 0.041348, 0.044497, 0.047646, 
                      0.050795, 0.053944, 0.057093, 0.060242, 0.063391, 0.069015, 0.074639, 0.080263, 
                      0.085887, 0.091511, 0.097135, 0.102760, 0.108384, 0.114008, 0.119632, 0.131495, 
                      0.143358, 0.155222, 0.167085, 0.178948, 0.190812, 0.202675, 0.214539, 0.226402, 
                      0.238265, 0.258837, 0.279409, 0.299981, 0.320553, 0.341125, 0.361697, 0.382268, 
                      0.402840, 0.423412, 0.443984, 0.488356, 0.532728, 0.577100, 0.621473, 0.665845, 
                      0.710217, 0.754589, 0.798961, 0.843333, 0.887705, 0.964156, 1.040606, 1.117057, 
                      1.193507, 1.269958, 1.346408, 1.422858, 1.499309, 1.575759, 1.652210, 1.808662, 
                      1.965113, 2.121565, 2.278017, 2.434468, 2.590920, 2.747372, 2.903824, 3.060275, 
                      3.216727, 3.504346, 3.791965, 4.079584, 4.367203, 4.654822, 4.942441, 5.230060, 
                      5.517679, 5.805298, 6.092917, 6.706867, 7.320817, 7.934767, 8.548717, 9.162666, 
                      9.776616, 10.390566, 11.004516, 11.618466, 12.232416, 13.054164, 13.875912, 14.697660, 
                      15.519409, 16.341157, 17.162905, 17.984653, 18.806401, 19.628150, 20.449898, 23.069631, 
                      25.689364, 28.309098, 30.928831, 33.548564, 36.168297, 38.788031, 41.407764, 44.027497, 
                      46.647230, 49.266964, 51.886697, 54.506430, 57.126163, 59.745897, 62.365630, 64.985363
                      

// Rates for 
gipwmrate[] fillarray 0.000000, 0.002994, 0.005988, 0.008982, 0.011976, 0.014970, 0.017964, 0.020958, 
                      0.023952, 0.026946, 0.029940, 0.032223, 0.034506, 0.036789, 0.039072, 0.041355, 
                      0.043638, 0.045921, 0.048204, 0.050487, 0.052770, 0.056668, 0.060565, 0.064462, 
                      0.068360, 0.072257, 0.076154, 0.080051, 0.083949, 0.087846, 0.091743, 0.098255, 
                      0.104767, 0.111279, 0.117791, 0.124303, 0.130815, 0.137327, 0.143839, 0.150351, 
                      0.156863, 0.168424, 0.179986, 0.191548, 0.203109, 0.214671, 0.226233, 0.237795, 
                      0.249356, 0.260918, 0.272480, 0.298329, 0.324178, 0.350028, 0.375877, 0.401727, 
                      0.427576, 0.453425, 0.479275, 0.505124, 0.530973, 0.561608, 0.592243, 0.622878, 
                      0.653512, 0.684147, 0.714782, 0.745416, 0.776051, 0.806686, 0.837321, 0.906650, 
                      0.975979, 1.045308, 1.114637, 1.183966, 1.253296, 1.322625, 1.391954, 1.461283, 
                      1.530612, 1.645408, 1.760204, 1.875000, 1.989796, 2.104592, 2.219388, 2.334184, 
                      2.448980, 2.563776, 2.678571, 2.828571, 2.978571, 3.128571, 3.278571, 3.428571, 
                      3.686810, 3.945048, 4.203287, 4.461525, 4.719764, 5.009744, 5.299725, 5.589705, 
                      5.879685, 6.169666, 6.497294, 6.824923, 7.152551, 7.480179, 7.807808, 8.272163, 
                      8.736519, 9.200874, 9.665229, 10.129585, 10.593940, 11.058296, 11.522651, 11.987006, 
                      12.451362, 13.591026, 14.730690, 15.870354, 17.010017, 18.149681, 19.289345, 20.429009



// vcffreq values 0-127
givcffreq[] fillarray   11.528952, 11.747088, 11.965224, 12.18336, 12.401496, 12.619632, 12.837768, 13.055904, 
                        13.27404, 13.492176, 13.710312, 14.3935066, 15.0767012, 15.7598958, 16.4430904, 17.126285, 
                        17.8094796, 18.4926742, 19.1758688, 19.8590634, 20.542258, 22.3658941, 24.1895302, 26.0131663, 
                        27.8368024, 29.6604385, 31.4840746, 33.3077107, 35.1313468, 36.9549829, 38.778619, 41.8103215, 
                        44.842024, 47.8737265, 50.905429, 53.9371315, 56.968834, 60.0005365, 63.032239, 66.0639415, 
                        69.095644, 76.8269366, 84.5582292, 92.2895218, 100.0208144, 107.752107, 115.4833996, 123.2146922, 
                        130.9459848, 138.6772774, 146.40857, 162.7906082, 179.1726464, 195.5546846, 211.9367228, 228.318761, 
                        244.7007992, 261.0828374, 277.4648756, 293.8469138, 310.228952, 331.3801396, 352.5313272, 373.6825148, 
                        394.8337024, 415.98489, 437.1360776, 458.2872652, 479.4384528, 500.5896404, 521.740828, 584.6627719, 
                        647.5847157, 710.5066596, 773.4286034, 836.3505473, 899.2724911, 962.194435, 1025.116379, 1088.038323, 
                        1150.960267, 1293.452801, 1435.945335, 1578.437869, 1720.930403, 1863.422937, 2005.915472, 2148.408006, 
                        2290.90054, 2433.393074, 2575.885608, 2757.56804, 2939.250473, 3120.932905, 3302.615337, 3484.297769, 
                        3665.980201, 3847.662633, 4029.345065, 4211.027497, 4392.70993, 4903.120438, 5413.530946, 5923.941455, 
                        6434.351963, 6944.762471, 7455.17298, 7965.583488, 8475.993997, 8986.404505, 9496.815013, 10007.22552, 
                        10517.63603, 11062.20447, 11606.7729, 12151.34134, 12695.90977, 13240.47821, 13785.04664, 14329.61508, 
                        14874.18351, 15276.22656, 15678.26961, 16080.31266, 16482.35571, 16884.39876, 17286.44181, 17688.48486
                      


giFac = 1
gienvt1[] fillarray     0.004187 * giFac, 0.004487 * giFac, 0.004809 * giFac, 0.005154 * giFac, 0.005524 * giFac, 0.005921 * giFac, 0.006346 * giFac, 0.006801 * giFac, 0.007289 * giFac, 0.007812 * giFac, 
                        0.008373 * giFac, 0.008974 * giFac, 0.009618 * giFac, 0.010309 * giFac, 0.011049 * giFac, 0.011842 * giFac, 0.012691 * giFac, 0.013602 * giFac, 0.014579 * giFac, 0.015625 * giFac, 
                        0.016746 * giFac, 0.017948 * giFac, 0.019237 * giFac, 0.020617 * giFac, 0.022097 * giFac, 0.023683 * giFac, 0.025383 * giFac, 0.027205 * giFac, 0.029157 * giFac, 0.031250 * giFac, 
                        0.033493 * giFac, 0.035897 * giFac, 0.038473 * giFac, 0.041235 * giFac, 0.044194 * giFac, 0.047366 * giFac, 0.050766 * giFac, 0.054409 * giFac, 0.058315 * giFac, 0.062500 * giFac, 
                        0.066986 * giFac, 0.071794 * giFac, 0.076947 * giFac, 0.082469 * giFac, 0.088388 * giFac, 0.094732 * giFac, 0.101532 * giFac, 0.108819 * giFac, 0.116629 * giFac, 0.125000 * giFac, 
                        0.133972 * giFac, 0.143587 * giFac, 0.153893 * giFac, 0.164938 * giFac, 0.176777 * giFac, 0.189465 * giFac, 0.203063 * giFac, 0.217638 * giFac, 0.233258 * giFac, 0.250000 * giFac, 
                        0.267943 * giFac, 0.287175 * giFac, 0.307786 * giFac, 0.329877 * giFac, 0.353553 * giFac, 0.378929 * giFac, 0.406126 * giFac, 0.435275 * giFac, 0.466516 * giFac, 0.500000 * giFac, 
                        0.535887 * giFac, 0.574349 * giFac, 0.615572 * giFac, 0.659754 * giFac, 0.707107 * giFac, 0.757858 * giFac, 0.812252 * giFac, 0.870551 * giFac, 0.933033 * giFac, 1.000000 * giFac, 
                        1.071773 * giFac, 1.148698 * giFac, 1.231144 * giFac, 1.319508 * giFac, 1.414214 * giFac, 1.515717 * giFac, 1.624505 * giFac, 1.741101 * giFac, 1.866066 * giFac, 2.000000 * giFac, 
                        2.143547 * giFac, 2.297397 * giFac, 2.462289 * giFac, 2.639016 * giFac, 2.828427 * giFac, 3.031433 * giFac, 3.249010 * giFac, 3.482202 * giFac, 3.732132 * giFac, 4.000000 * giFac, 
                        4.287094 * giFac, 4.594793 * giFac, 4.924578 * giFac, 5.278032 * giFac, 5.656854 * giFac, 6.062866 * giFac, 6.498019 * giFac, 6.964405 * giFac, 7.464264 * giFac, 8.000000 * giFac, 
                        8.574188 * giFac, 9.189587 * giFac, 9.849155 * giFac, 10.556063 * giFac, 11.313709 * giFac, 12.125733 * giFac, 12.996038 * giFac, 13.928809 * giFac, 14.928528 * giFac, 
                        16.000000 * giFac, 17.148375 * giFac, 18.379174 * giFac, 19.698311 * giFac, 21.112127 * giFac, 22.627417 * giFac, 24.251465 * giFac, 25.992077

// env T3
gienvt3[] fillarray     0.090000 * giFac, 0.097000 * giFac, 0.104000 * giFac, 0.111000 * giFac, 0.118000 * giFac, 0.125000 * giFac, 0.132000 * giFac, 0.139000 * giFac, 
                        0.146000 * giFac, 0.153000 * giFac, 0.160000 * giFac, 0.164000 * giFac, 0.168000 * giFac, 0.172000 * giFac, 0.176000 * giFac, 0.180000 * giFac, 
                        0.184000 * giFac, 0.188000 * giFac, 0.192000 * giFac, 0.196000 * giFac, 0.200000 * giFac, 0.205000 * giFac, 0.210000 * giFac, 0.215000 * giFac, 
                        0.220000 * giFac, 0.225000 * giFac, 0.230000 * giFac, 0.235000 * giFac, 0.240000 * giFac, 0.245000 * giFac, 0.250000 * giFac, 0.258000 * giFac, 
                        0.266000 * giFac, 0.274000 * giFac, 0.282000 * giFac, 0.290000 * giFac, 0.298000 * giFac, 0.306000 * giFac, 0.314000 * giFac, 0.322000 * giFac, 
                        0.330000 * giFac, 0.348000 * giFac, 0.366000 * giFac, 0.384000 * giFac, 0.402000 * giFac, 0.420000 * giFac, 0.438000 * giFac, 0.456000 * giFac, 
                        0.474000 * giFac, 0.492000 * giFac, 0.510000 * giFac, 0.539000 * giFac, 0.568000 * giFac, 0.597000 * giFac, 0.626000 * giFac, 0.655000 * giFac, 
                        0.684000 * giFac, 0.713000 * giFac, 0.742000 * giFac, 0.771000 * giFac, 0.800000 * giFac, 0.858000 * giFac, 0.916000 * giFac, 0.974000 * giFac, 
                        1.032000 * giFac, 1.090000 * giFac, 1.148000 * giFac, 1.206000 * giFac, 1.264000 * giFac, 1.322000 * giFac, 1.380000 * giFac, 1.545000 * giFac, 
                        1.710000 * giFac, 1.875000 * giFac, 2.040000 * giFac, 2.205000 * giFac, 2.370000 * giFac, 2.535000 * giFac, 2.700000 * giFac, 2.865000 * giFac, 
                        3.030000 * giFac, 3.595000 * giFac, 4.160000 * giFac, 4.725000 * giFac, 5.290000 * giFac, 5.855000 * giFac, 6.420000 * giFac, 6.985000 * giFac, 
                        7.550000 * giFac, 8.115000 * giFac, 8.680000 * giFac, 9.224000 * giFac, 9.768000 * giFac, 10.312000 * giFac, 10.856000 * giFac, 11.400000 * giFac, 
                        11.864000 * giFac, 12.328000 * giFac, 12.792000 * giFac, 13.256000 * giFac, 13.720000 * giFac, 14.447500 * giFac, 15.175000 * giFac, 15.902500 * giFac, 
                        16.630000 * giFac, 17.357500 * giFac, 18.085000 * giFac, 18.812500 * giFac, 19.540000 * giFac, 20.267500 * giFac, 20.995000 * giFac, 22.048500 * giFac, 
                        23.102000 * giFac, 24.155500 * giFac, 25.209000 * giFac, 26.262500 * giFac, 27.316000 * giFac, 28.369500 * giFac, 29.423000 * giFac, 30.476500 * giFac, 
                        31.530000 * giFac, 32.394286 * giFac, 33.258571 * giFac, 34.122857 * giFac, 34.987143 * giFac, 35.851429 * giFac, 36.715714 * giFac, 37.580000


// ent T4 values 0-127 
gienvt4[] fillarray     0.007000, 0.009300, 0.011600, 0.013900, 0.016200, 0.018500, 0.020800, 0.023100, //7
                        0.025400, 0.027700, 0.030000, 0.034400, 0.038800, 0.043200, 0.047600, 0.052000, //15
                        0.056400, 0.060800, 0.065200, 0.069600, 0.074000, 0.083100, 0.092200, 0.101300, //
                        0.110400, 0.119500, 0.128600, 0.137700, 0.146800, 0.155900, 0.165000, 0.184100, //31
                        0.203200, 0.222300, 0.241400, 0.260500, 0.279600, 0.298700, 0.317800, 0.336900, 
                        0.356000, 0.394400, 0.432800, 0.471200, 0.509600, 0.548000, 0.586400, 0.624800, 
                        0.663200, 0.701600, 0.740000, 0.808000, 0.876000, 0.944000, 1.012000, 1.080000, 
                        1.148000, 1.216000, 1.284000, 1.352000, 1.420000, 1.541000, 1.662000, 1.783000,  // 63
                        1.904000, 2.025000, 2.146000, 2.267000, 2.388000, 2.509000, 2.630000, 2.887000, 
                        3.144000, 3.401000, 3.658000, 3.915000, 4.172000, 4.429000, 4.686000, 4.943000, 
                        5.200000, 5.520000, 5.840000, 6.160000, 6.480000, 6.800000, 7.120000, 7.440000, 
                        7.760000, 8.080000, 8.400000, 8.909000, 9.418000, 9.927000, 10.436000, 10.945000, 
                        11.454000, 11.963000, 12.472000, 12.981000, 13.490000, 14.243000, 14.996000, 15.749000, 
                        16.502000, 17.255000, 18.008000, 18.761000, 19.514000, 20.267000, 21.020000, 22.101000, 
                        23.182000, 24.263000, 25.344000, 26.425000, 27.506000, 28.587000, 29.668000, 30.749000, 
                        31.830000, 32.902857, 33.975714, 35.048571, 36.121429, 37.194286, 38.267143, 39.340000



// dco env "a" value 
gidcoenva[] fillarray  0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0.01475 ,0.015234375 ,0.01571875 ,0.016203125 ,0.0166875 ,0.017171875 ,0.01765625 ,0.018140625 ,0.018625 ,0.019109375 ,0.01959375 ,0.020078125 ,0.0205625 ,0.021046875 ,0.02153125 ,0.022015625 ,0.0225 ,0.023075 ,0.02365 ,0.024225 ,0.0248 ,0.025375 ,0.02595 ,0.026525 ,0.0271 ,0.027675 ,0.02825 ,0.028995 ,0.02974 ,0.030485 ,0.03123 ,0.031975 ,0.03272 ,0.033465 ,0.03421 ,0.034955 ,0.0357 ,0.03665 ,0.0376 ,0.03855 ,0.0395 ,0.04045 ,0.0414 ,0.04235 ,0.0433 ,0.04425 ,0.0452 ,0.04620105882 ,0.04720211765 ,0.04820317647 ,0.04920423529 ,0.05020529412 ,0.05120635294 ,0.05220741176 ,0.05320847059 ,0.05420952941 ,0.05521058824 ,0.05621164706 ,0.05721270588 ,0.05821376471 ,0.05921482353 ,0.06021588235 ,0.06121694118 ,0.062218 

// dco env "b" value                                              
gidcoenvb[] fillarray  0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,0 ,2.132 ,2.1325625 ,2.133125 ,2.1336875 ,2.13425 ,2.1348125 ,2.135375 ,2.1359375 ,2.1365 ,2.1370625 ,2.137625 ,2.1381875 ,2.13875 ,2.1393125 ,2.139875 ,2.1404375 ,2.141 ,2.14082 ,2.14064 ,2.14046 ,2.14028 ,2.1401 ,2.13992 ,2.13974 ,2.13956 ,2.13938 ,2.1392 ,2.14048 ,2.14176 ,2.14304 ,2.14432 ,2.1456 ,2.14688 ,2.14816 ,2.14944 ,2.15072 ,2.152 ,2.1533 ,2.1546 ,2.1559 ,2.1572 ,2.1585 ,2.1598 ,2.1611 ,2.1624 ,2.1637 ,2.165 ,2.165832153 ,2.166664307 ,2.16749646 ,2.168328613 ,2.169160766 ,2.16999292 ,2.170825073 ,2.171657226 ,2.172489379 ,2.173321533 ,2.174153686 ,2.174985839 ,2.175817992 ,2.176650146 ,2.177482299 ,2.178314452 ,2.179146605


gicrsrate[] fillarray  0, 0.004839651931 ,0.005965252815 ,0.007090853698 ,0.008216454581 ,0.009342055464 ,0.01046765635 ,0.01159325723 ,0.01271885811 ,
                       0.013844459 ,0.01497005988 ,0.01609566076 ,0.01722126165 ,0.01834686253 ,0.01947246341 ,0.0205980643 ,0.02172366518 ,
                       0.02284926606 ,0.02397486695 ,0.02510046783 ,0.02622606871 ,0.02809986472 ,0.02997366073 ,0.03184745673 ,0.03372125274 ,
                       0.03559504874 ,0.03746884475 ,0.03934264076 ,0.04121643676 ,0.04309023277 ,0.04496402878 ,0.04868455277 ,0.05240507676 ,
                       0.05612560075 ,0.05984612474 ,0.06356664874 ,0.06728717273 ,0.07100769672 ,0.07472822071 ,0.0784487447 ,0.08216926869 ,
                       0.08742943077 ,0.09268959285 ,0.09794975493 ,0.103209917 ,0.1084700791 ,0.1137302412 ,0.1189904032 ,0.1242505653 ,
                       0.1295107274 ,0.1347708895 ,0.1452746159 ,0.1557783423 ,0.1662820687 ,0.1767857951 ,0.1872895215 ,0.1977932479 ,
                       0.2082969743 ,0.2188007007 ,0.2293044271 ,0.2398081535 ,0.2577736469 ,0.2757391402 ,0.2937046336 ,0.311670127 ,
                       0.3296356204 ,0.3476011137 ,0.3655666071 ,0.3835321005 ,0.4014975939 ,0.4194630872 ,0.4552168562 ,0.4909706252 ,
                       0.5267243942 ,0.5624781631 ,0.5982319321 ,0.6339857011 ,0.6697394701 ,0.7054932391 ,0.741247008 ,0.777000777 ,
                       0.8356643357 ,0.8943278943 ,0.952991453 ,1.011655012 ,1.07031857 ,1.128982129 ,1.187645688 ,1.246309246 ,
                       1.304972805 ,1.363636364 ,1.441941779 ,1.520247195 ,1.59855261 ,1.676858026 ,1.755163441 ,1.833468857 ,
                       1.911774272 ,1.990079688 ,2.068385103 ,2.146690519 ,2.355053194 ,2.56341587 ,2.771778545 ,2.980141221 ,
                       3.188503896 ,3.396866572 ,3.605229247 ,3.813591923 ,4.021954598 ,4.230317274 ,4.530177113 ,4.830036952 ,
                       5.12989679 ,5.429756629 ,5.729616468 ,6.029476307 ,6.329336146 ,6.629195985 ,6.929055824 ,7.228915663 ,
                       7.66141489 ,8.093914118 ,8.526413346 ,8.958912573 ,9.391411801 ,9.823911029 ,10.25641026 

gidynVcaRes[] fillarray 0.187 ,0.1928888889 ,0.1987777778 ,0.2046666667 ,0.2105555556 ,0.2164444444 ,0.2223333333 ,0.2282222222 ,
                        0.2341111111 ,0.24 ,0.2443 ,0.2486 ,0.2529 ,0.2572 ,0.2615 ,0.2658 ,
                        0.2701 ,0.2744 ,0.2787 ,0.283 ,0.2883 ,0.2936 ,0.2989 ,0.3042 ,
                        0.3095 ,0.3148 ,0.3201 ,0.3254 ,0.3307 ,0.336 ,0.3413 ,0.3466 ,
                        0.3519 ,0.3572 ,0.3625 ,0.3678 ,0.3731 ,0.3784 ,0.3837 ,0.389 ,
                        0.3943 ,0.3996 ,0.4049 ,0.4102 ,0.4155 ,0.4208 ,0.4261 ,0.4314 ,
                        0.4367 ,0.442 ,0.4476 ,0.4532 ,0.4588 ,0.4644 ,0.47 ,0.4756 ,
                        0.4812 ,0.4868 ,0.4924 ,0.498 ,0.504 ,0.51 ,0.516 ,0.522 ,
                        0.528 ,0.534 ,0.54 ,0.546 ,0.552 ,0.558 ,0.5647 ,0.5714 ,
                        0.5781 ,0.5848 ,0.5915 ,0.5982 ,0.6049 ,0.6116 ,0.6183 ,0.625 ,
                        0.6318 ,0.6386 ,0.6454 ,0.6522 ,0.659 ,0.6658 ,0.6726 ,0.6794 ,
                        0.6862 ,0.693 ,0.7004 ,0.7078 ,0.7152 ,0.7226 ,0.73 ,0.7374 ,
                        0.7448 ,0.7522 ,0.7596 ,0.767 ,0.7744 ,0.7818 ,0.7892 ,0.7966 ,
                        0.804 ,0.8114 ,0.8188 ,0.8262 ,0.8336 ,0.841 ,0.8474 ,0.8538 ,
                        0.8602 ,0.8666 ,0.873 ,0.8794 ,0.8858 ,0.8922 ,0.8986 ,0.905 ,
                        0.9185714286 ,0.9321428571 ,0.9457142857 ,0.9592857143 ,0.9728571429 ,0.9864285714 ,1



// amplitude per oscilators
giAmp = 1



// Amplitude of pwm oscilation as a ratio



;Author: Iain McCurdy (2012)
;http://iainmccurdy.org/csound.html
opcode	StChorus,aa,aakkakk
	ainL,ainR,krate,kdepth,aoffset,kwidth,kmix	xin			;READ IN INPUT ARGUMENTS
	ilfoshape	ftgentmp	0, 0, 131072, 19, 1, 0.5, 0,  0.5	;POSITIVE DOMAIN ONLY SINE WAVE
	kporttime	linseg	0,0.001,0.02					;RAMPING UP PORTAMENTO VARIABLE
	kChoDepth	portk	kdepth*0.01, kporttime				;SMOOTH VARIABLE CHANGES WITH PORTK
	aChoDepth	interp	kChoDepth					;INTERPOLATE TO CREATE A-RATE VERSION OF K-RATE VARIABLE
	amodL 		osciliktp 	krate, ilfoshape, 0			;LEFT CHANNEL LFO
	amodR 		osciliktp 	krate, ilfoshape, kwidth*0.5		;THE PHASE OF THE RIGHT CHANNEL LFO IS ADJUSTABLE
	amodL		=		(amodL*aChoDepth)+aoffset			;RESCALE AND OFFSET LFO (LEFT CHANNEL)
	amodR		=		(amodR*aChoDepth)+aoffset			;RESCALE AND OFFSET LFO (RIGHT CHANNEL)
	aChoL		vdelay	ainL, amodL*1000, 1.2*1000			;CREATE VARYING DELAYED / CHORUSED SIGNAL (LEFT CHANNEL) 
	aChoR		vdelay	ainR, amodR*1000, 1.2*1000			;CREATE VARYING DELAYED / CHORUSED SIGNAL (RIGHT CHANNEL)
	aoutL		ntrpol 	ainL*0.6, aChoL*0.6, kmix			;MIX DRY AND WET SIGNAL (LEFT CHANNEL)
	aoutR		ntrpol 	ainR*0.6, aChoR*0.6, kmix			;MIX DRY AND WET SIGNAL (RIGHT CHANNEL)
			xout	aoutL * 2 ,aoutR * 2					;SEND AUDIO BACK TO CALLER INSTRUMENT
endop







// ----------------------------------------------------------------------------------------------------------------
// Begin of instrument
// ----------------------------------------------------------------------------------------------------------------
instr 1
  

// ----------------------------------------------------------------------------------------------------------------
; Gets
// ----------------------------------------------------------------------------------------------------------------
iLfoRate        chnget "lforate"  
iLfoDely        chnget "lfodely"  
iPulse          chnget "pulse"
//iPulse          = iPulse
iSawtooth       chnget "sawtooth"
iSawtooth       = iSawtooth
iSub            chnget "sub"
iSub             = iSub
iSubLvl         chnget "sublevl" 
//iSubLvl         = iSubLvl 
kpwpwm          chnget "pwpwm"
iNoisLvl        chnget "noislvl"
iNoisLvl         = iNoisLvl
iPwmRate        chnget "pwmrate"
iDcoRng         chnget "dcorng"
iDcoLfo         chnget "dcolfo"
iDcoEnvd        chnget "dcoenvd"
iDcoEnv         chnget "dcoenv"    
iDcoEnv = 3 - iDcoEnv   // slide upside down
iHpfFreq        chnget "hpffreq" 
//iHpfFreq        = iHpfFreq
iVcfFreq        chnget "vcffreq" 
iVcfReso        chnget "vcfreso" 
iVcfEnvd        chnget "vcfenvd" 
iVcfEnv         chnget "vcfenv" 
iVcfEnv = 3 - iVcfEnv   // slide upside down
iVcfKybd        chnget "vcfkybd"
iVcfLfo         chnget "vcflfo" 
iVcaEnvd        chnget "vcaenvd" 
iVcaEnv         chnget "vcaenv" 
iVcaEnv = 3 - iVcaEnv   // slide upside down
iEnvT1          chnget "envt1"
iEnvT2          chnget "envt2"
iEnvT3          chnget "envt3"
iEnvT4          chnget "envt4"
iEnvL1          chnget "envl1"
iEnvL2          chnget "envl2"
iEnvL3          chnget "envl3"
iChorus         chnget "chorus"
iCrsRate        chnget "crsrate"

giPostAmp      chnget "vcalevl"
giPreset       chnget "grpPreset"
giMemory       chnget "grpMemory"
giCartridge    chnget "grpCartridge"


// ----------------------------------------------------------------------------------------------------------------
// ENV Block 
// ----------------------------------------------------------------------------------------------------------------
//kres expon ia, idur, ib
//printf_i "courbe : %f %f %f %f %f %f %f \n",1, gienvt1[iEnvT1], iEnvL1, gienvt1[iEnvT2]*(iEnvL1-iEnvL2), iEnvL2, gienvt1[iEnvT3], iEnvL3, gienvt1[iEnvT4]

krel init 0
  krel release ;outputs release-stage flag (0 or 1 values)
  if (krel == 1) kgoto rel ;if in release-stage goto release section
        if (iEnvL1 > iEnvL2) then 
            //kEnv linsegr 0, gienvt1[iEnvT1], iEnvL1, gienvt1[iEnvT2*(iEnvL1-iEnvL2)], iEnvL2, gienvt4[iEnvT3], iEnvL3, gienvt4[iEnvT4],0
            kEnv  linsegr  0, gienvt1[iEnvT1], iEnvL1, gienvt1[iEnvT2], iEnvL2, gienvt3[iEnvT3], iEnvL3, gienvt4[iEnvT4],0
        else
   //    kEnv linsegr 0, gienvt1[iEnvT1], iEnvL1, gienvt1[iEnvT2*(iEnvL1-iEnvL2)/127], iEnvL2, gienvt3[iEnvT3], iEnvL3, gienvt4[iEnvT4],0
            kEnv linsegr 0, gienvt1[iEnvT1*iEnvL1/127], iEnvL1, gienvt1[iEnvT2], iEnvL2, gienvt4[iEnvT3], iEnvL3, gienvt4[iEnvT4],0
        endif 
  
    //kEnv  linsegr  0, gienvt1[iEnvT1], iEnvL1, gienvt1[iEnvT2], iEnvL2, gienvt3[iEnvT3], iEnvL3, gienvt4[iEnvT4],0
    kEnvL = kEnv / 127
    kEnvVCF = kEnv
    kEnvG  linsegr 0, 0.0001, 1,0,0
    kgoto done
    
rel:
    kres expon 1, gienvt4[iEnvT4], 0.01
    kEnvL = kEnv * kres / 127
    kEnvVCF = kEnv * kres
    kEnvG = 0 
done:


// ----------------------------------------------------------------------------------------------------------------
// LFO Block
// ----------------------------------------------------------------------------------------------------------------
if (iLfoDely > 10) then 
    itmp = 1 
else 
    itmp = 0 
endif 
kLfo            linseg 0,gilfodels[iLfoDely] , 0,itmp ,1 // Delay for LFO1 
aLFO            lfo kLfo, gilforate[iLfoRate], 1                                // Rate for LFO 



if (iPwmRate != 0) then
    kLfoPw          lfo kpwpwm/2, gipwmrate[iPwmRate], 1                        // Rate for LFO PWM
    kLfoPw          = kLfoPw - kpwpwm/2
else 
    kLfoPw = kpwpwm                                                     // Basicely No LFO PWM
endif 



// ----------------------------------------------------------------------------------------------------------------
// DCO Block
// ----------------------------------------------------------------------------------------------------------------

//printf_i "iDcoEnvd :%d   , gidcoenvb[iDcoEnvd]:%f  idcoenva[iDcoEnvd] :%f \n",1,iDcoEnvd,gidcoenvb[iDcoEnvd],gidcoenva[iDcoEnvd] 

// Note
kNote           = p4 * (8  / (2^(iDcoRng + 2)))                        // Base note calculation : note * dcoRng correction 
kNote           = kNote  +  aLFO * (kNote * gilfovals[iDcoLfo] / 2)    // note + lfo oscilation
if (iDcoEnvd != 0) then  // enveloppe impact pitch : use kEnvVCF   and this formula : (note/130.9)*power(10, b[dcoenv] +a[dcoenv]*(vcfenv - 10)/10) 

    // TODO : fix dcoenv !
    if (iDcoEnvd >= 64) then
        printf_i "TODO : fix this... %d\n", 1,iDcoEnvd
    
        if (iDcoEnv == 0) then    // Norm 
            kNote           = (kNote/130.9) * pow(10,gidcoenvb[iDcoEnvd] + gidcoenva[iDcoEnvd]* ( kEnvVCF  - 10) / 10) 
        elseif (iDcoEnv == 1) then // Inv 
            kNote           = 2 * kNote - (kNote/130.9) * pow(10,gidcoenvb[iDcoEnvd] + gidcoenva[iDcoEnvd]* ( kEnvVCF  - 10) / 10)
        elseif (iDcoEnv == 2) then // D-Norm 
            kNote           = (kNote/130.9) * pow(10,gidcoenvb[iDcoEnvd] + gidcoenva[iDcoEnvd]* ( kEnvVCF  - 10) / 10) 
        elseif (iDcoEnv == 3) then // D-Inv 
            kNote           = 2 * kNote - (kNote/130.9) * pow(10,gidcoenvb[iDcoEnvd] + gidcoenva[iDcoEnvd]* ( kEnvVCF  - 10) / 10) 
        endif
    endif
endif 


//printf_i  ": kLfoPw %f,k kLFOPw : %f p5 %f kpwpwm : %d \n",1, kLfoPw  ,(kLfoPw)*1.99/127 ,p5,kpwpwm




; -- Square part
if (iPulse == 0) then 
    aOsc1 = 0
else
    if (iPulse == 1) then
        aTmp  vco2  giAmp , kNote,10,0,0,0.45  // Square 
        aTmp = - aTmp
    elseif (iPulse == 2) then 
        aTmp   vco2  giAmp, kNote,2,0.75
        aTmp = - aTmp
    elseif (iPulse == 3) then
        aTmp   vco2  giAmp, kNote ,2,  0.5 - (kLfoPw)*0.49/127  
        aTmp = - aTmp    // move amplitude to signal up according to pw  -  kLfoPw/127
    endif 
    aOsc1 = aTmp
endif 



; -- Sawtooth part
if (iSawtooth == 0) then 
    aOsc2  = 0
else
    aSaw1 vco2  giAmp, kNote ,0
    
    if (iSawtooth == 1) then
        aTmp           =  - aSaw1   // TEST 
        
    elseif (iSawtooth  == 2) then
        aSquare1x2      vco2  1,kNote * 2, 10     // note * 2  
        aTmp           = (- aSaw1 + giAmp)  * (- aSquare1x2  + 1) / 4

    elseif (iSawtooth == 3) then
        asquarepwm      vco2  1, kNote * 2, 2 ,  0.5 - (kLfoPw)*0.49/127  
        aTmp           = (- aSaw1 + giAmp) * (- asquarepwm + 1) / 2   // saw03
    
    elseif (iSawtooth == 4) then
        asquare         vco2  1, kNote * 8, 10, 0.5, 0.5  // Gate for Sawtooth waves 
        aTmp           = (- aSaw1 + giAmp) * (- asquare  + 1)   // saw04

    elseif (iSawtooth == 5) then
        aSquared2       vco2  1, kNote*2,10     // note / 2  
        asquared8       vco2  1, kNote* 8, 10, 0.5, 0.5  // note / 8
        aSquare1x201    =   (- aSquared2     + 1) / 2    // Gate for Sawtooth waves 
        aSquare201      =   (asquared8 + 1) / 2    // Gate for Sawtooth waves 
        aTmp           = (-aSaw1 + 1) * (aSquare201) * aSquare1x201       // saw04
    endif 
    aOsc2 = aTmp
    
endif

; -- Sub part
if (iSubLvl == 0) then 
    kSubLevel = 0
else
    kSubLevel = (2^(iSubLvl)) / 8
endif


if (kSubLevel != 0) then 
    if (iSub == 0) then 
        aTmp   vco2  giAmp , kNote/2,10
        aTmp = -aTmp * kSubLevel

    elseif (iSub == 1) then
        aTmp vco2  giAmp, kNote/2 ,2,0.75
        aTmp = - aTmp * kSubLevel

    elseif (iSub == 2) then
        aSub1 vco2  1, kNote*2 ,10
        aSub2 vco2  1, kNote/2 ,10
        aTmp =   ((- aSub2 + 1) * (- aSub1 + 1) / 2 ) * kSubLevel 

    elseif (iSub == 3) then
        aSub1 vco2  giAmp, kNote*4 ,10
        aSub2 vco2  1, kNote/2 ,10
        aTmp =  ((- aSub2 + 1) * (- aSub1 + 1) / 2 )  * kSubLevel

    elseif (iSub == 4) then
        aTmp   vco2, giAmp , kNote/4,10
        aTmp = - aTmp * kSubLevel

    elseif (iSub == 5) then
        aTmp vco2   giAmp , kNote/4 ,2,0.75
        aTmp = - aTmp * kSubLevel
    endif 
    aOsc3 = aTmp

endif 

; -- Noise part
if (iNoisLvl == 0) then 
    kNoisLvl  = 0
else
    kNoisLvl  = (2^(kNoisLvl)) / 8
endif
aOsc4   noise  iNoisLvl / 3, -0.9

; Output VCO Block
aOutVcoblock    =  aOsc1 * .25 + aOsc2 * .25 + aOsc3 * .25 + aOsc4 * .25



// ----------------------------------------------------------------------------------------------------------------
// HPF Block
// ----------------------------------------------------------------------------------------------------------------

if (iHpfFreq == 0) then
    aOutHPFBlock        pareq aOutVcoblock,106, 2, 0.7071067812
elseif (iHpfFreq == 1) then
    aOutHPFBlock        = aOutVcoblock    
elseif (iHpfFreq == 2) then
    aOutHPFBlock        mvchpf aOutVcoblock,124
elseif (iHpfFreq == 3) then
    aOutHPFBlock        mvchpf aOutVcoblock ,220
endif





// ----------------------------------------------------------------------------------------------------------------
// VCF Block
// ----------------------------------------------------------------------------------------------------------------
//printf_i "note : %f , new note : %f   formule : %f,   iDcoRng: %d\n", 1, p4, p4 * (8  / (2^(iDcoRng + 1))),round(10 * log2(p4 / (261.7 * (8  / (2^(iDcoRng + 1))))) * iVcfKybd / 18), iDcoRng
// kVcfFeq = iVcfFreq + round(10 * log2(kNote / 130.9) * iVcfKybd / 18)
kVcfFeq = iVcfFreq + round(10 * log2(p4 / (130.9 * (8  / (2^(iDcoRng + 2))))) * iVcfKybd / 18)
if (iVcfEnv == 0) then       // Normal
    aOutVCFBlock moogvcf aOutHPFBlock        , (1 + aLFO * iVcfLfo/127  ) * givcffreq[min(kVcfFeq + iVcfEnvd * kEnvVCF / 256, 127)], iVcfReso/153
elseif (iVcfEnv == 1) then   // Inverted
    aOutVCFBlock moogvcf aOutHPFBlock        , (1 + aLFO * iVcfLfo/127  ) * givcffreq[min(kVcfFeq - iVcfEnvd * kEnvVCF / 256, 127)]    , iVcfReso/153
elseif (iVcfEnv == 2) then   // D-Norm
    // no dynamic for now
    aOutVCFBlock moogvcf aOutHPFBlock        , (1 + aLFO * iVcfLfo/127  ) * givcffreq[min(kVcfFeq + iVcfEnvd * kEnvVCF / 256, 127)]   , iVcfReso/153
elseif (iVcfEnv == 3) then   // dyn
    aOutVCFBlock moogvcf aOutHPFBlock        , (1 + aLFO * iVcfLfo/127  ) * givcffreq[kVcfFeq]    , iVcfReso/153
endif


// ----------------------------------------------------------------------------------------------------------------
// VCA Block
// ----------------------------------------------------------------------------------------------------------------

//iTest chnget "test"
//printf_i "p5 : %f  => %d p6 : %d\n", 1,p5, round(p5 * 127),p6

if (iVcaEnv == 0) then
    aOutVCABlock = aOutVCFBlock * kEnvL // Normal
elseif (iVcaEnv == 1) then
    aOutVCABlock = aOutVCFBlock * kEnvG   // GT
elseif (iVcaEnv  == 2) then 
    aOutVCABlock = aOutVCFBlock * kEnvL * gidynVcaRes[p6]      // D-Normal  
elseif (iVcaEnv == 3) then 
    aOutVCABlock = aOutVCFBlock * kEnvG * gidynVcaRes[p6]    // DGT  
endif



// ----------------------------------------------------------------------------------------------------------------
// adjustement filter & offset
// ----------------------------------------------------------------------------------------------------------------
// cutoff : 108 parametric gain : 1.93 Q: 0.707 output amp 0.707 0(peaking) skip 0 
aTmp dcblock2 aOutVCABlock // DC Offset correction
aTmp2 butterlp aTmp, 9220     // filter some high freqs not present in the Juno
//aTmp3 pareq aTmp2,108, 1.93, 0.707, 1
aTmp3 = aTmp2 
aoutPostFilter = aTmp3



// ----------------------------------------------------------------------------------------------------------------
// Chorus block
// ----------------------------------------------------------------------------------------------------------------
if (iChorus == 1) then 
    krate = gicrsrate[iCrsRate]
    aoffset = 0
    ktrem	rspline	0,-1,0.1,0.5
    ktrem	pow	2,ktrem
    
    aoutChorusL,aoutChorusR 	StChorus	aoutPostFilter  ,aoutPostFilter , gicrsrate[iCrsRate], ktrem/2	, aoffset, 0.5, 0.5
else
    aoutChorusL = aoutPostFilter
    aoutChorusR = aoutPostFilter
endif 


// ----------------------------------------------------------------------------------------------------------------
// Output
// ----------------------------------------------------------------------------------------------------------------
outs        aoutChorusL * giPostAmp / 127, aoutChorusR * giPostAmp / 127


thenend:      
endin

gicurprog = 0
gScurbank = "./presets/FACTORYA.SYX"
gScurcart = ""
    

instr updateGUI

 
   ktrig changed chnget:k("btb1"), chnget:k("btb2"), chnget:k("btb3"), chnget:k("btb4") , chnget:k("btb5"), chnget:k("btb6"), chnget:k("btb7"), chnget:k("btb8") , chnget:k("btn1"), chnget:k("btn2"), chnget:k("btn3"), chnget:k("btn4") , chnget:k("btn5"), chnget:k("btn6"), chnget:k("btn7"), chnget:k("btn8"),chnget:k("lid"), chnget:k("grpPreset"), chnget:k("grpMemory"), chnget:k("grpCartridge")
    
   if ktrig == 1  then 
        event "i", 1004, 0, .1
  endif
  
  
 
   if changed:k(chnget:S("openFile")) == 1 then
     event "i", 1004, 0, .1
   endif
endin


instr 1004

    SName  = "                                                    "
    iIdent = 1
    gicurprog = 0
    iBank = 0 

    STmp  chnget "openFile"
    if (strcmp(STmp,gScurcart) != 0) then 
        gScurcart = STmp
        chnset  1 ,  "grpCartridge"
    endif
    
    iTmp chnget "grpPreset"
    if (iTmp == 1) then
        gScurbank = "./presets/FACTORYA.SYX"
        iBank = 0
    endif 
    iTmp chnget "grpMemory"
    if (iTmp == 1) then
        gScurbank = "./presets/FACTORYB.SYX"
        iBank = 1
    endif 
    iTmp chnget "grpCartridge"
    if ((iTmp == 1) && strlen(gScurcart) != 0) then
        gScurbank = gScurcart
        iBank = 2
    endif 
    
    // get current bank
    
    
    labelb1:
        Sbt sprintf "btb%d",iIdent 
        ideb  chnget Sbt 
        if (ideb == 1) then 
            gicurprog = (iIdent - 1)  * 8 - 1
        endif
    loop_le iIdent, 1, 8, labelb1
    iIdent = 1
    labelb2:
        Sbt sprintfk "btn%d",iIdent 
        ideb  chnget Sbt 
        if (ideb == 1) then 
            gicurprog = gicurprog + iIdent 
        endif
    loop_le iIdent, 1, 8, labelb2

    //printf_i "Current prog : %d\n", 1, gicurprog
    
    Sname = "preset"
    //SName getjuname gScurbank,gicurprog  ,iBank  ; use of plugins to get the tone name from the midi bulk dump from synth

    iLid chnget "lid"
    iLid = iLid * 0.7
    SDisplay2 sprintf "alpha(%f)" , iLid
    chnset SDisplay2, "light"

    iLid2 = iLid * 0.4
    SDisplay sprintf "alpha(%f)" , iLid2 
    chnset SDisplay, "backled"

                                    
    iLid3 = iLid * .6 + 0.4
    iIdent = 0
    label3:
        ideb strchar SName, iIdent
        SPos sprintf "pos%d",iIdent 
        SChar  strsub SName, iIdent, iIdent + 1
        icropx = ((ideb -45) % 20) * 40
        icropy = int((ideb -45)/ 20) * 60
        SLetter sprintf "crop(%d, %d, 40, 60) alpha(%f) ", icropx, icropy, iLid3
        chnset SLetter,SPos
    loop_le iIdent, 1, strlen(SName), label3
   
   
    /*
    iParm  getjuparm gScurbank, gicurprog, "dcoaftr"
    chnset iParm, "dcoaftr"
    iParm  getjuparm gScurbank, gicurprog, "vcfkybd"
    chnset iParm, "vcfkybd"
    iParm  getjuparm gScurbank, gicurprog, "vcfaftr"
    chnset iParm, "vcfaftr"
    iParm  getjuparm gScurbank, gicurprog, "vcaaftr"
    chnset iParm, "vcaaftr"
    iParm  getjuparm gScurbank, gicurprog, "envkybd"
    chnset iParm, "envkybd"
    iParm  getjuparm gScurbank, gicurprog, "dcobnd"
    chnset iParm, "dcobnd"
    iParm  getjuparm gScurbank, gicurprog, "dcolfo"
    chnset iParm, "dcolfo"
    iParm  getjuparm gScurbank, gicurprog, "chorus" 
    chnset iParm, "chorus"
    iParm  getjuparm gScurbank, gicurprog, "dcoenvd"
    chnset iParm, "dcoenvd"
    iParm  getjuparm gScurbank, gicurprog, "pwpwm"
    chnset iParm, "pwpwm"
    iParm  getjuparm gScurbank, gicurprog, "pwmrate"
    chnset iParm, "pwmrate"
    iParm  getjuparm gScurbank, gicurprog, "dcoenv"
    iParm  = 3 - iParm     // in order to have the slide "upside down"
//    printf_i "dcoenv parm:%d\n",1, iParm
    chnset iParm, "dcoenv"
    iParm  getjuparm gScurbank, gicurprog, "vcffreq"
    chnset iParm, "vcffreq"
    iParm  getjuparm gScurbank, gicurprog, "vcfreso"
    chnset iParm, "vcfreso"
    iParm  getjuparm gScurbank, gicurprog, "vcfenv"
//    printf_i "vcfenv parm:%d\n",1, iParm
    iParm  = 3 - iParm     // in order to have the slide "upside down"
    chnset iParm, "vcfenv"
    iParm  getjuparm gScurbank, gicurprog, "vcfenvd"
    chnset iParm, "vcfenvd"
    iParm  getjuparm gScurbank, gicurprog, "vcflfo"
    chnset iParm, "vcflfo"
    iParm  getjuparm gScurbank, gicurprog, "vcaenv"
//    printf_i "vcaenv parm:%d\n",1, iParm
    iParm  = 3 - iParm     // in order to have the slide "upside down"
    chnset iParm, "vcaenv"
    iParm  getjuparm gScurbank, gicurprog, "vcalevl"
    chnset iParm, "vcalevl"
    iParm  getjuparm gScurbank, gicurprog, "lforate"
    chnset iParm, "lforate"
    iParm  getjuparm gScurbank, gicurprog, "lfodely"
    chnset iParm, "lfodely"
    iParm  getjuparm gScurbank, gicurprog, "sub"
    chnset iParm, "sub"
    iParm  getjuparm gScurbank, gicurprog, "envt1"
    chnset iParm, "envt1"
    iParm  getjuparm gScurbank, gicurprog, "envl1"
    chnset iParm, "envl1"
    iParm  getjuparm gScurbank, gicurprog, "envt2"
    chnset iParm, "envt2"
    iParm  getjuparm gScurbank, gicurprog, "sawtooth"
    chnset iParm, "sawtooth"
    iParm  getjuparm gScurbank, gicurprog, "envl2"
    chnset iParm, "envl2"
    iParm  getjuparm gScurbank, gicurprog, "envt3"
    chnset iParm, "envt3"
    iParm  getjuparm gScurbank, gicurprog, "pulse"
    chnset iParm, "pulse"
    iParm  getjuparm gScurbank, gicurprog, "envl3"
    chnset iParm, "envl3"
    iParm  getjuparm gScurbank, gicurprog, "envt4"
    chnset iParm, "envt4"
    iParm  getjuparm gScurbank, gicurprog, "hpffreq"
    chnset iParm, "hpffreq"
    iParm  getjuparm gScurbank, gicurprog, "dcorng"
    chnset iParm, "dcorng"
    iParm  getjuparm gScurbank, gicurprog, "sublevl"
    chnset iParm, "sublevl"
    iParm  getjuparm gScurbank, gicurprog, "noislvl"
    chnset iParm, "noislvl"
    iParm  getjuparm gScurbank, gicurprog, "crsrate"
    chnset iParm, "crsrate"
    */
        
    
end2:    
endin 

  
</CsInstruments>
<CsScore>
;causes Csound to run for about 7000 years...
i 2  0 [3600*24*7] ;read var stored in instr1
f0 z

</CsScore>
</CsoundSynthesizer>
