; =========================================================
; Game Engine Function: _ZNK20CEventHandlerHistory23GetCurrentEventPriorityEv
; Address            : 0x37B4AC - 0x37B4C6
; =========================================================

37B4AC:  MOV             R1, R0
37B4AE:  LDR             R0, [R1,#8]
37B4B0:  CMP             R0, #0
37B4B2:  ITT EQ
37B4B4:  LDREQ           R0, [R1,#4]
37B4B6:  CMPEQ           R0, #0
37B4B8:  BEQ             loc_37B4C0
37B4BA:  LDR             R1, [R0]
37B4BC:  LDR             R1, [R1,#0xC]
37B4BE:  BX              R1
37B4C0:  MOV.W           R0, #0xFFFFFFFF
37B4C4:  BX              LR
