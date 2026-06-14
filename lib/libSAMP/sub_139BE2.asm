; =========================================================
; Game Engine Function: sub_139BE2
; Address            : 0x139BE2 - 0x139C12
; =========================================================

139BE2:  PUSH            {R4,R6,R7,LR}
139BE4:  ADD             R7, SP, #8
139BE6:  LDR             R2, [R0,#0x10]
139BE8:  MOV             R4, R0
139BEA:  LSRS            R0, R2, #2
139BEC:  CMP             R0, #0x54 ; 'T'
139BEE:  BHI             loc_139BF8
139BF0:  MOVS            R0, #0
139BF2:  CBNZ            R1, locret_139C10
139BF4:  CMP             R2, #0xAA
139BF6:  BCC             locret_139C10
139BF8:  LDR             R0, [R4,#4]
139BFA:  LDR             R0, [R0]; void *
139BFC:  BLX             j__ZdlPv; operator delete(void *)
139C00:  LDR             R0, [R4,#4]
139C02:  LDR             R1, [R4,#0x10]
139C04:  ADDS            R0, #4
139C06:  STR             R0, [R4,#4]
139C08:  SUB.W           R0, R1, #0xAA
139C0C:  STR             R0, [R4,#0x10]
139C0E:  MOVS            R0, #1
139C10:  POP             {R4,R6,R7,PC}
