; =========================================================
; Game Engine Function: sub_EC1C2
; Address            : 0xEC1C2 - 0xEC204
; =========================================================

EC1C2:  PUSH            {R4-R7,LR}
EC1C4:  ADD             R7, SP, #0xC
EC1C6:  PUSH.W          {R11}
EC1CA:  MOV             R4, R0
EC1CC:  MOVS            R0, #0
EC1CE:  MOV             R5, R1
EC1D0:  STR             R0, [R4]
EC1D2:  STR             R0, [R4,#4]
EC1D4:  LDR             R1, [R1]
EC1D6:  LDR             R2, [R5,#4]
EC1D8:  STR             R0, [R4,#8]
EC1DA:  SUBS            R1, R2, R1; unsigned int
EC1DC:  BEQ             loc_EC1FC
EC1DE:  MOV             R0, R4; int
EC1E0:  BL              sub_EC212
EC1E4:  LDRD.W          R1, R0, [R5]; src
EC1E8:  LDR             R5, [R4,#4]
EC1EA:  SUBS            R6, R0, R1
EC1EC:  CMP             R6, #1
EC1EE:  BLT             loc_EC1FA
EC1F0:  MOV             R0, R5; dest
EC1F2:  MOV             R2, R6; n
EC1F4:  BLX             j_memcpy
EC1F8:  ADD             R5, R6
EC1FA:  STR             R5, [R4,#4]
EC1FC:  MOV             R0, R4
EC1FE:  POP.W           {R11}
EC202:  POP             {R4-R7,PC}
