; =========================================================
; Game Engine Function: _ZN22CEventLowAngerAtPlayerD0Ev
; Address            : 0x3784CC - 0x3784F8
; =========================================================

3784CC:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x3784D2)
3784CE:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
3784D0:  LDR             R1, [R1]; CPools::ms_pEventPool ...
3784D2:  LDR             R1, [R1]; CPools::ms_pEventPool
3784D4:  LDRD.W          R2, R3, [R1]
3784D8:  SUBS            R0, R0, R2
3784DA:  MOV             R2, #0xF0F0F0F1
3784E2:  ASRS            R0, R0, #2
3784E4:  MULS            R0, R2
3784E6:  LDRB            R2, [R3,R0]
3784E8:  ORR.W           R2, R2, #0x80
3784EC:  STRB            R2, [R3,R0]
3784EE:  LDR             R2, [R1,#0xC]
3784F0:  CMP             R0, R2
3784F2:  IT LT
3784F4:  STRLT           R0, [R1,#0xC]
3784F6:  BX              LR
