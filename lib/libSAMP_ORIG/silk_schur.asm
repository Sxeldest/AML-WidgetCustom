; =========================================================
; Game Engine Function: silk_schur
; Address            : 0xCE044 - 0xCE1F2
; =========================================================

CE044:  PUSH            {R4-R7,LR}
CE046:  ADD             R7, SP, #0xC
CE048:  PUSH.W          {R8-R11}
CE04C:  SUB             SP, SP, #0xD4
CE04E:  STR             R0, [SP,#0xF0+var_F0]
CE050:  LDR             R0, =(__stack_chk_guard_ptr - 0xCE056)
CE052:  ADD             R0, PC; __stack_chk_guard_ptr
CE054:  LDR             R0, [R0]; __stack_chk_guard
CE056:  LDR             R0, [R0]
CE058:  STR             R0, [SP,#0xF0+var_20]
CE05A:  LDR             R3, [R1]
CE05C:  CLZ.W           R0, R3
CE060:  CMP             R0, #1
CE062:  BHI             loc_CE08C
CE064:  ASRS            R0, R3, #1
CE066:  CMP             R2, #1
CE068:  STRD.W          R0, R0, [SP,#0xF0+var_E8]
CE06C:  BLT             loc_CE0DC
CE06E:  ADDS            R0, R1, #4
CE070:  ADD             R5, SP, #0xF0+var_E8
CE072:  MOVS            R1, #0
CE074:  LDR.W           R3, [R0,R1,LSL#2]
CE078:  ADD.W           R6, R5, R1,LSL#3
CE07C:  ADDS            R1, #1
CE07E:  CMP             R1, R2
CE080:  MOV.W           R3, R3,ASR#1
CE084:  STRD.W          R3, R3, [R6,#8]
CE088:  BLT             loc_CE074
CE08A:  B               loc_CE0DC
CE08C:  CMP             R0, #2
CE08E:  BNE             loc_CE0B2
CE090:  CMP             R2, #1
CE092:  STRD.W          R3, R3, [SP,#0xF0+var_E8]
CE096:  BLT             loc_CE0DC
CE098:  ADDS            R0, R1, #4
CE09A:  ADD             R5, SP, #0xF0+var_E8
CE09C:  MOVS            R1, #0
CE09E:  LDR.W           R3, [R0,R1,LSL#2]
CE0A2:  ADD.W           R6, R5, R1,LSL#3
CE0A6:  ADDS            R1, #1
CE0A8:  CMP             R1, R2
CE0AA:  STRD.W          R3, R3, [R6,#8]
CE0AE:  BLT             loc_CE09E
CE0B0:  B               loc_CE0DC
CE0B2:  SUBS            R0, #2
CE0B4:  CMP             R2, #1
CE0B6:  LSL.W           R3, R3, R0
CE0BA:  STRD.W          R3, R3, [SP,#0xF0+var_E8]
CE0BE:  BLT             loc_CE0DC
CE0C0:  ADDS            R1, #4
CE0C2:  ADD             R3, SP, #0xF0+var_E8
CE0C4:  MOVS            R4, #0
CE0C6:  LDR.W           R6, [R1,R4,LSL#2]
CE0CA:  ADD.W           R5, R3, R4,LSL#3
CE0CE:  ADDS            R4, #1
CE0D0:  CMP             R4, R2
CE0D2:  LSL.W           R6, R6, R0
CE0D6:  STRD.W          R6, R6, [R5,#8]
CE0DA:  BLT             loc_CE0C6
CE0DC:  MOVS            R3, #0
CE0DE:  CMP             R2, #1
CE0E0:  BLT             loc_CE1A2
CE0E2:  ADD.W           R9, SP, #0xF0+var_E8
CE0E6:  MOV.W           R11, #8
CE0EA:  MOV             R10, R2
CE0EC:  MOV             R5, R11
CE0EE:  MOV             R11, R3
CE0F0:  ADD.W           R3, R11, #1
CE0F4:  LDR.W           R8, [SP,#0xF0+var_E4]
CE0F8:  LDR.W           R0, [R9,R3,LSL#3]
CE0FC:  EOR.W           R1, R0, R0,ASR#31
CE100:  SUB.W           R1, R1, R0,ASR#31
CE104:  CMP             R1, R8
CE106:  BGE             loc_CE1D6
CE108:  MOV.W           R1, R8,ASR#15
CE10C:  CMP             R1, #1
CE10E:  MOV.W           R1, #1
CE112:  STR             R3, [SP,#0xF0+var_EC]
CE114:  IT GT
CE116:  MOVGT.W         R1, R8,ASR#15
CE11A:  MOV             R4, R2
CE11C:  BLX             sub_108848
CE120:  MOVW            R1, #0x8000
CE124:  NEGS            R3, R0
CE126:  CMN.W           R3, #0x8000
CE12A:  MOVT            R1, #0xFFFF
CE12E:  IT LE
CE130:  MOVLE           R3, R1
CE132:  ADDS            R1, #1
CE134:  CMP             R0, R1
CE136:  MOV             R2, R4
CE138:  IT LT
CE13A:  MOVWLT          R3, #0x7FFF
CE13E:  LDR             R0, [SP,#0xF0+var_F0]
CE140:  CMP             R11, R2
CE142:  STRH.W          R3, [R0,R11,LSL#1]
CE146:  MOV             R11, R5
CE148:  BGE             loc_CE194
CE14A:  ADD.W           LR, R9, R11
CE14E:  SUB.W           R12, R10, #1
CE152:  SXTH            R0, R3
CE154:  MOVS            R3, #0
CE156:  B               loc_CE15E
CE158:  ADDS            R3, #1
CE15A:  LDR.W           R8, [R5,#0xC]
CE15E:  LDR.W           R5, [LR,R3,LSL#3]
CE162:  MOV.W           R1, R8,LSL#1
CE166:  CMP             R12, R3
CE168:  MOV.W           R6, R5,LSL#1
CE16C:  SMLABT.W        R5, R0, R1, R5
CE170:  UXTH            R1, R1
CE172:  UXTH            R4, R6
CE174:  MUL.W           R1, R0, R1
CE178:  MUL.W           R4, R0, R4
CE17C:  SMLABT.W        R6, R0, R6, R8
CE180:  ADD.W           R1, R5, R1,ASR#16
CE184:  ADD.W           R5, R9, R3,LSL#3
CE188:  STR.W           R1, [LR,R3,LSL#3]
CE18C:  ADD.W           R1, R6, R4,ASR#16
CE190:  STR             R1, [R5,#4]
CE192:  BNE             loc_CE158
CE194:  LDR             R3, [SP,#0xF0+var_EC]
CE196:  ADD.W           R11, R11, #8
CE19A:  SUB.W           R10, R10, #1
CE19E:  CMP             R3, R2
CE1A0:  BLT             loc_CE0EC
CE1A2:  CMP             R3, R2
CE1A4:  BGE             loc_CE1B4
CE1A6:  LDR             R0, [SP,#0xF0+var_F0]
CE1A8:  SUBS            R1, R2, R3
CE1AA:  ADD.W           R0, R0, R3,LSL#1; int
CE1AE:  LSLS            R1, R1, #1; n
CE1B0:  BLX             sub_10967C
CE1B4:  LDR             R1, =(__stack_chk_guard_ptr - 0xCE1BC)
CE1B6:  LDR             R0, [SP,#0xF0+var_E4]
CE1B8:  ADD             R1, PC; __stack_chk_guard_ptr
CE1BA:  CMP             R0, #1
CE1BC:  LDR             R1, [R1]; __stack_chk_guard
CE1BE:  IT LE
CE1C0:  MOVLE           R0, #1
CE1C2:  LDR             R2, [SP,#0xF0+var_20]
CE1C4:  LDR             R1, [R1]
CE1C6:  SUBS            R1, R1, R2
CE1C8:  ITTT EQ
CE1CA:  ADDEQ           SP, SP, #0xD4
CE1CC:  POPEQ.W         {R8-R11}
CE1D0:  POPEQ           {R4-R7,PC}
CE1D2:  BLX             __stack_chk_fail
CE1D6:  MOVW            R1, #0x7EB8
CE1DA:  CMP             R0, #0
CE1DC:  ITT GT
CE1DE:  MOVWGT          R1, #0x8148
CE1E2:  MOVTGT          R1, #0xFFFF
CE1E6:  LDR             R0, [SP,#0xF0+var_F0]
CE1E8:  STRH.W          R1, [R0,R11,LSL#1]
CE1EC:  CMP             R3, R2
CE1EE:  BLT             loc_CE1A6
CE1F0:  B               loc_CE1B4
