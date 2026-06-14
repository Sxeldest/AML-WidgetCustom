; =========================================================
; Game Engine Function: sub_21C058
; Address            : 0x21C058 - 0x21C086
; =========================================================

21C058:  PUSH            {R4,R5,R7,LR}
21C05A:  ADD             R7, SP, #8
21C05C:  ADD.W           R0, R0, #0x198
21C060:  MOV             R4, R1
21C062:  MOVS            R1, #0x10
21C064:  BL              sub_216EF0
21C068:  MOV             R5, R0
21C06A:  MOV             R0, R4; s
21C06C:  BLX             strlen
21C070:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x21C07A); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
21C072:  ADD             R0, R4
21C074:  LDR             R1, =0x1010107
21C076:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
21C078:  STRD.W          R4, R0, [R5,#8]
21C07C:  MOV             R0, R5
21C07E:  ADDS            R2, #8
21C080:  STRD.W          R2, R1, [R5]
21C084:  POP             {R4,R5,R7,PC}
