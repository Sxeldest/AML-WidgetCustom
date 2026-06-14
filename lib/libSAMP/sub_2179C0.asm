; =========================================================
; Game Engine Function: sub_2179C0
; Address            : 0x2179C0 - 0x2179EE
; =========================================================

2179C0:  PUSH            {R4,R5,R7,LR}
2179C2:  ADD             R7, SP, #8
2179C4:  ADD.W           R0, R0, #0x198
2179C8:  MOV             R4, R1
2179CA:  MOVS            R1, #0x10
2179CC:  BL              sub_216EF0
2179D0:  MOV             R5, R0
2179D2:  MOV             R0, R4; s
2179D4:  BLX             strlen
2179D8:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x2179E2); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
2179DA:  ADD             R0, R4
2179DC:  LDR             R1, =0x1010107
2179DE:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
2179E0:  STRD.W          R4, R0, [R5,#8]
2179E4:  MOV             R0, R5
2179E6:  ADDS            R2, #8
2179E8:  STRD.W          R2, R1, [R5]
2179EC:  POP             {R4,R5,R7,PC}
