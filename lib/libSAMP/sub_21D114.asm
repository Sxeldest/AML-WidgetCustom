; =========================================================
; Game Engine Function: sub_21D114
; Address            : 0x21D114 - 0x21D142
; =========================================================

21D114:  PUSH            {R4,R5,R7,LR}
21D116:  ADD             R7, SP, #8
21D118:  ADD.W           R0, R0, #0x198
21D11C:  MOV             R4, R1
21D11E:  MOVS            R1, #0x10
21D120:  BL              sub_216EF0
21D124:  MOV             R5, R0
21D126:  MOV             R0, R4; s
21D128:  BLX             strlen
21D12C:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x21D136); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
21D12E:  ADD             R0, R4
21D130:  LDR             R1, =0x1010107
21D132:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
21D134:  STRD.W          R4, R0, [R5,#8]
21D138:  MOV             R0, R5
21D13A:  ADDS            R2, #8
21D13C:  STRD.W          R2, R1, [R5]
21D140:  POP             {R4,R5,R7,PC}
