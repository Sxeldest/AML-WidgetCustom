; =========================================================
; Game Engine Function: silk_schur64
; Address            : 0xD0A74 - 0xD0C60
; =========================================================

D0A74:  PUSH            {R4-R7,LR}
D0A76:  ADD             R7, SP, #0xC
D0A78:  PUSH.W          {R8-R11}
D0A7C:  SUB             SP, SP, #0xE4
D0A7E:  LDR             R3, =(__stack_chk_guard_ptr - 0xD0A84)
D0A80:  ADD             R3, PC; __stack_chk_guard_ptr
D0A82:  LDR             R3, [R3]; __stack_chk_guard
D0A84:  LDR             R3, [R3]
D0A86:  STR             R3, [SP,#0x100+var_20]
D0A88:  LDR             R3, [R1]
D0A8A:  CMP             R3, #1
D0A8C:  BLT.W           loc_D0C24
D0A90:  CMP             R2, #1
D0A92:  STRD.W          R3, R3, [SP,#0x100+var_E8]
D0A96:  BLT             loc_D0AB0
D0A98:  ADDS            R4, R1, #4
D0A9A:  ADD             R5, SP, #0x100+var_E8
D0A9C:  MOVS            R1, #0
D0A9E:  LDR.W           R3, [R4,R1,LSL#2]
D0AA2:  ADD.W           R6, R5, R1,LSL#3
D0AA6:  ADDS            R1, #1
D0AA8:  CMP             R1, R2
D0AAA:  STRD.W          R3, R3, [R6,#8]
D0AAE:  BLT             loc_D0A9E
D0AB0:  MOVS            R6, #0
D0AB2:  CMP             R2, #1
D0AB4:  BLT.W           loc_D0C0A
D0AB8:  ADD.W           R9, SP, #0x100+var_E8
D0ABC:  MOV.W           R8, #8
D0AC0:  MOV             R11, R2
D0AC2:  STR             R2, [SP,#0x100+var_FC]
D0AC4:  MOV             R5, R6
D0AC6:  ADDS            R6, R5, #1
D0AC8:  LDR.W           R10, [SP,#0x100+var_E4]
D0ACC:  LDR.W           R3, [R9,R6,LSL#3]
D0AD0:  EOR.W           R1, R3, R3,ASR#31
D0AD4:  SUB.W           R1, R1, R3,ASR#31
D0AD8:  CMP             R1, R10
D0ADA:  BGE.W           loc_D0C46
D0ADE:  NEGS            R1, R3
D0AE0:  CMP             R3, #0
D0AE2:  STRD.W          R11, R8, [SP,#0x100+var_F4]
D0AE6:  MOV             R4, R0
D0AE8:  IT MI
D0AEA:  MOVMI           R3, R1
D0AEC:  CMP.W           R10, #0
D0AF0:  CLZ.W           R11, R3
D0AF4:  STR             R5, [SP,#0x100+var_F8]
D0AF6:  SUB.W           R0, R11, #1
D0AFA:  STR             R6, [SP,#0x100+var_EC]
D0AFC:  LSL.W           R8, R1, R0
D0B00:  MOV             R0, R10
D0B02:  IT MI
D0B04:  RSBMI.W         R0, R10, #0
D0B08:  CLZ.W           R5, R0
D0B0C:  SUBS            R0, R5, #1
D0B0E:  LSL.W           R9, R10, R0
D0B12:  MOV             R0, #0x1FFFFFFF
D0B16:  MOV.W           R1, R9,ASR#16
D0B1A:  BLX             sub_108848
D0B1E:  UXTH.W          R1, R8
D0B22:  SXTH            R2, R0
D0B24:  MULS            R1, R2
D0B26:  ASRS            R1, R1, #0x10
D0B28:  SMLABT.W        R1, R0, R8, R1
D0B2C:  SMMUL.W         R3, R1, R9
D0B30:  SUB.W           R3, R8, R3,LSL#3
D0B34:  UXTH            R6, R3
D0B36:  SMLABT.W        R0, R0, R3, R1
D0B3A:  MULS            R2, R6
D0B3C:  ADD.W           R1, R0, R2,ASR#16
D0B40:  RSB.W           R0, R5, #1
D0B44:  ADD             R0, R11
D0B46:  ADDS            R0, #0x1C
D0B48:  CMP             R0, #0x1E
D0B4A:  BGT             loc_D0B80
D0B4C:  RSB.W           R12, R0, #0x1F
D0B50:  MOV             R0, #0x7FFFFFFF
D0B54:  LDR.W           R8, [SP,#0x100+var_F0]
D0B58:  ADD.W           R9, SP, #0x100+var_E8
D0B5C:  LDR.W           R11, [SP,#0x100+var_F4]
D0B60:  LSR.W           R2, R0, R12
D0B64:  MOV.W           R0, #0x80000000
D0B68:  ASR.W           R3, R0, R12
D0B6C:  CMP             R3, R2
D0B6E:  MOV             R0, R4
D0B70:  BLE             loc_D0BA0
D0B72:  CMP             R1, R3
D0B74:  MOV             R6, R3
D0B76:  BGT             loc_D0BAE
D0B78:  CMP             R1, R2
D0B7A:  IT LT
D0B7C:  MOVLT           R1, R2
D0B7E:  B               loc_D0BAC
D0B80:  SUB.W           R2, R0, #0x1F
D0B84:  CMP             R0, #0x3F ; '?'
D0B86:  MOV.W           LR, #0
D0B8A:  ADD.W           R9, SP, #0x100+var_E8
D0B8E:  IT LT
D0B90:  ASRLT.W         LR, R1, R2
D0B94:  LDR.W           R8, [SP,#0x100+var_F0]
D0B98:  LDR.W           R11, [SP,#0x100+var_F4]
D0B9C:  MOV             R0, R4
D0B9E:  B               loc_D0BB2
D0BA0:  CMP             R1, R2
D0BA2:  MOV             R6, R2
D0BA4:  BGT             loc_D0BAE
D0BA6:  CMP             R1, R3
D0BA8:  IT LT
D0BAA:  MOVLT           R1, R3
D0BAC:  MOV             R6, R1
D0BAE:  LSL.W           LR, R6, R12
D0BB2:  MOVS            R1, #1
D0BB4:  LDR             R3, [SP,#0x100+var_F8]
D0BB6:  ADD.W           R1, R1, LR,ASR#14
D0BBA:  ASRS            R1, R1, #1
D0BBC:  STR.W           R1, [R0,R3,LSL#2]
D0BC0:  LDR             R2, [SP,#0x100+var_FC]
D0BC2:  CMP             R3, R2
D0BC4:  BGE             loc_D0BFA
D0BC6:  ADD.W           R1, R9, R8
D0BCA:  SUB.W           R12, R11, #1
D0BCE:  MOVS            R3, #0
D0BD0:  B               loc_D0BD8
D0BD2:  ADDS            R3, #1
D0BD4:  LDR.W           R10, [R6,#0xC]
D0BD8:  LDR.W           R6, [R1,R3,LSL#3]
D0BDC:  MOV.W           R5, R10,LSL#1
D0BE0:  SMMLA.W         R5, LR, R5, R6
D0BE4:  CMP             R12, R3
D0BE6:  MOV.W           R6, R6,LSL#1
D0BEA:  SMMLA.W         R4, LR, R6, R10
D0BEE:  ADD.W           R6, R9, R3,LSL#3
D0BF2:  STR.W           R5, [R1,R3,LSL#3]
D0BF6:  STR             R4, [R6,#4]
D0BF8:  BNE             loc_D0BD2
D0BFA:  LDR             R6, [SP,#0x100+var_EC]
D0BFC:  ADD.W           R8, R8, #8
D0C00:  SUB.W           R11, R11, #1
D0C04:  CMP             R6, R2
D0C06:  BLT.W           loc_D0AC4
D0C0A:  CMP             R6, R2
D0C0C:  BGE             loc_D0C1A
D0C0E:  SUBS            R1, R2, R6
D0C10:  ADD.W           R0, R0, R6,LSL#2; int
D0C14:  LSLS            R1, R1, #2; n
D0C16:  BLX             sub_10967C
D0C1A:  LDR             R0, [SP,#0x100+var_E4]
D0C1C:  CMP             R0, #1
D0C1E:  IT LE
D0C20:  MOVLE           R0, #1; int
D0C22:  B               loc_D0C2C
D0C24:  LSLS            R1, R2, #2; n
D0C26:  BLX             sub_10967C
D0C2A:  MOVS            R0, #0
D0C2C:  LDR             R1, =(__stack_chk_guard_ptr - 0xD0C34)
D0C2E:  LDR             R2, [SP,#0x100+var_20]
D0C30:  ADD             R1, PC; __stack_chk_guard_ptr
D0C32:  LDR             R1, [R1]; __stack_chk_guard
D0C34:  LDR             R1, [R1]
D0C36:  SUBS            R1, R1, R2
D0C38:  ITTT EQ
D0C3A:  ADDEQ           SP, SP, #0xE4
D0C3C:  POPEQ.W         {R8-R11}
D0C40:  POPEQ           {R4-R7,PC}
D0C42:  BLX             __stack_chk_fail
D0C46:  MOVW            R1, #0xFD71
D0C4A:  CMP             R3, #0
D0C4C:  ITT GT
D0C4E:  MOVWGT          R1, #0x28F
D0C52:  MOVTGT          R1, #0xFFFF
D0C56:  STR.W           R1, [R0,R5,LSL#2]
D0C5A:  CMP             R6, R2
D0C5C:  BLT             loc_D0C0E
D0C5E:  B               loc_D0C1A
