; =========================================================
; Game Engine Function: sub_2243E8
; Address            : 0x2243E8 - 0x2243F4
; =========================================================

2243E8:  MOV             R12, #(EnterCriticalSection_0 - 0x2243F4)
2243F0:  ADD             R12, PC; EnterCriticalSection_0
2243F2:  BX              R12; EnterCriticalSection_0
