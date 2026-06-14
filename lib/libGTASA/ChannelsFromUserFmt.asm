; =========================================================
; Game Engine Function: ChannelsFromUserFmt
; Address            : 0x23FED4 - 0x23FEEA
; =========================================================

23FED4:  SUB.W           R0, R0, #0x1500
23FED8:  CMP             R0, #6
23FEDA:  ITT HI
23FEDC:  MOVHI           R0, #0
23FEDE:  BXHI            LR
23FEE0:  LDR             R1, =(unk_60A680 - 0x23FEE6)
23FEE2:  ADD             R1, PC; unk_60A680
23FEE4:  LDR.W           R0, [R1,R0,LSL#2]
23FEE8:  BX              LR
