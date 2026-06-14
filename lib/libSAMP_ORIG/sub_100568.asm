; =========================================================
; Game Engine Function: sub_100568
; Address            : 0x100568 - 0x100596
; =========================================================

100568:  PUSH            {R4,R5,R7,LR}
10056A:  ADD             R7, SP, #8
10056C:  ADD.W           R0, R0, #0x198
100570:  MOV             R4, R1
100572:  MOVS            R1, #0x10
100574:  BL              sub_FFA98
100578:  MOV             R5, R0
10057A:  MOV             R0, R4; s
10057C:  BLX             strlen
100580:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x10058A); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
100582:  ADD             R0, R4
100584:  LDR             R1, =0x1010107
100586:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
100588:  STRD.W          R4, R0, [R5,#8]
10058C:  MOV             R0, R5
10058E:  ADDS            R2, #8
100590:  STRD.W          R2, R1, [R5]
100594:  POP             {R4,R5,R7,PC}
