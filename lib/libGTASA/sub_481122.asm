; =========================================================
; Game Engine Function: sub_481122
; Address            : 0x481122 - 0x4811D0
; =========================================================

481122:  PUSH            {R4-R7,LR}
481124:  ADD             R7, SP, #0xC
481126:  PUSH.W          {R8-R11}
48112A:  SUB             SP, SP, #0xC
48112C:  MOVW            R4, #0xC9F0
481130:  LSLS            R5, R2, #7
481132:  MOVT            R4, #0x3B9A
481136:  STR             R1, [SP,#0x28+var_20]
481138:  MOV             R9, R0
48113A:  MOV             R0, R4
48113C:  MOV             R1, R5
48113E:  MOV             R10, R3
481140:  BLX             __aeabi_uidiv
481144:  LDR.W           R6, [R9,#4]
481148:  MOV             R8, R0
48114A:  CMP             R5, R4
48114C:  BLS             loc_481160
48114E:  LDR.W           R0, [R9]
481152:  MOVS            R1, #0x46 ; 'F'
481154:  STR             R1, [R0,#0x14]
481156:  LDR.W           R0, [R9]
48115A:  LDR             R1, [R0]
48115C:  MOV             R0, R9
48115E:  BLX             R1
481160:  CMP             R8, R10
481162:  MOV.W           R2, R10,LSL#2
481166:  IT GE
481168:  MOVGE           R8, R10
48116A:  MOV             R0, R9; int
48116C:  STR.W           R8, [R6,#0x50]
481170:  LDR             R1, [SP,#0x28+var_20]
481172:  BL              sub_480EA8
481176:  MOV             R4, R0
481178:  CMP.W           R10, #0
48117C:  BEQ             loc_4811C6
48117E:  MVN.W           R0, R10
481182:  MOV.W           R11, #0
481186:  STR             R0, [SP,#0x28+var_24]
481188:  MOV             R6, R8
48118A:  SUB.W           R8, R10, R11
48118E:  CMP             R6, R8
481190:  MOV             R0, R9; int
481192:  IT CC
481194:  MOVCC           R8, R6
481196:  LDR             R1, [SP,#0x28+var_20]
481198:  MUL.W           R2, R5, R8
48119C:  BL              sub_480FD4
4811A0:  CMP.W           R8, #0
4811A4:  BEQ             loc_4811C2
4811A6:  LDR             R1, [SP,#0x28+var_24]
4811A8:  MVNS            R2, R6
4811AA:  ADD             R1, R11
4811AC:  CMP             R1, R2
4811AE:  IT HI
4811B0:  MOVHI           R2, R1
4811B2:  ADDS            R1, R2, #1
4811B4:  STR.W           R0, [R4,R11,LSL#2]
4811B8:  ADD             R0, R5
4811BA:  ADDS            R1, #1
4811BC:  ADD.W           R11, R11, #1
4811C0:  BNE             loc_4811B4
4811C2:  CMP             R11, R10
4811C4:  BCC             loc_481188
4811C6:  MOV             R0, R4
4811C8:  ADD             SP, SP, #0xC
4811CA:  POP.W           {R8-R11}
4811CE:  POP             {R4-R7,PC}
