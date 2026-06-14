; =========================================================
; Game Engine Function: sub_70EA2
; Address            : 0x70EA2 - 0x70F06
; =========================================================

70EA2:  PUSH            {R4-R7,LR}
70EA4:  ADD             R7, SP, #0xC
70EA6:  PUSH.W          {R8,R9,R11}
70EAA:  LDR             R5, [R0,#8]
70EAC:  MOV             R8, R1
70EAE:  MOV             R4, R0
70EB0:  CBZ             R5, loc_70EC0
70EB2:  LDR             R0, [R4,#0x10]
70EB4:  SUBS            R0, R0, R5
70EB6:  ADDS            R1, R0, #1
70EB8:  ADD.W           R6, R0, R1,LSR#1
70EBC:  MOV             R0, R5
70EBE:  B               loc_70ED2
70EC0:  LDR             R0, [R4]
70EC2:  CBNZ            R0, loc_70ECE
70EC4:  MOVS            R0, #1; unsigned int
70EC6:  BLX             j__Znwj; operator new(uint)
70ECA:  STRD.W          R0, R0, [R4]
70ECE:  LDR             R6, [R4,#0x14]
70ED0:  MOVS            R0, #0
70ED2:  LDR             R1, [R4,#0xC]
70ED4:  SUB.W           R9, R1, R0
70ED8:  ADD.W           R0, R9, R8,LSL#4
70EDC:  CMP             R6, R0
70EDE:  IT CC
70EE0:  MOVCC           R6, R0
70EE2:  MOV             R0, R5; ptr
70EE4:  CBZ             R6, loc_70EEE
70EE6:  MOV             R1, R6; size
70EE8:  BLX             realloc
70EEC:  B               loc_70EF4
70EEE:  BLX             free
70EF2:  MOVS            R0, #0
70EF4:  ADD.W           R2, R0, R9
70EF8:  ADDS            R1, R0, R6
70EFA:  STR             R1, [R4,#0x10]
70EFC:  STRD.W          R0, R2, [R4,#8]
70F00:  POP.W           {R8,R9,R11}
70F04:  POP             {R4-R7,PC}
