; =========================================================
; Game Engine Function: BytesFromFmt
; Address            : 0x1CF0C0 - 0x1CF0DC
; =========================================================

1CF0C0:  SUB             R0, R0, #0x1400
1CF0C4:  CMP             R0, #6
1CF0C8:  LDRLS           R1, =(unk_C5150 - 0x1CF0D8)
1CF0CC:  MOVHI           R0, #0
1CF0D0:  ADDLS           R1, PC, R1; unk_C5150
1CF0D4:  LDRLS           R0, [R1,R0,LSL#2]
1CF0D8:  BX              LR
