; =========================================================
; Game Engine Function: sub_21C0BC
; Address            : 0x21C0BC - 0x21C0EA
; =========================================================

21C0BC:  PUSH            {R4,R5,R7,LR}
21C0BE:  ADD             R7, SP, #8
21C0C0:  ADD.W           R0, R0, #0x198
21C0C4:  MOV             R4, R1
21C0C6:  MOVS            R1, #0x10
21C0C8:  BL              sub_216EF0
21C0CC:  MOV             R5, R0
21C0CE:  MOV             R0, R4; s
21C0D0:  BLX             strlen
21C0D4:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x21C0DE); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
21C0D6:  ADD             R0, R4
21C0D8:  LDR             R1, =0x1010107
21C0DA:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
21C0DC:  STRD.W          R4, R0, [R5,#8]
21C0E0:  MOV             R0, R5
21C0E2:  ADDS            R2, #8
21C0E4:  STRD.W          R2, R1, [R5]
21C0E8:  POP             {R4,R5,R7,PC}
