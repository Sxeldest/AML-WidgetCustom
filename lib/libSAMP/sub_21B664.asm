; =========================================================
; Game Engine Function: sub_21B664
; Address            : 0x21B664 - 0x21B68A
; =========================================================

21B664:  PUSH            {R4,R6,R7,LR}
21B666:  ADD             R7, SP, #8
21B668:  ADD.W           R0, R0, #0x198
21B66C:  MOV             R4, R1
21B66E:  MOVS            R1, #0x10
21B670:  BL              sub_216EF0
21B674:  LDRD.W          R1, R2, [R4]
21B678:  LDR             R4, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x21B680); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
21B67A:  LDR             R3, =0x1010107
21B67C:  ADD             R4, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
21B67E:  STRD.W          R1, R2, [R0,#8]
21B682:  ADDS            R4, #8
21B684:  STRD.W          R4, R3, [R0]
21B688:  POP             {R4,R6,R7,PC}
