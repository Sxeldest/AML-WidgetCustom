; =========================================================
; Game Engine Function: _ZN4CPedD0Ev
; Address            : 0x49F858 - 0x49F88C
; =========================================================

49F858:  PUSH            {R7,LR}
49F85A:  MOV             R7, SP
49F85C:  BLX             j__ZN4CPedD2Ev; CPed::~CPed()
49F860:  LDR             R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x49F866)
49F862:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
49F864:  LDR             R1, [R1]; CPools::ms_pPedPool ...
49F866:  LDR             R1, [R1]; CPools::ms_pPedPool
49F868:  LDRD.W          R2, R3, [R1]
49F86C:  SUBS            R0, R0, R2
49F86E:  MOV             R2, #0xBED87F3B
49F876:  ASRS            R0, R0, #2
49F878:  MULS            R0, R2
49F87A:  LDRB            R2, [R3,R0]
49F87C:  ORR.W           R2, R2, #0x80
49F880:  STRB            R2, [R3,R0]
49F882:  LDR             R2, [R1,#0xC]
49F884:  CMP             R0, R2
49F886:  IT LT
49F888:  STRLT           R0, [R1,#0xC]
49F88A:  POP             {R7,PC}
