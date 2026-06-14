; =========================================================
; Game Engine Function: _ZN15CLoadedCarGroup5ClearEv
; Address            : 0x4D17B0 - 0x4D17BE
; =========================================================

4D17B0:  PUSH            {R7,LR}
4D17B2:  MOV             R7, SP
4D17B4:  MOVS            R1, #0x2E ; '.'
4D17B6:  MOVS            R2, #0xFF
4D17B8:  BLX             j___aeabi_memset8
4D17BC:  POP             {R7,PC}
