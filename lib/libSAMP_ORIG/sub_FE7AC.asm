; =========================================================
; Game Engine Function: sub_FE7AC
; Address            : 0xFE7AC - 0xFE7E8
; =========================================================

FE7AC:  PUSH            {R4-R7,LR}
FE7AE:  ADD             R7, SP, #0xC
FE7B0:  PUSH.W          {R11}
FE7B4:  ADD.W           R0, R0, #0x198
FE7B8:  MOV             R5, R1
FE7BA:  MOVS            R1, #0x14
FE7BC:  MOV             R4, R2
FE7BE:  BL              sub_FFA98
FE7C2:  MOV             R6, R0
FE7C4:  MOV             R0, R5; s
FE7C6:  BLX             strlen
FE7CA:  LDR             R1, =0x1010114
FE7CC:  ADD             R0, R5
FE7CE:  STR             R1, [R6,#4]
FE7D0:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle11SpecialNameE - 0xFE7D6); `vtable for'`anonymous namespace'::itanium_demangle::SpecialName ...
FE7D2:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::SpecialName
FE7D4:  ADDS            R1, #8
FE7D6:  STR             R1, [R6]
FE7D8:  LDR             R1, [R4]
FE7DA:  STR             R0, [R6,#0xC]
FE7DC:  MOV             R0, R6
FE7DE:  STR             R1, [R6,#0x10]
FE7E0:  STR             R5, [R6,#8]
FE7E2:  POP.W           {R11}
FE7E6:  POP             {R4-R7,PC}
