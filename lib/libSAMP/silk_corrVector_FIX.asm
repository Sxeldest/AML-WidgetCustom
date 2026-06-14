; =========================================================
; Game Engine Function: silk_corrVector_FIX
; Address            : 0x1AF3A8 - 0x1AF43A
; =========================================================

1AF3A8:  PUSH            {R4-R7,LR}
1AF3AA:  ADD             R7, SP, #0xC
1AF3AC:  PUSH.W          {R8-R10}
1AF3B0:  MOV             R9, R3
1AF3B2:  LDRD.W          R8, LR, [R7,#arg_0]
1AF3B6:  ADD.W           R0, R0, R9,LSL#1
1AF3BA:  MOV             R5, R2
1AF3BC:  SUBS            R4, R0, #2
1AF3BE:  MOV             R6, R1
1AF3C0:  CMP.W           LR, #0
1AF3C4:  BLE             loc_1AF400
1AF3C6:  CMP.W           R9, #1
1AF3CA:  BLT             loc_1AF424
1AF3CC:  CMP             R5, #1
1AF3CE:  BLT             loc_1AF42A
1AF3D0:  MOV.W           R12, #0
1AF3D4:  MOVS            R2, #0
1AF3D6:  MOVS            R3, #0
1AF3D8:  LDRSH.W         R0, [R4,R3,LSL#1]
1AF3DC:  LDRSH.W         R1, [R6,R3,LSL#1]
1AF3E0:  ADDS            R3, #1
1AF3E2:  CMP             R5, R3
1AF3E4:  SMULBB.W        R0, R1, R0
1AF3E8:  ASR.W           R0, R0, LR
1AF3EC:  ADD             R2, R0
1AF3EE:  BNE             loc_1AF3D8
1AF3F0:  STR.W           R2, [R8,R12,LSL#2]
1AF3F4:  ADD.W           R12, R12, #1
1AF3F8:  SUBS            R4, #2
1AF3FA:  CMP             R12, R9
1AF3FC:  BNE             loc_1AF3D4
1AF3FE:  B               loc_1AF424
1AF400:  CMP.W           R9, #1
1AF404:  BLT             loc_1AF424
1AF406:  LDR.W           R10, [R7,#arg_8]
1AF40A:  MOV             R0, R4
1AF40C:  MOV             R1, R6
1AF40E:  MOV             R2, R5
1AF410:  MOV             R3, R10
1AF412:  BLX             j_silk_inner_prod_aligned
1AF416:  STR.W           R0, [R8],#4
1AF41A:  SUBS.W          R9, R9, #1
1AF41E:  SUB.W           R4, R4, #2
1AF422:  BNE             loc_1AF40A
1AF424:  POP.W           {R8-R10}
1AF428:  POP             {R4-R7,PC}
1AF42A:  MOV.W           R1, R9,LSL#2; n
1AF42E:  MOV             R0, R8; int
1AF430:  BLX             sub_22178C
1AF434:  POP.W           {R8-R10}
1AF438:  POP             {R4-R7,PC}
