; =========================================================
; Game Engine Function: sub_1054D0
; Address            : 0x1054D0 - 0x1054F8
; =========================================================

1054D0:  PUSH            {R4,R5,R7,LR}
1054D2:  ADD             R7, SP, #8
1054D4:  ADD.W           R0, R0, #0x198
1054D8:  MOV             R5, R1
1054DA:  MOVS            R1, #0x10
1054DC:  MOV             R4, R2
1054DE:  BL              sub_FFA98
1054E2:  LDR             R1, =0x1010118
1054E4:  STR             R1, [R0,#4]
1054E6:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle9LocalNameE - 0x1054EE); `vtable for'`anonymous namespace'::itanium_demangle::LocalName ...
1054E8:  LDR             R2, [R5]
1054EA:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::LocalName
1054EC:  ADDS            R1, #8
1054EE:  STR             R1, [R0]
1054F0:  LDR             R1, [R4]
1054F2:  STRD.W          R2, R1, [R0,#8]
1054F6:  POP             {R4,R5,R7,PC}
