; =========================================================
; Game Engine Function: sub_13E044
; Address            : 0x13E044 - 0x13E172
; =========================================================

13E044:  PUSH            {R4-R7,LR}
13E046:  ADD             R7, SP, #0xC
13E048:  PUSH.W          {R8-R11}
13E04C:  SUB             SP, SP, #0x14
13E04E:  LDRD.W          LR, R3, [R0,#4]
13E052:  MOV             R8, R1
13E054:  MOV             R9, R0
13E056:  CMP             LR, R3
13E058:  BCS             loc_13E084
13E05A:  MOV             R2, R8
13E05C:  MOV             R1, LR
13E05E:  LDM             R2!, {R3-R6}
13E060:  STM             R1!, {R3-R6}
13E062:  LDM             R2!, {R0,R3-R6}
13E064:  STM             R1!, {R0,R3-R6}
13E066:  LDM.W           R2, {R0,R3-R6}
13E06A:  STM             R1!, {R0,R3-R6}
13E06C:  MOVS            R0, #0
13E06E:  LDR.W           R1, [R8,#0x38]
13E072:  STR.W           R0, [R8,#0x38]
13E076:  ADD.W           R0, LR, #0x3C ; '<'
13E07A:  STR.W           R0, [R9,#4]
13E07E:  STR.W           R1, [LR,#0x38]
13E082:  B               loc_13E164
13E084:  LDR.W           R12, [R9]
13E088:  MOV             R1, #0x4444444
13E090:  SUB.W           R0, LR, R12
13E094:  MOV             LR, #0xEEEEEEEF
13E09C:  ASRS            R0, R0, #2
13E09E:  MUL.W           R2, R0, LR
13E0A2:  ADDS            R0, R2, #1
13E0A4:  CMP             R0, R1
13E0A6:  BHI             loc_13E16C
13E0A8:  SUB.W           R3, R3, R12
13E0AC:  MOV             R6, #0x2222222
13E0B4:  ASRS            R3, R3, #2
13E0B6:  MUL.W           R3, R3, LR
13E0BA:  CMP.W           R0, R3,LSL#1
13E0BE:  IT LS
13E0C0:  LSLLS           R0, R3, #1
13E0C2:  CMP             R3, R6
13E0C4:  ADD.W           R3, R9, #8
13E0C8:  IT CC
13E0CA:  MOVCC           R1, R0
13E0CC:  MOV             R0, SP
13E0CE:  BL              sub_13E50C
13E0D2:  LDR.W           R12, [SP,#0x30+var_28]
13E0D6:  MOV             R0, R8
13E0D8:  LDM             R0!, {R2-R5}
13E0DA:  MOV.W           LR, #0
13E0DE:  MOV             R1, R12
13E0E0:  STM             R1!, {R2-R5}
13E0E2:  LDM             R0!, {R2-R6}
13E0E4:  STM             R1!, {R2-R6}
13E0E6:  LDM.W           R0, {R2-R6}
13E0EA:  STM             R1!, {R2-R6}
13E0EC:  ADD.W           R5, R12, #0x3C ; '<'
13E0F0:  LDR.W           R6, [R8,#0x38]
13E0F4:  STR.W           LR, [R8,#0x38]
13E0F8:  LDRD.W          R8, R11, [R9]
13E0FC:  LDR.W           R10, [SP,#0x30+var_2C]
13E100:  CMP             R11, R8
13E102:  STR.W           R6, [R12,#0x38]
13E106:  STR             R5, [SP,#0x30+var_28]
13E108:  BEQ             loc_13E146
13E10A:  SUB.W           R12, R11, #0x3C ; '<'
13E10E:  SUB.W           R5, R10, #0x3C ; '<'
13E112:  CMP             R12, R8
13E114:  MOV             R6, R12
13E116:  LDM             R6!, {R0-R2,R4}
13E118:  STM             R5!, {R0-R2,R4}
13E11A:  LDM             R6!, {R0-R4}
13E11C:  STM             R5!, {R0-R4}
13E11E:  LDM.W           R6, {R0-R4}
13E122:  STM             R5!, {R0-R4}
13E124:  LDR.W           R0, [R11,#-4]
13E128:  STR.W           LR, [R11,#-4]
13E12C:  MOV             R11, R12
13E12E:  STR.W           R0, [R10,#-4]
13E132:  LDR             R0, [SP,#0x30+var_2C]
13E134:  SUB.W           R10, R0, #0x3C ; '<'
13E138:  STR.W           R10, [SP,#0x30+var_2C]
13E13C:  BNE             loc_13E10A
13E13E:  LDR             R5, [SP,#0x30+var_28]
13E140:  LDRD.W          R2, R8, [R9]
13E144:  B               loc_13E148
13E146:  MOV             R2, R8
13E148:  LDR             R0, [SP,#0x30+var_24]
13E14A:  LDR.W           R1, [R9,#8]
13E14E:  STR.W           R10, [R9]
13E152:  STRD.W          R5, R0, [R9,#4]
13E156:  MOV             R0, SP
13E158:  STRD.W          R2, R2, [SP,#0x30+var_30]
13E15C:  STRD.W          R8, R1, [SP,#0x30+var_28]
13E160:  BL              sub_13E564
13E164:  ADD             SP, SP, #0x14
13E166:  POP.W           {R8-R11}
13E16A:  POP             {R4-R7,PC}
13E16C:  MOV             R0, R9
13E16E:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
