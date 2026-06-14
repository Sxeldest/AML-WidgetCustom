; =========================================================
; Game Engine Function: sub_180774
; Address            : 0x180774 - 0x18080C
; =========================================================

180774:  PUSH            {R4-R7,LR}
180776:  ADD             R7, SP, #0xC
180778:  PUSH.W          {R8-R11}
18077C:  SUB             SP, SP, #0xC
18077E:  MOV             R10, R2
180780:  MOV             R9, R1
180782:  MOV             R4, R0
180784:  STR             R3, [SP,#0x28+var_24]
180786:  CBZ             R1, loc_18079E
180788:  CMP.W           R10, #1
18078C:  BLT             loc_18079E
18078E:  BL              sub_16201C
180792:  MOV.W           R2, R10,LSR#3
180796:  MOV             R1, R9
180798:  MOVS            R3, #0
18079A:  BL              sub_16206C
18079E:  ADDW            R0, R4, #0x7BC
1807A2:  BL              sub_182F10
1807A6:  MOV             R6, R0
1807A8:  ADD.W           R0, R10, #7
1807AC:  ASRS            R5, R0, #3
1807AE:  MOV             R0, R5; unsigned int
1807B0:  BLX             j__Znaj; operator new[](uint)
1807B4:  MOV             R1, R9; src
1807B6:  MOV             R2, R5; n
1807B8:  LDR.W           R8, [R7,#arg_14]
1807BC:  LDR.W           R11, [R7,#arg_4]
1807C0:  STR             R0, [R6,#0x30]
1807C2:  BLX             j_memcpy
1807C6:  MOVS            R0, #0
1807C8:  STR.W           R8, [R6,#0x1C]
1807CC:  STR             R0, [R6,#0x34]
1807CE:  LDR             R0, [R7,#arg_10]
1807D0:  STRB            R0, [R6,#0x18]
1807D2:  LDR             R0, [R7,#arg_C]
1807D4:  STRH            R0, [R6,#0x14]
1807D6:  LDR             R0, [R7,#arg_8]
1807D8:  STR             R0, [R6,#0x10]
1807DA:  LDR             R0, [SP,#0x28+var_24]
1807DC:  STR             R0, [R6,#4]
1807DE:  LDR             R0, [R7,#arg_0]
1807E0:  STRB.W          R11, [R6,#0xC]
1807E4:  STR.W           R10, [R6]
1807E8:  STR             R0, [R6,#8]
1807EA:  LDR.W           R0, [R4,#0x7C8]
1807EE:  MOVS            R2, #1
1807F0:  LDR.W           R1, [R4,#0x7D0]
1807F4:  STRB.W          R2, [R0,#0x38]
1807F8:  ADDS            R1, #1
1807FA:  LDR             R0, [R0,#0x3C]
1807FC:  STR.W           R1, [R4,#0x7D0]
180800:  STR.W           R0, [R4,#0x7C8]
180804:  ADD             SP, SP, #0xC
180806:  POP.W           {R8-R11}
18080A:  POP             {R4-R7,PC}
