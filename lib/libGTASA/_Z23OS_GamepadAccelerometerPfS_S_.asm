; =========================================================
; Game Engine Function: _Z23OS_GamepadAccelerometerPfS_S_
; Address            : 0x268590 - 0x2685AC
; =========================================================

268590:  LDR             R3, =(accelerometerValues_ptr - 0x268596)
268592:  ADD             R3, PC; accelerometerValues_ptr
268594:  LDR.W           R12, [R3]; accelerometerValues
268598:  LDR.W           R3, [R12]
26859C:  STR             R3, [R0]
26859E:  LDR.W           R0, [R12,#(dword_6D6AF0 - 0x6D6AEC)]
2685A2:  STR             R0, [R1]
2685A4:  LDR.W           R0, [R12,#(dword_6D6AF4 - 0x6D6AEC)]
2685A8:  STR             R0, [R2]
2685AA:  BX              LR
