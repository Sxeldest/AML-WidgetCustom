; =========================================================
; Game Engine Function: _Z10GetMipSizePK8RwRasterihjj
; Address            : 0x1B4140 - 0x1B4166
; =========================================================

1B4140:  LDR             R1, [SP,#arg_0]
1B4142:  CBZ             R2, loc_1B4160
1B4144:  MOVS            R0, #4
1B4146:  CMP             R3, #4
1B4148:  IT LS
1B414A:  MOVLS           R3, R0
1B414C:  CMP             R1, #4
1B414E:  IT HI
1B4150:  MOVHI           R0, R1
1B4152:  CMP             R2, #1
1B4154:  MUL.W           R0, R3, R0
1B4158:  IT NE
1B415A:  MOVNE           R2, #0
1B415C:  LSRS            R0, R2
1B415E:  BX              LR
1B4160:  LDR             R0, [R0,#0x18]
1B4162:  MULS            R0, R1
1B4164:  BX              LR
