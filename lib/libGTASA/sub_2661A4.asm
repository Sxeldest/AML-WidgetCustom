; =========================================================
; Game Engine Function: sub_2661A4
; Address            : 0x2661A4 - 0x2661EA
; =========================================================

2661A4:  PUSH            {R4-R7,LR}
2661A6:  ADD             R7, SP, #0xC
2661A8:  PUSH.W          {R11}
2661AC:  MOVW            R2, #:lower16:(elf_hash_chain+0x6048)
2661B0:  MOV             R1, R0
2661B2:  MOVT            R2, #:upper16:(elf_hash_chain+0x6048)
2661B6:  ADDS            R5, R1, R2
2661B8:  LDR             R4, [R1,R2]
2661BA:  LDR             R0, [R4,#0xC]
2661BC:  CMP             R0, #0
2661BE:  ITTT NE
2661C0:  LDRNE           R1, [R0]
2661C2:  LDRNE           R1, [R1,#0x18]
2661C4:  BLXNE           R1
2661C6:  LDR             R0, [R4,#8]
2661C8:  MOVS            R6, #0
2661CA:  STR             R6, [R4,#0xC]
2661CC:  LDR             R1, [R0]
2661CE:  LDR             R1, [R1,#0x18]
2661D0:  BLX             R1
2661D2:  LDR             R0, [R4]
2661D4:  STR             R6, [R4,#8]
2661D6:  LDR             R1, [R0]
2661D8:  LDR             R1, [R1,#0x18]
2661DA:  BLX             R1
2661DC:  MOV             R0, R4; p
2661DE:  BLX             free
2661E2:  STR             R6, [R5]
2661E4:  POP.W           {R11}
2661E8:  POP             {R4-R7,PC}
