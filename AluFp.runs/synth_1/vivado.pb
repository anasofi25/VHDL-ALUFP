
�
�You have specified a new message control rule that is equivalent to an existing rule with attributes '%s'. The existing rule will be replaced.601*common2
 -id {17-179}  -suppress Z17-1361h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:042

00:00:062	
556.7032	
183.418Z17-268h px� 
�
Command: %s
1870*	planAhead2�
read_checkpoint -auto_incremental -incremental C:/Users/Ana/Downloads/AluFp/AluFp.srcs/utils_1/imports/synth_1/alu_subtract.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2R
PC:/Users/Ana/Downloads/AluFp/AluFp.srcs/utils_1/imports/synth_1/alu_subtract.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
g
Command: %s
53*	vivadotcl26
4synth_design -top alu_subtract -part xc7a35tcpg236-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
�
�You have specified a new message control rule that is equivalent to an existing rule with attributes '%s'. The existing rule will be replaced.601*common2
 -id {17-179}  -suppress Z17-1361h px� 
M
#Helper process launched with PID %s4824*oasys2
5860Z8-7075h px� 
�
%s*synth2v
tStarting Synthesize : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 1004.949 ; gain = 438.723
h px� 
�
synthesizing module '%s'638*oasys2
alu_subtract2J
FC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/alu_subtract.vhd2
158@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
RegisterFile2H
FC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/RegisterFile.vhd2
52

RegFileA2
RegisterFile2J
FC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/alu_subtract.vhd2
1218@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
RegisterFile2J
FC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/RegisterFile.vhd2
138@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
RegisterFile2
02
12J
FC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/RegisterFile.vhd2
138@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
RegisterFile2H
FC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/RegisterFile.vhd2
52

RegFileB2
RegisterFile2J
FC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/alu_subtract.vhd2
1278@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
MantissaExponentSeparator2U
SC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/MantissaExponentSeparator.vhd2
52
MantA_Separator2
MantissaExponentSeparator2J
FC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/alu_subtract.vhd2
1348@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
MantissaExponentSeparator2W
SC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/MantissaExponentSeparator.vhd2
148@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
MantissaExponentSeparator2
02
12W
SC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/MantissaExponentSeparator.vhd2
148@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
MantissaExponentSeparator2U
SC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/MantissaExponentSeparator.vhd2
52
MantB_Separator2
MantissaExponentSeparator2J
FC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/alu_subtract.vhd2
1418@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ExponentComparator2N
LC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentComparator.vhd2
52	
ExpComp2
ExponentComparator2J
FC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/alu_subtract.vhd2
1498@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
ExponentComparator2P
LC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentComparator.vhd2
158@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ExponentComparator2
02
12P
LC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentComparator.vhd2
158@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
MantissaComparator2N
LC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/MantissaComparator.vhd2
52

MantComp2
MantissaComparator2J
FC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/alu_subtract.vhd2
1588@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
MantissaComparator2P
LC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/MantissaComparator.vhd2
158@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
MantissaComparator2
02
12P
LC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/MantissaComparator.vhd2
158@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ExponentAligner2K
IC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentAligner.vhd2
52
ExponentAlign2
ExponentAligner2J
FC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/alu_subtract.vhd2
1678@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
ExponentAligner2M
IC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentAligner.vhd2
178@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ExponentAligner2
02
12M
IC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentAligner.vhd2
178@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
MantissaSubtractor2N
LC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/MantissaSubtractor.vhd2
52	
MantSub2
MantissaSubtractor2J
FC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/alu_subtract.vhd2
1788@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
MantissaSubtractor2P
LC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/MantissaSubtractor.vhd2
148@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
TwoComplementConverter2S
QC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/TwosComplementConverter.vhd2
52

TC_Convert2
TwoComplementConverter2P
LC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/MantissaSubtractor.vhd2
388@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
TwoComplementConverter2U
QC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/TwosComplementConverter.vhd2
118@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
TwoComplementConverter2
02
12U
QC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/TwosComplementConverter.vhd2
118@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
RippleCarryAdder2A
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
52

Adder_Unit2
RippleCarryAdder2P
LC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/MantissaSubtractor.vhd2
448@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
RippleCarryAdder2C
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
158@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	full_addr2E
CC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/full_addr.vhd2
72
FA12
	full_addr2C
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
288@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	full_addr2G
CC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/full_addr.vhd2
168@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	full_addr2
02
12G
CC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/full_addr.vhd2
168@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	full_addr2E
CC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/full_addr.vhd2
72
FA22
	full_addr2C
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
298@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	full_addr2E
CC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/full_addr.vhd2
72
FA32
	full_addr2C
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
308@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	full_addr2E
CC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/full_addr.vhd2
72
FA42
	full_addr2C
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
318@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	full_addr2E
CC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/full_addr.vhd2
72
FA52
	full_addr2C
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
328@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	full_addr2E
CC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/full_addr.vhd2
72
FA62
	full_addr2C
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
338@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	full_addr2E
CC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/full_addr.vhd2
72
FA72
	full_addr2C
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
348@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	full_addr2E
CC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/full_addr.vhd2
72
FA82
	full_addr2C
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
358@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	full_addr2E
CC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/full_addr.vhd2
72
FA92
	full_addr2C
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
368@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	full_addr2E
CC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/full_addr.vhd2
72
FA102
	full_addr2C
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
378@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	full_addr2E
CC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/full_addr.vhd2
72
FA112
	full_addr2C
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
388@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	full_addr2E
CC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/full_addr.vhd2
72
FA122
	full_addr2C
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
398@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	full_addr2E
CC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/full_addr.vhd2
72
FA132
	full_addr2C
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
408@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	full_addr2E
CC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/full_addr.vhd2
72
FA142
	full_addr2C
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
418@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	full_addr2E
CC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/full_addr.vhd2
72
FA152
	full_addr2C
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
428@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	full_addr2E
CC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/full_addr.vhd2
72
FA162
	full_addr2C
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
438@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	full_addr2E
CC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/full_addr.vhd2
72
FA172
	full_addr2C
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
448@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	full_addr2E
CC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/full_addr.vhd2
72
FA182
	full_addr2C
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
458@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	full_addr2E
CC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/full_addr.vhd2
72
FA192
	full_addr2C
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
468@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	full_addr2E
CC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/full_addr.vhd2
72
FA202
	full_addr2C
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
478@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	full_addr2E
CC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/full_addr.vhd2
72
FA212
	full_addr2C
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
488@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	full_addr2E
CC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/full_addr.vhd2
72
FA222
	full_addr2C
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
498@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	full_addr2E
CC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/full_addr.vhd2
72
FA232
	full_addr2C
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
508@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	full_addr2E
CC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/full_addr.vhd2
72
FA242
	full_addr2C
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
518@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
RippleCarryAdder2
02
12C
?C:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/adder.vhd2
158@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
MantissaSubtractor2
02
12P
LC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/MantissaSubtractor.vhd2
148@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

Normalizer2F
DC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/Normalizer.vhd2
52
NormalizerStage2

Normalizer2J
FC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/alu_subtract.vhd2
1868@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

Normalizer2H
DC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/Normalizer.vhd2
148@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

Normalizer2
02
12H
DC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/Normalizer.vhd2
148@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
alu_subtract2
02
12J
FC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/alu_subtract.vhd2
158@Z8-256h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
normMant_1_reg2
242
232H
DC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/Normalizer.vhd2
208@Z8-3936h px� 
p
+design %s has port %s driven by constant %s3447*oasys2
alu_subtract2

result[31]2
0Z8-3917h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
reset2
RegisterFileZ8-7129h px� 
�
%s*synth2v
tFinished Synthesize : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1113.113 ; gain = 546.887
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1113.113 ; gain = 546.887
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7a35tcpg236-1
h p
x
� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1113.113 ; gain = 546.887
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1113.113 ; gain = 546.887
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   3 Input    8 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit       Adders := 1     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   3 Input      1 Bit         XORs := 24    
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   5 Input   32 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   24 Bit        Muxes := 7     
h p
x
� 
F
%s
*synth2.
,	   2 Input   23 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 6     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 1     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
p
+design %s has port %s driven by constant %s3447*oasys2
alu_subtract2

result[31]2
0Z8-3917h px� 
t
9Port %s in module %s is either unconnected or has no load4866*oasys2
reset2
alu_subtractZ8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:11 ; elapsed = 00:00:22 . Memory (MB): peak = 1308.398 ; gain = 742.172
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:11 ; elapsed = 00:00:23 . Memory (MB): peak = 1313.625 ; gain = 747.398
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:11 ; elapsed = 00:00:23 . Memory (MB): peak = 1313.625 ; gain = 747.398
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:14 ; elapsed = 00:00:26 . Memory (MB): peak = 1313.625 ; gain = 747.398
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:14 ; elapsed = 00:00:26 . Memory (MB): peak = 1313.625 ; gain = 747.398
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
data_out_b[24]2
1st2
gtOp__1_carry_i_19/O2P
LC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentComparator.vhd2
228@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
data_out_b[24]2
2nd2
gtOp__1_carry_i_20/O2J
FC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/RegisterFile.vhd2
278@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
data_out_b[30]2
1st2
gtOp__1_carry_i_15/O2P
LC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentComparator.vhd2
228@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
data_out_b[30]2
2nd2
gtOp__1_carry_i_16/O2J
FC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/RegisterFile.vhd2
278@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
data_out_b[28]2
1st2
gtOp__1_carry_i_9/O2P
LC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentComparator.vhd2
228@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
data_out_b[28]2
2nd2
gtOp__1_carry_i_10/O2P
LC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentComparator.vhd2
228@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
data_out_b[28]2
3rd2
gtOp__1_carry_i_11/O2P
LC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentComparator.vhd2
228@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
data_out_b[28]2
4th2
gtOp__1_carry_i_12/O2P
LC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentComparator.vhd2
228@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
data_out_b[28]2
5th2
gtOp__1_carry_i_13/O2P
LC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentComparator.vhd2
228@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
data_out_b[28]2
6th2
gtOp__1_carry_i_14/O2J
FC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/RegisterFile.vhd2
278@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
bigger_exp[0]2
1st2
result_OBUF[27]_inst_i_6/O2M
IC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentAligner.vhd2
258@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
bigger_exp[0]2
2nd2
result_OBUF[27]_inst_i_7/O2M
IC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentAligner.vhd2
258@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
bigger_exp[1]2
1st2
result_OBUF[27]_inst_i_9/O2M
IC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentAligner.vhd2
258@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
bigger_exp[1]2
2nd2
result_OBUF[27]_inst_i_10/O2M
IC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentAligner.vhd2
258@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
bigger_exp[2]2
1st2
result_OBUF[27]_inst_i_4/O2M
IC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentAligner.vhd2
258@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
bigger_exp[2]2
2nd2
result_OBUF[27]_inst_i_5/O2M
IC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentAligner.vhd2
258@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
bigger_exp[3]2
1st2
result_OBUF[27]_inst_i_11/O2M
IC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentAligner.vhd2
258@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
bigger_exp[3]2
2nd2
result_OBUF[27]_inst_i_12/O2M
IC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentAligner.vhd2
258@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
bigger_exp[4]2
1st2
result_OBUF[27]_inst_i_2/O2M
IC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentAligner.vhd2
258@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
bigger_exp[4]2
2nd2
result_OBUF[27]_inst_i_3/O2M
IC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentAligner.vhd2
258@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
bigger_exp[5]2
1st2
result_OBUF[30]_inst_i_5/O2M
IC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentAligner.vhd2
258@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
bigger_exp[5]2
2nd2
result_OBUF[30]_inst_i_6/O2M
IC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentAligner.vhd2
258@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
bigger_exp[6]2
1st2
result_OBUF[30]_inst_i_2/O2M
IC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentAligner.vhd2
258@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
bigger_exp[6]2
2nd2
result_OBUF[30]_inst_i_3/O2M
IC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentAligner.vhd2
258@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
bigger_exp[7]2
1st2
result_OBUF[30]_inst_i_7/O2M
IC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentAligner.vhd2
258@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
bigger_exp[7]2
2nd2
result_OBUF[30]_inst_i_8/O2M
IC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentAligner.vhd2
258@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
A_greater_B2
1st2
MantComp/gtOp_carry/CO[1]2M
IC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentAligner.vhd2
258@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
A_greater_B2
2nd2
ExpComp/gtOp__1_carry/CO[3]2M
IC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentAligner.vhd2
258@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
gtOp__1_carry_i_17_n_02
1st2
gtOp__1_carry_i_17/O2P
LC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/ExponentComparator.vhd2
228@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2
gtOp__1_carry_i_17_n_02
2nd2
gtOp__1_carry_i_18/O2J
FC:/Users/Ana/Downloads/AluFp/AluFp.srcs/sources_1/new/alu_subtract.vhd2
68@Z8-6859h px� 
2
%s
*synth2

Report Check Netlist: 
h p
x
� 
c
%s
*synth2K
I+------+------------------+-------+---------+-------+------------------+
h p
x
� 
c
%s
*synth2K
I|      |Item              |Errors |Warnings |Status |Description       |
h p
x
� 
c
%s
*synth2K
I+------+------------------+-------+---------+-------+------------------+
h p
x
� 
c
%s
*synth2K
I|1     |multi_driven_nets |      0|       13|Failed |Multi driven nets |
h p
x
� 
c
%s
*synth2K
I+------+------------------+-------+---------+-------+------------------+
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:14 ; elapsed = 00:00:26 . Memory (MB): peak = 1313.625 ; gain = 747.398
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:14 ; elapsed = 00:00:26 . Memory (MB): peak = 1313.625 ; gain = 747.398
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:14 ; elapsed = 00:00:26 . Memory (MB): peak = 1313.625 ; gain = 747.398
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:14 ; elapsed = 00:00:26 . Memory (MB): peak = 1313.625 ; gain = 747.398
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |CARRY4 |    12|
h px� 
2
%s*synth2
|2     |LUT1   |     3|
h px� 
2
%s*synth2
|3     |LUT2   |    14|
h px� 
2
%s*synth2
|4     |LUT3   |    33|
h px� 
2
%s*synth2
|5     |LUT4   |    31|
h px� 
2
%s*synth2
|6     |LUT5   |    65|
h px� 
2
%s*synth2
|7     |LUT6   |    62|
h px� 
2
%s*synth2
|8     |IBUF   |     4|
h px� 
2
%s*synth2
|9     |OBUF   |    32|
h px� 
2
%s*synth2
+------+-------+------+
h px� 
3
%s
*synth2

Report Instance Areas: 
h p
x
� 
S
%s
*synth2;
9+------+----------------+-----------------------+------+
h p
x
� 
S
%s
*synth2;
9|      |Instance        |Module                 |Cells |
h p
x
� 
S
%s
*synth2;
9+------+----------------+-----------------------+------+
h p
x
� 
S
%s
*synth2;
9|1     |top             |                       |   256|
h p
x
� 
S
%s
*synth2;
9|2     |  ExpComp       |ExponentComparator     |    43|
h p
x
� 
S
%s
*synth2;
9|3     |  ExponentAlign |ExponentAligner        |   151|
h p
x
� 
S
%s
*synth2;
9|4     |  MantComp      |MantissaComparator     |     1|
h p
x
� 
S
%s
*synth2;
9|5     |  MantSub       |MantissaSubtractor     |    23|
h p
x
� 
S
%s
*synth2;
9|6     |    TC_Convert  |TwoComplementConverter |    23|
h p
x
� 
S
%s
*synth2;
9+------+----------------+-----------------------+------+
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:14 ; elapsed = 00:00:26 . Memory (MB): peak = 1313.625 ; gain = 747.398
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 30 critical warnings and 7 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:14 ; elapsed = 00:00:26 . Memory (MB): peak = 1313.625 ; gain = 747.398
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:14 ; elapsed = 00:00:26 . Memory (MB): peak = 1313.625 ; gain = 747.398
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0042

1325.7382
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
12Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1403.2662
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
U
%Synth Design complete | Checksum: %s
562*	vivadotcl2	
d114b76Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
732
82
302
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:162

00:00:282

1403.2662	
843.621Z17-268h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0012

1403.2662
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2B
@C:/Users/Ana/Downloads/AluFp/AluFp.runs/synth_1/alu_subtract.dcpZ17-1381h px� 
�
%s4*runtcl2p
nExecuting : report_utilization -file alu_subtract_utilization_synth.rpt -pb alu_subtract_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Thu Dec  5 21:55:07 2024Z17-206h px� 


End Record