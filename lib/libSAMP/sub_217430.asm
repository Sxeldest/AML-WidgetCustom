; =========================================================
; Game Engine Function: sub_217430
; Address            : 0x217430 - 0x21745E
; =========================================================

217430:  PUSH            {R4,R5,R7,LR}
217432:  ADD             R7, SP, #8
217434:  ADD.W           R0, R0, #0x198
217438:  MOV             R4, R1
21743A:  MOVS            R1, #0x10
21743C:  BL              sub_216EF0
217440:  MOV             R5, R0
217442:  MOV             R0, R4; s
217444:  BLX             strlen
217448:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle8NameTypeE - 0x217452); `vtable for'`anonymous namespace'::itanium_demangle::NameType ...
21744A:  ADD             R0, R4
21744C:  LDR             R1, =0x1010107
21744E:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::NameType
217450:  STRD.W          R4, R0, [R5,#8]
217454:  MOV             R0, R5
217456:  ADDS            R2, #8
217458:  STRD.W          R2, R1, [R5]
21745C:  POP             {R4,R5,R7,PC}
