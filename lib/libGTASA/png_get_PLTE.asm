; =========================================================
; Game Engine Function: png_get_PLTE
; Address            : 0x1F3D9A - 0x1F3DC8
; =========================================================

1F3D9A:  MOV             R12, R0
1F3D9C:  MOVS            R0, #0
1F3D9E:  CMP.W           R12, #0
1F3DA2:  IT EQ
1F3DA4:  BXEQ            LR
1F3DA6:  CMP             R1, #0
1F3DA8:  ITT NE
1F3DAA:  MOVNE           R0, #0
1F3DAC:  CMPNE           R2, #0
1F3DAE:  BEQ             locret_1F3DC6
1F3DB0:  LDR.W           R12, [R1,#8]
1F3DB4:  ANDS.W          R12, R12, #8
1F3DB8:  ITTTT NE
1F3DBA:  LDRNE           R0, [R1,#0x10]
1F3DBC:  STRNE           R0, [R2]
1F3DBE:  LDRHNE          R0, [R1,#0x14]
1F3DC0:  STRNE           R0, [R3]
1F3DC2:  IT NE
1F3DC4:  MOVNE           R0, #8
1F3DC6:  BX              LR
