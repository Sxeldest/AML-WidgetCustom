; =========================================================
; Game Engine Function: sub_7E7BC
; Address            : 0x7E7BC - 0x7E834
; =========================================================

7E7BC:  PUSH            {R4-R7,LR}
7E7BE:  ADD             R7, SP, #0xC
7E7C0:  PUSH.W          {R8}
7E7C4:  SUB             SP, SP, #8
7E7C6:  MOV             R5, R0
7E7C8:  MOVS            R0, #0
7E7CA:  CBZ             R5, loc_7E82C
7E7CC:  MOV             R4, R1
7E7CE:  SUBS            R1, #1
7E7D0:  LSRS            R1, R1, #5
7E7D2:  CMP             R1, #0x2A ; '*'
7E7D4:  BHI             loc_7E82C
7E7D6:  LDR             R1, =(dword_1A45F4 - 0x7E7DC)
7E7D8:  ADD             R1, PC; dword_1A45F4
7E7DA:  LDR             R1, [R1]
7E7DC:  CMP             R1, #3
7E7DE:  BNE             loc_7E82C
7E7E0:  LDR             R6, =(dword_1A461C - 0x7E7E6)
7E7E2:  ADD             R6, PC; dword_1A461C
7E7E4:  LDR             R0, [R6]
7E7E6:  STRH            R4, [R0,#0x12]
7E7E8:  BL              sub_8613E
7E7EC:  MOV             R8, R6
7E7EE:  LDR             R6, [R6]
7E7F0:  MOV             R1, R5; src
7E7F2:  MOV             R2, R4; n
7E7F4:  ADD.W           R0, R6, #0x18; dest
7E7F8:  BLX             j_memcpy
7E7FC:  MOV             R0, R6
7E7FE:  BL              sub_860BA
7E802:  MOV             R4, R0
7E804:  LDR             R0, =(dword_116E00 - 0x7E80A)
7E806:  ADD             R0, PC; dword_116E00
7E808:  LDR             R0, [R0]; fd
7E80A:  MOVS            R1, #0
7E80C:  MOV             R2, R4; n
7E80E:  STRD.W          R1, R1, [SP,#0x18+addr]; addr
7E812:  MOV             R1, R6; buf
7E814:  MOVS            R3, #0; flags
7E816:  BLX             sendto
7E81A:  LDR.W           R1, [R8]
7E81E:  SUBS            R0, R0, R4
7E820:  CLZ.W           R0, R0
7E824:  LDR             R2, [R1,#0x14]
7E826:  LSRS            R0, R0, #5
7E828:  ADDS            R2, #1
7E82A:  STR             R2, [R1,#0x14]
7E82C:  ADD             SP, SP, #8
7E82E:  POP.W           {R8}
7E832:  POP             {R4-R7,PC}
