; =========================================================
; Game Engine Function: sub_174204
; Address            : 0x174204 - 0x1742E2
; =========================================================

174204:  PUSH            {R4-R7,LR}
174206:  ADD             R7, SP, #0xC
174208:  PUSH.W          {R8-R11}
17420C:  SUB             SP, SP, #4
17420E:  MOV             R8, R2
174210:  LDRD.W          R10, R2, [R7,#arg_0]
174214:  MOV             R6, R1
174216:  MOV             R4, R0
174218:  ORR.W           R0, R10, R3
17421C:  LDR             R1, [R7,#arg_8]
17421E:  ORRS            R0, R2
174220:  ORRS            R0, R1
174222:  CMP.W           R0, #0x1000000
174226:  BCC             loc_1742DA
174228:  LDR             R0, [R4,#0x28]
17422A:  MOVS            R1, #6
17422C:  MOVS            R2, #4
17422E:  MOV             R5, R3
174230:  LDRD.W          R11, R9, [R0]
174234:  MOV             R0, R4
174236:  BL              sub_172DC0
17423A:  LDRH            R2, [R4,#0x34]
17423C:  LDRD.W          R0, R1, [R4,#0x38]
174240:  ADD.W           R3, R1, #0xC
174244:  STR             R3, [R4,#0x3C]
174246:  ADDS            R3, R2, #3
174248:  STRH            R3, [R1,#0xA]
17424A:  ADDS            R3, R2, #2
17424C:  STRH            R3, [R1,#8]
17424E:  STRH            R3, [R1,#4]
174250:  ADDS            R3, R2, #1
174252:  STRH            R2, [R1,#6]
174254:  STRH            R3, [R1,#2]
174256:  STRH            R2, [R1]
174258:  LDRD.W          R1, R2, [R6]
17425C:  STRD.W          R1, R2, [R0]
174260:  LDR             R0, [R4,#0x38]
174262:  STRD.W          R11, R9, [R0,#8]
174266:  LDRD.W          R0, R1, [R4,#0x34]
17426A:  ADD.W           R2, R1, #0x14
17426E:  STR             R5, [R1,#0x10]
174270:  ADDS            R0, #1
174272:  STRD.W          R0, R2, [R4,#0x34]
174276:  LDR             R2, [R6,#4]
174278:  LDR.W           R0, [R8]
17427C:  STRD.W          R0, R2, [R1,#0x14]
174280:  LDR             R0, [R4,#0x38]
174282:  STRD.W          R11, R9, [R0,#8]
174286:  LDRD.W          R0, R1, [R4,#0x34]
17428A:  ADD.W           R2, R1, #0x14
17428E:  STR.W           R10, [R1,#0x10]
174292:  ADDS            R0, #1
174294:  STRD.W          R0, R2, [R4,#0x34]
174298:  LDRD.W          R0, R2, [R8]
17429C:  STRD.W          R0, R2, [R1,#0x14]
1742A0:  LDR             R0, [R4,#0x38]
1742A2:  STRD.W          R11, R9, [R0,#8]
1742A6:  LDR.W           R3, [R8,#4]
1742AA:  LDRD.W          R0, R1, [R4,#0x34]
1742AE:  LDR             R2, [R6]
1742B0:  ADD.W           R6, R1, #0x14
1742B4:  ADDS            R0, #1
1742B6:  STRD.W          R0, R6, [R4,#0x34]
1742BA:  STRD.W          R2, R3, [R1,#0x14]
1742BE:  LDR             R0, [R4,#0x38]
1742C0:  LDR             R2, [R7,#arg_4]
1742C2:  STR             R2, [R1,#0x10]
1742C4:  STRD.W          R11, R9, [R0,#8]
1742C8:  LDRD.W          R0, R1, [R4,#0x34]
1742CC:  ADD.W           R2, R1, #0x14
1742D0:  ADDS            R0, #1
1742D2:  STRD.W          R0, R2, [R4,#0x34]
1742D6:  LDR             R0, [R7,#arg_8]
1742D8:  STR             R0, [R1,#0x10]
1742DA:  ADD             SP, SP, #4
1742DC:  POP.W           {R8-R11}
1742E0:  POP             {R4-R7,PC}
