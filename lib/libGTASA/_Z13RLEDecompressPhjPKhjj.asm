; =========================================================
; Game Engine Function: _Z13RLEDecompressPhjPKhjj
; Address            : 0x1E7396 - 0x1E740E
; =========================================================

1E7396:  PUSH            {R4-R7,LR}
1E7398:  ADD             R7, SP, #0xC
1E739A:  PUSH.W          {R8-R11}
1E739E:  SUB             SP, SP, #0xC
1E73A0:  MOV             R4, R3
1E73A2:  MOV             R9, R2
1E73A4:  MOV             R8, R0
1E73A6:  CMP             R1, #1
1E73A8:  BLT             loc_1E7406
1E73AA:  LDR             R5, [R7,#arg_0]
1E73AC:  ADD.W           R6, R8, R1
1E73B0:  ADDS            R0, R4, #2
1E73B2:  STRD.W          R6, R0, [SP,#0x28+var_24]
1E73B6:  LDRB.W          R0, [R9]
1E73BA:  CMP             R0, R5
1E73BC:  BNE             loc_1E73EE
1E73BE:  LDRB.W          R10, [R9,#1]
1E73C2:  CMP.W           R10, #0
1E73C6:  BEQ             loc_1E73FE
1E73C8:  MUL.W           R11, R10, R4
1E73CC:  ADD.W           R6, R9, #2
1E73D0:  MOV             R5, R8
1E73D2:  MOV             R0, R5; void *
1E73D4:  MOV             R1, R6; void *
1E73D6:  MOV             R2, R4; size_t
1E73D8:  BLX             memcpy_1
1E73DC:  ADD             R5, R4
1E73DE:  SUBS.W          R10, R10, #1
1E73E2:  BNE             loc_1E73D2
1E73E4:  LDR             R0, [SP,#0x28+var_20]
1E73E6:  ADD             R8, R11
1E73E8:  LDR             R5, [R7,#arg_0]
1E73EA:  LDR             R6, [SP,#0x28+var_24]
1E73EC:  B               loc_1E7400
1E73EE:  MOV             R0, R8; void *
1E73F0:  MOV             R1, R9; void *
1E73F2:  MOV             R2, R4; size_t
1E73F4:  BLX             memcpy_1
1E73F8:  ADD             R8, R4
1E73FA:  MOV             R0, R4
1E73FC:  B               loc_1E7400
1E73FE:  LDR             R0, [SP,#0x28+var_20]
1E7400:  ADD             R9, R0
1E7402:  CMP             R8, R6
1E7404:  BCC             loc_1E73B6
1E7406:  ADD             SP, SP, #0xC
1E7408:  POP.W           {R8-R11}
1E740C:  POP             {R4-R7,PC}
