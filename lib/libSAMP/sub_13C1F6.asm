; =========================================================
; Game Engine Function: sub_13C1F6
; Address            : 0x13C1F6 - 0x13C23A
; =========================================================

13C1F6:  PUSH            {R4-R7,LR}
13C1F8:  ADD             R7, SP, #0xC
13C1FA:  PUSH.W          {R11}
13C1FE:  MOV             R4, R0
13C200:  MOVS            R0, #0
13C202:  MOV             R5, R1
13C204:  STR             R0, [R4]
13C206:  STR             R0, [R4,#4]
13C208:  LDR             R1, [R1]
13C20A:  LDR             R2, [R5,#4]
13C20C:  STR             R0, [R4,#8]
13C20E:  SUBS            R0, R2, R1
13C210:  BEQ             loc_13C232
13C212:  ASRS            R1, R0, #2
13C214:  MOV             R0, R4
13C216:  BL              sub_13C248
13C21A:  LDRD.W          R1, R0, [R5]; src
13C21E:  LDR             R5, [R4,#4]
13C220:  SUBS            R6, R0, R1
13C222:  CMP             R6, #1
13C224:  BLT             loc_13C230
13C226:  MOV             R0, R5; dest
13C228:  MOV             R2, R6; n
13C22A:  BLX             j_memcpy
13C22E:  ADD             R5, R6
13C230:  STR             R5, [R4,#4]
13C232:  MOV             R0, R4
13C234:  POP.W           {R11}
13C238:  POP             {R4-R7,PC}
