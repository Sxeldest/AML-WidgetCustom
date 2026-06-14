; =========================================================
; Game Engine Function: sub_2243C4
; Address            : 0x2243C4 - 0x2243D0
; =========================================================

2243C4:  MOV             R12, #(LeaveCriticalSection_0 - 0x2243D0)
2243CC:  ADD             R12, PC; LeaveCriticalSection_0
2243CE:  BX              R12; LeaveCriticalSection_0
