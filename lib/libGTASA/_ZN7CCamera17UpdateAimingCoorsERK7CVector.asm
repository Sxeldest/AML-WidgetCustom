; =========================================================
; Game Engine Function: _ZN7CCamera17UpdateAimingCoorsERK7CVector
; Address            : 0x3E19BA - 0x3E19CE
; =========================================================

3E19BA:  VLDR            D16, [R1]
3E19BE:  LDR             R1, [R1,#8]
3E19C0:  STR.W           R1, [R0,#0x7E0]
3E19C4:  ADD.W           R0, R0, #0x7D8
3E19C8:  VSTR            D16, [R0]
3E19CC:  BX              LR
