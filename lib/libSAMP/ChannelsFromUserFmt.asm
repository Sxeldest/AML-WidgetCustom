; =========================================================
; Game Engine Function: ChannelsFromUserFmt
; Address            : 0x1CED70 - 0x1CED8C
; =========================================================

1CED70:  SUB             R0, R0, #0x1500
1CED74:  CMP             R0, #6
1CED78:  LDRLS           R1, =(unk_C5130 - 0x1CED88)
1CED7C:  MOVHI           R0, #0
1CED80:  ADDLS           R1, PC, R1; unk_C5130
1CED84:  LDRLS           R0, [R1,R0,LSL#2]
1CED88:  BX              LR
