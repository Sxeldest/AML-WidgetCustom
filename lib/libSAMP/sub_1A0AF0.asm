; =========================================================
; Game Engine Function: sub_1A0AF0
; Address            : 0x1A0AF0 - 0x1A0BAC
; =========================================================

1A0AF0:  PUSH            {R4-R7,LR}
1A0AF2:  ADD             R7, SP, #0xC
1A0AF4:  PUSH.W          {R8}
1A0AF8:  MOV             R8, R0
1A0AFA:  MOVS            R0, #0
1A0AFC:  CMP.W           R8, #0
1A0B00:  BEQ             loc_1A0BA4
1A0B02:  CMP             R1, #0
1A0B04:  IT NE
1A0B06:  CMPNE           R2, #0
1A0B08:  BEQ             loc_1A0BA4
1A0B0A:  CLZ.W           R3, R1
1A0B0E:  RSB.W           R5, R3, #0x1F
1A0B12:  RSB.W           R0, R3, #0x11
1A0B16:  RSB.W           R4, R5, #0xE
1A0B1A:  CMP             R5, #0xE
1A0B1C:  CLZ.W           R5, R2
1A0B20:  LSL.W           R4, R1, R4
1A0B24:  IT GT
1A0B26:  ASRGT.W         R4, R1, R0
1A0B2A:  RSB.W           R1, R5, #0x1F
1A0B2E:  RSB.W           R6, R1, #0xE
1A0B32:  RSB.W           R0, R5, #0x11
1A0B36:  CMP             R1, #0xE
1A0B38:  LSL.W           R6, R2, R6
1A0B3C:  IT GT
1A0B3E:  ASRGT.W         R6, R2, R0
1A0B42:  ADDS            R2, R5, R3
1A0B44:  SMULBB.W        R1, R6, R4
1A0B48:  RSB.W           R5, R2, #0x22 ; '"'
1A0B4C:  TST.W           R5, #1
1A0B50:  MOV.W           R0, R1,ASR#14
1A0B54:  BEQ             loc_1A0B66
1A0B56:  CMP.W           R0, #0x8000
1A0B5A:  BGE             loc_1A0B62
1A0B5C:  SUBS            R5, #1
1A0B5E:  LSLS            R0, R0, #1
1A0B60:  B               loc_1A0B66
1A0B62:  ADDS            R5, #1
1A0B64:  ASRS            R0, R1, #0xF
1A0B66:  BLX             j_celt_rsqrt_norm
1A0B6A:  UXTH.W          R1, R8
1A0B6E:  ASRS            R3, R5, #1
1A0B70:  MULS            R1, R0
1A0B72:  CMP             R3, #1
1A0B74:  SMULTB.W        R0, R8, R0
1A0B78:  MOV.W           R0, R0,LSL#1
1A0B7C:  ADD.W           R1, R0, R1,ASR#15
1A0B80:  MOV.W           R0, #0xFFFFFFFF
1A0B84:  ADD.W           R2, R0, R5,ASR#1
1A0B88:  MOV.W           R0, #1
1A0B8C:  SUB.W           R0, R0, R5,ASR#1
1A0B90:  LSL.W           R0, R1, R0
1A0B94:  IT GT
1A0B96:  ASRGT.W         R0, R1, R2
1A0B9A:  MOVW            R1, #0x7FFF
1A0B9E:  CMP             R0, R1
1A0BA0:  IT GE
1A0BA2:  MOVGE           R0, R1
1A0BA4:  SXTH            R0, R0
1A0BA6:  POP.W           {R8}
1A0BAA:  POP             {R4-R7,PC}
