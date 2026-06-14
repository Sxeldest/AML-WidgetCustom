; =========================================================
; Game Engine Function: sub_C2D30
; Address            : 0xC2D30 - 0xC2DEC
; =========================================================

C2D30:  PUSH            {R4-R7,LR}
C2D32:  ADD             R7, SP, #0xC
C2D34:  PUSH.W          {R8}
C2D38:  MOV             R8, R0
C2D3A:  MOVS            R0, #0
C2D3C:  CMP.W           R8, #0
C2D40:  BEQ             loc_C2DE4
C2D42:  CMP             R1, #0
C2D44:  IT NE
C2D46:  CMPNE           R2, #0
C2D48:  BEQ             loc_C2DE4
C2D4A:  CLZ.W           R3, R1
C2D4E:  RSB.W           R5, R3, #0x1F
C2D52:  RSB.W           R0, R3, #0x11
C2D56:  RSB.W           R4, R5, #0xE
C2D5A:  CMP             R5, #0xE
C2D5C:  CLZ.W           R5, R2
C2D60:  LSL.W           R4, R1, R4
C2D64:  IT GT
C2D66:  ASRGT.W         R4, R1, R0
C2D6A:  RSB.W           R1, R5, #0x1F
C2D6E:  RSB.W           R6, R1, #0xE
C2D72:  RSB.W           R0, R5, #0x11
C2D76:  CMP             R1, #0xE
C2D78:  LSL.W           R6, R2, R6
C2D7C:  IT GT
C2D7E:  ASRGT.W         R6, R2, R0
C2D82:  ADDS            R2, R5, R3
C2D84:  SMULBB.W        R1, R6, R4
C2D88:  RSB.W           R5, R2, #0x22 ; '"'
C2D8C:  TST.W           R5, #1
C2D90:  MOV.W           R0, R1,ASR#14
C2D94:  BEQ             loc_C2DA6
C2D96:  CMP.W           R0, #0x8000
C2D9A:  BGE             loc_C2DA2
C2D9C:  SUBS            R5, #1
C2D9E:  LSLS            R0, R0, #1
C2DA0:  B               loc_C2DA6
C2DA2:  ADDS            R5, #1
C2DA4:  ASRS            R0, R1, #0xF
C2DA6:  BLX             j_celt_rsqrt_norm
C2DAA:  UXTH.W          R1, R8
C2DAE:  ASRS            R3, R5, #1
C2DB0:  MULS            R1, R0
C2DB2:  CMP             R3, #1
C2DB4:  SMULTB.W        R0, R8, R0
C2DB8:  MOV.W           R0, R0,LSL#1
C2DBC:  ADD.W           R1, R0, R1,ASR#15
C2DC0:  MOV.W           R0, #0xFFFFFFFF
C2DC4:  ADD.W           R2, R0, R5,ASR#1
C2DC8:  MOV.W           R0, #1
C2DCC:  SUB.W           R0, R0, R5,ASR#1
C2DD0:  LSL.W           R0, R1, R0
C2DD4:  IT GT
C2DD6:  ASRGT.W         R0, R1, R2
C2DDA:  MOVW            R1, #0x7FFF
C2DDE:  CMP             R0, R1
C2DE0:  IT GE
C2DE2:  MOVGE           R0, R1
C2DE4:  SXTH            R0, R0
C2DE6:  POP.W           {R8}
C2DEA:  POP             {R4-R7,PC}
