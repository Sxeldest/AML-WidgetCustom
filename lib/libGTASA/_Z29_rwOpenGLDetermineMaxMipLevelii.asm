; =========================================================
; Game Engine Function: _Z29_rwOpenGLDetermineMaxMipLevelii
; Address            : 0x1B1166 - 0x1B1178
; =========================================================

1B1166:  ORRS            R1, R0
1B1168:  MOV.W           R0, #0xFFFFFFFF
1B116C:  ADDS            R0, #1
1B116E:  ASR.W           R2, R1, R0
1B1172:  CMP             R2, #0
1B1174:  BNE             loc_1B116C
1B1176:  BX              LR
