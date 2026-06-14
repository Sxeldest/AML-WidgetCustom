; =========================================================
; Game Engine Function: _ZN14CDamageManager23GetCarNodeIndexFromDoorE6eDoors
; Address            : 0x56EC00 - 0x56EC10
; =========================================================

56EC00:  CMP             R0, #5
56EC02:  ITEE HI
56EC04:  MOVHI.W         R0, #0xFFFFFFFF
56EC08:  ADRLS           R1, dword_56EC10
56EC0A:  LDRLS.W         R0, [R1,R0,LSL#2]
56EC0E:  BX              LR
