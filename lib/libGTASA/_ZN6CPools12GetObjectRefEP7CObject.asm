; =========================================================
; Game Engine Function: _ZN6CPools12GetObjectRefEP7CObject
; Address            : 0x40D4C0 - 0x40D4E2
; =========================================================

40D4C0:  LDR             R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x40D4C6)
40D4C2:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
40D4C4:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
40D4C6:  LDR             R1, [R1]; CPools::ms_pObjectPool
40D4C8:  LDRD.W          R2, R1, [R1]
40D4CC:  SUBS            R0, R0, R2
40D4CE:  MOV             R2, #0xD8FD8FD9
40D4D6:  ASRS            R0, R0, #2
40D4D8:  MULS            R0, R2
40D4DA:  LDRB            R1, [R1,R0]
40D4DC:  ORR.W           R0, R1, R0,LSL#8
40D4E0:  BX              LR
