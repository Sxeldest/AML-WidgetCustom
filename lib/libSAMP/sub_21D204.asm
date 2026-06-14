; =========================================================
; Game Engine Function: sub_21D204
; Address            : 0x21D204 - 0x21D23A
; =========================================================

21D204:  PUSH            {R4,R5,R7,LR}
21D206:  ADD             R7, SP, #8
21D208:  ADD.W           R0, R0, #0x198
21D20C:  MOV             R5, R1
21D20E:  MOVS            R1, #0x14
21D210:  MOV             R4, R2
21D212:  BL              sub_216EF0
21D216:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle13ReferenceTypeE - 0x21D21E); `vtable for'`anonymous namespace'::itanium_demangle::ReferenceType ...
21D218:  LDR             R2, [R5]
21D21A:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::ReferenceType
21D21C:  ADDS            R1, #8
21D21E:  STR             R1, [R0]
21D220:  LDR             R1, [R4]
21D222:  STRD.W          R2, R1, [R0,#8]
21D226:  MOVW            R1, #0x101
21D22A:  STRH            R1, [R0,#6]
21D22C:  MOVS            R1, #0xC
21D22E:  STRB            R1, [R0,#4]
21D230:  MOVS            R1, #0
21D232:  STRB            R1, [R0,#0x10]
21D234:  LDRB            R1, [R2,#5]
21D236:  STRB            R1, [R0,#5]
21D238:  POP             {R4,R5,R7,PC}
