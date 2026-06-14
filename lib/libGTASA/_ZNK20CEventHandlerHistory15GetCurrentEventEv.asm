; =========================================================
; Game Engine Function: _ZNK20CEventHandlerHistory15GetCurrentEventEv
; Address            : 0x37B4C6 - 0x37B4D2
; =========================================================

37B4C6:  MOV             R1, R0
37B4C8:  LDR             R0, [R1,#8]
37B4CA:  CMP             R0, #0
37B4CC:  IT EQ
37B4CE:  LDREQ           R0, [R1,#4]
37B4D0:  BX              LR
