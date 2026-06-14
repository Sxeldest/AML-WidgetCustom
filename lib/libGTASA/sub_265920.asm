; =========================================================
; Game Engine Function: sub_265920
; Address            : 0x265920 - 0x265946
; =========================================================

265920:  MOVW            R2, #:lower16:(elf_hash_chain+0x6048)
265924:  MOV             R1, R0
265926:  MOVT            R2, #:upper16:(elf_hash_chain+0x6048)
26592A:  LDR             R0, [R1,R2]; p
26592C:  CMP             R0, #0
26592E:  IT EQ
265930:  BXEQ            LR
265932:  PUSH            {R4,R6,R7,LR}
265934:  ADD             R7, SP, #0x10+var_8
265936:  ADDS            R4, R1, R2
265938:  BLX             free
26593C:  MOVS            R0, #0
26593E:  STR             R0, [R4]
265940:  POP.W           {R4,R6,R7,LR}
265944:  BX              LR
