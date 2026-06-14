; =========================================================
; Game Engine Function: sub_1801D8
; Address            : 0x1801D8 - 0x180270
; =========================================================

1801D8:  PUSH            {R4-R7,LR}
1801DA:  ADD             R7, SP, #0xC
1801DC:  PUSH.W          {R8-R11}
1801E0:  SUB             SP, SP, #0xC
1801E2:  MOV             R4, R0
1801E4:  LDR             R0, [R0]
1801E6:  MOV             R9, R3
1801E8:  ADD             R3, SP, #0x28+var_24
1801EA:  LDR.W           R6, [R0,#0xC0]
1801EE:  MOV             R0, R4
1801F0:  BLX             R6
1801F2:  LDRD.W          R1, R2, [SP,#0x28+var_24]
1801F6:  MOV.W           R10, #1
1801FA:  MOV             R0, R4
1801FC:  MOVS            R3, #0
1801FE:  STR.W           R10, [SP,#0x28+var_28]
180202:  MOV.W           R11, #0
180206:  BL              sub_181978
18020A:  MOV             R6, R0
18020C:  CBNZ            R0, loc_180262
18020E:  ADD.W           R0, R4, #0x38C
180212:  LDR.W           R8, [R7,#arg_0]
180216:  BL              sub_1824B6
18021A:  MOV             R5, R0
18021C:  LDR             R0, [SP,#0x28+var_24]
18021E:  LDRH.W          R1, [SP,#0x28+var_20]
180222:  STR             R0, [R5]
180224:  STRH            R1, [R5,#4]
180226:  BL              sub_17E2E4
18022A:  STR             R0, [R5,#8]
18022C:  ADD.W           R0, R5, #0x16; dest
180230:  MOV             R1, R9; src
180232:  MOV             R2, R8; n
180234:  STR.W           R10, [R5,#0x118]
180238:  STR.W           R11, [R5,#0x10]
18023C:  STRB.W          R11, [R5,#0xC]
180240:  BLX             j_memcpy
180244:  LDR.W           R0, [R4,#0x398]
180248:  LDR.W           R1, [R4,#0x3A0]
18024C:  STRB.W          R10, [R0,#0x11C]
180250:  ADDS            R1, #1
180252:  STRB.W          R8, [R5,#0x116]
180256:  LDR.W           R0, [R0,#0x120]
18025A:  STR.W           R1, [R4,#0x3A0]
18025E:  STR.W           R0, [R4,#0x398]
180262:  CLZ.W           R0, R6
180266:  LSRS            R0, R0, #5
180268:  ADD             SP, SP, #0xC
18026A:  POP.W           {R8-R11}
18026E:  POP             {R4-R7,PC}
