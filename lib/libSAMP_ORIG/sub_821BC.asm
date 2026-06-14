; =========================================================
; Game Engine Function: sub_821BC
; Address            : 0x821BC - 0x821CE
; =========================================================

821BC:  LDR             R2, =(aPfbrkn2sv16plu - 0x821C6); "PFbRKN2SV16PluginInitPacketEE" ...
821BE:  LDR             R3, [R1,#4]
821C0:  MOVS            R1, #0
821C2:  ADD             R2, PC; "PFbRKN2SV16PluginInitPacketEE"
821C4:  CMP             R3, R2
821C6:  IT EQ
821C8:  ADDEQ           R1, R0, #4
821CA:  MOV             R0, R1
821CC:  BX              LR
