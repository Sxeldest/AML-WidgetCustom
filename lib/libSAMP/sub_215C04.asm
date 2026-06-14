; =========================================================
; Game Engine Function: sub_215C04
; Address            : 0x215C04 - 0x215C40
; =========================================================

215C04:  PUSH            {R4-R7,LR}
215C06:  ADD             R7, SP, #0xC
215C08:  PUSH.W          {R11}
215C0C:  ADD.W           R0, R0, #0x198
215C10:  MOV             R5, R1
215C12:  MOVS            R1, #0x14
215C14:  MOV             R4, R2
215C16:  BL              sub_216EF0
215C1A:  MOV             R6, R0
215C1C:  MOV             R0, R5; s
215C1E:  BLX             strlen
215C22:  LDR             R1, =0x1010114
215C24:  ADD             R0, R5
215C26:  STR             R1, [R6,#4]
215C28:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle11SpecialNameE - 0x215C2E); `vtable for'`anonymous namespace'::itanium_demangle::SpecialName ...
215C2A:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::SpecialName
215C2C:  ADDS            R1, #8
215C2E:  STR             R1, [R6]
215C30:  LDR             R1, [R4]
215C32:  STR             R0, [R6,#0xC]
215C34:  MOV             R0, R6
215C36:  STR             R1, [R6,#0x10]
215C38:  STR             R5, [R6,#8]
215C3A:  POP.W           {R11}
215C3E:  POP             {R4-R7,PC}
