; =========================================================
; Game Engine Function: _Z20GetRQFormatForRasterP8RwRaster
; Address            : 0x1ADB04 - 0x1ADB28
; =========================================================

1ADB04:  LDRB.W          R0, [R0,#0x22]
1ADB08:  MOV.W           R1, #0xF00
1ADB0C:  AND.W           R0, R1, R0,LSL#8
1ADB10:  SUB.W           R0, R0, #0x100
1ADB14:  LSRS            R1, R0, #8
1ADB16:  CMP             R1, #5
1ADB18:  ITT HI
1ADB1A:  MOVHI           R0, #0
1ADB1C:  BXHI            LR
1ADB1E:  LDR             R1, =(unk_5E87B0 - 0x1ADB26)
1ADB20:  ASRS            R0, R0, #6
1ADB22:  ADD             R1, PC; unk_5E87B0
1ADB24:  LDR             R0, [R1,R0]
1ADB26:  BX              LR
