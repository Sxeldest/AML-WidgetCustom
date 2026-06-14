; =========================================================
; Game Engine Function: _ZNK13CEventHandler19GetCurrentEventTypeEv
; Address            : 0x37B5F4 - 0x37B60E
; =========================================================

37B5F4:  MOV             R1, R0
37B5F6:  LDR             R0, [R1,#0xC]
37B5F8:  CMP             R0, #0
37B5FA:  ITT EQ
37B5FC:  LDREQ           R0, [R1,#8]
37B5FE:  CMPEQ           R0, #0
37B600:  BEQ             loc_37B608
37B602:  LDR             R1, [R0]
37B604:  LDR             R1, [R1,#8]
37B606:  BX              R1
37B608:  MOV.W           R0, #0xFFFFFFFF
37B60C:  BX              LR
