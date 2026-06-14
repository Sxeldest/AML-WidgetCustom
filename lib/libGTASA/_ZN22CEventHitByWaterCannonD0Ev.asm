; =========================================================
; Game Engine Function: _ZN22CEventHitByWaterCannonD0Ev
; Address            : 0x376BB8 - 0x376BE4
; =========================================================

376BB8:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x376BBE)
376BBA:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
376BBC:  LDR             R1, [R1]; CPools::ms_pEventPool ...
376BBE:  LDR             R1, [R1]; CPools::ms_pEventPool
376BC0:  LDRD.W          R2, R3, [R1]
376BC4:  SUBS            R0, R0, R2
376BC6:  MOV             R2, #0xF0F0F0F1
376BCE:  ASRS            R0, R0, #2
376BD0:  MULS            R0, R2
376BD2:  LDRB            R2, [R3,R0]
376BD4:  ORR.W           R2, R2, #0x80
376BD8:  STRB            R2, [R3,R0]
376BDA:  LDR             R2, [R1,#0xC]
376BDC:  CMP             R0, R2
376BDE:  IT LT
376BE0:  STRLT           R0, [R1,#0xC]
376BE2:  BX              LR
