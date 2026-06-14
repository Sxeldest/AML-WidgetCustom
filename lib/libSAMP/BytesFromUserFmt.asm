; =========================================================
; Game Engine Function: BytesFromUserFmt
; Address            : 0x1CF0E0 - 0x1CF0FC
; =========================================================

1CF0E0:  SUB             R0, R0, #0x1400
1CF0E4:  CMP             R0, #0xB
1CF0E8:  LDRLS           R1, =(unk_C5100 - 0x1CF0F8)
1CF0EC:  MOVHI           R0, #0
1CF0F0:  ADDLS           R1, PC, R1; unk_C5100
1CF0F4:  LDRLS           R0, [R1,R0,LSL#2]
1CF0F8:  BX              LR
