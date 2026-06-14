; =========================================================
; Game Engine Function: sub_C0B3C
; Address            : 0xC0B3C - 0xC0BF0
; =========================================================

C0B3C:  PUSH            {R4-R7,LR}
C0B3E:  ADD             R7, SP, #0xC
C0B40:  PUSH.W          {R8-R10}
C0B44:  LDR.W           R12, [R7,#arg_0]
C0B48:  MOV             R4, R2
C0B4A:  MOV             R5, R1
C0B4C:  LDR             R6, [R7,#arg_4]
C0B4E:  ADD.W           R2, R12, R0
C0B52:  LDR.W           R1, [R3,R12,LSL#2]
C0B56:  LDR.W           R0, [R3,R2,LSL#2]
C0B5A:  CMP             R1, R0
C0B5C:  IT GT
C0B5E:  MOVGT           R2, R12
C0B60:  LDR.W           R2, [R3,R2,LSL#2]
C0B64:  CMP             R2, #1
C0B66:  ITTE GE
C0B68:  CLZGE.W         R2, R2
C0B6C:  RSBGE.W         R2, R2, #0x1F
C0B70:  MOVLT           R2, #0
C0B72:  SUBS.W          R3, R2, #0xD
C0B76:  RSB.W           R2, R2, #0xD
C0B7A:  LSL.W           R8, R1, R2
C0B7E:  LSL.W           R10, R0, R2
C0B82:  IT GT
C0B84:  ASRGT.W         R8, R1, R3
C0B88:  IT GT
C0B8A:  ASRGT.W         R10, R0, R3
C0B8E:  SMULBB.W        R1, R8, R8
C0B92:  SMLABB.W        R0, R10, R10, R1
C0B96:  ADDS            R0, #1
C0B98:  BLX             j_celt_sqrt
C0B9C:  CMP             R6, #1
C0B9E:  BLT             loc_C0BEA
C0BA0:  MOV.W           R1, #0x10000
C0BA4:  ADD.W           R0, R1, R0,LSL#16
C0BA8:  MOV.W           R9, R0,ASR#16
C0BAC:  MOV.W           R0, R10,LSL#16
C0BB0:  ASRS            R0, R0, #2
C0BB2:  MOV             R1, R9
C0BB4:  MOV.W           R10, R8,LSL#16
C0BB8:  BLX             sub_108848
C0BBC:  MOV             R8, R0
C0BBE:  MOV.W           R0, R10,ASR#2
C0BC2:  MOV             R1, R9
C0BC4:  BLX             sub_108848
C0BC8:  SXTH.W          R1, R8
C0BCC:  SXTH            R0, R0
C0BCE:  LDRSH.W         R2, [R4],#2
C0BD2:  SUBS            R6, #1
C0BD4:  LDRSH.W         R3, [R5]
C0BD8:  SMULBB.W        R2, R1, R2
C0BDC:  SMLABB.W        R2, R0, R3, R2
C0BE0:  MOV.W           R2, R2,LSR#14
C0BE4:  STRH.W          R2, [R5],#2
C0BE8:  BNE             loc_C0BCE
C0BEA:  POP.W           {R8-R10}
C0BEE:  POP             {R4-R7,PC}
