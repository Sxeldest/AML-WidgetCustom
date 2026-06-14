; =========================================================
; Game Engine Function: sub_2654BC
; Address            : 0x2654BC - 0x2654DE
; =========================================================

2654BC:  PUSH            {R4,R6,R7,LR}
2654BE:  ADD             R7, SP, #8
2654C0:  MOV             R1, R0
2654C2:  LDR             R0, =(sub_265518+1 - 0x2654CC)
2654C4:  MOVW            R2, #:lower16:(elf_hash_chain+0x6048)
2654C8:  ADD             R0, PC; sub_265518
2654CA:  MOVT            R2, #:upper16:(elf_hash_chain+0x6048)
2654CE:  LDR             R4, [R1,R2]
2654D0:  BLX             j_StartThread
2654D4:  CMP             R0, #0
2654D6:  STR             R0, [R4,#4]
2654D8:  IT NE
2654DA:  MOVNE           R0, #1
2654DC:  POP             {R4,R6,R7,PC}
