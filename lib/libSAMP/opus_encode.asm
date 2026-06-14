; =========================================================
; Game Engine Function: opus_encode
; Address            : 0x1A5A00 - 0x1A5AD6
; =========================================================

1A5A00:  PUSH            {R4-R7,LR}
1A5A02:  ADD             R7, SP, #0xC
1A5A04:  PUSH.W          {R8,R9,R11}
1A5A08:  SUB             SP, SP, #0x28
1A5A0A:  LDR.W           R4, [R0,#0x90]
1A5A0E:  MOV             R9, #0x51EB851F
1A5A16:  LDR.W           LR, [R7,#arg_0]
1A5A1A:  MOV             R12, R2
1A5A1C:  SMMUL.W         R5, R4, R9
1A5A20:  ASRS            R6, R5, #7
1A5A22:  ADD.W           R5, R6, R5,LSR#31
1A5A26:  CMP             R5, R12
1A5A28:  BGT             loc_1A5ABC
1A5A2A:  LDR.W           R6, [R0,#0x9C]
1A5A2E:  MOVW            R2, #0x1388
1A5A32:  CMP             R6, R2
1A5A34:  BNE             loc_1A5A3A
1A5A36:  MOV             R2, R12
1A5A38:  B               loc_1A5A58
1A5A3A:  MOVW            R2, #0x1389
1A5A3E:  SUB.W           R8, R6, R2
1A5A42:  CMP.W           R8, #8
1A5A46:  BHI             loc_1A5ABC
1A5A48:  MOVW            R2, #0x138D
1A5A4C:  CMP             R6, R2
1A5A4E:  BGT             loc_1A5AA6
1A5A50:  LSL.W           R2, R5, R8
1A5A54:  CMP             R2, R12
1A5A56:  BGT             loc_1A5ABC
1A5A58:  MOVS            R6, #0x64 ; 'd'
1A5A5A:  MULS            R6, R2
1A5A5C:  CMP             R6, R4
1A5A5E:  ITTT NE
1A5A60:  MOVNE.W         R6, #0x190
1A5A64:  MULNE           R6, R2
1A5A66:  CMPNE           R6, R4
1A5A68:  BEQ             loc_1A5AC0
1A5A6A:  MOVS            R6, #0xC8
1A5A6C:  MULS            R6, R2
1A5A6E:  CMP             R6, R4
1A5A70:  ITTTT NE
1A5A72:  MOVNE           R6, #0x32 ; '2'
1A5A74:  MULNE.W         R12, R2, R6
1A5A78:  ADDNE.W         R5, R4, R4,LSL#1
1A5A7C:  CMPNE.W         R12, R5,LSL#1
1A5A80:  BEQ             loc_1A5AC0
1A5A82:  ADD.W           R6, R4, R4,LSL#2
1A5A86:  CMP             R12, R6
1A5A88:  ITT NE
1A5A8A:  LSLNE           R6, R4, #2
1A5A8C:  CMPNE           R12, R6
1A5A8E:  BEQ             loc_1A5AC0
1A5A90:  CMP             R12, R5
1A5A92:  IT NE
1A5A94:  CMPNE           R12, R4
1A5A96:  BEQ             loc_1A5AC0
1A5A98:  MOVS            R6, #0x19
1A5A9A:  MULS            R6, R2
1A5A9C:  CMP             R6, R4
1A5A9E:  IT NE
1A5AA0:  MOVNE.W         R2, #0xFFFFFFFF
1A5AA4:  B               loc_1A5AC0
1A5AA6:  MOVW            R2, #0x138B
1A5AAA:  SUBS            R2, R6, R2
1A5AAC:  MULS            R2, R4
1A5AAE:  SMMUL.W         R2, R2, R9
1A5AB2:  ASRS            R5, R2, #4
1A5AB4:  ADD.W           R2, R5, R2,LSR#31
1A5AB8:  CMP             R2, R12
1A5ABA:  BLE             loc_1A5A58
1A5ABC:  MOV.W           R2, #0xFFFFFFFF
1A5AC0:  MOVS            R6, #0
1A5AC2:  STR             R6, [SP,#0x40+var_20]
1A5AC4:  MOVS            R6, #0x10
1A5AC6:  STRD.W          LR, R6, [SP,#0x40+var_40]
1A5ACA:  BLX             j_opus_encode_native
1A5ACE:  ADD             SP, SP, #0x28 ; '('
1A5AD0:  POP.W           {R8,R9,R11}
1A5AD4:  POP             {R4-R7,PC}
