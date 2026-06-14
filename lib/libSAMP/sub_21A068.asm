; =========================================================
; Game Engine Function: sub_21A068
; Address            : 0x21A068 - 0x21A096
; =========================================================

21A068:  PUSH            {R4,R5,R7,LR}
21A06A:  ADD             R7, SP, #8
21A06C:  ADD.W           R0, R0, #0x198
21A070:  MOV             R4, R1
21A072:  MOVS            R1, #0x10
21A074:  BL              sub_216EF0
21A078:  MOV             R5, R0
21A07A:  MOV             R0, R4; s
21A07C:  BLX             strlen
21A080:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x21A08A); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
21A082:  ADD             R0, R4
21A084:  LDR             R1, =0x1010107
21A086:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
21A088:  STRD.W          R4, R0, [R5,#8]
21A08C:  MOV             R0, R5
21A08E:  ADDS            R2, #8
21A090:  STRD.W          R2, R1, [R5]
21A094:  POP             {R4,R5,R7,PC}
