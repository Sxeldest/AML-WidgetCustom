; =========================================================
; Game Engine Function: sub_26539C
; Address            : 0x26539C - 0x2653B6
; =========================================================

26539C:  PUSH            {R4,R5,R7,LR}
26539E:  ADD             R7, SP, #8
2653A0:  MOVW            R5, #:lower16:(elf_hash_chain+0x6048)
2653A4:  MOV             R4, R0
2653A6:  MOVT            R5, #:upper16:(elf_hash_chain+0x6048)
2653AA:  LDR             R0, [R4,R5]; p
2653AC:  BLX             free
2653B0:  MOVS            R0, #0
2653B2:  STR             R0, [R4,R5]
2653B4:  POP             {R4,R5,R7,PC}
