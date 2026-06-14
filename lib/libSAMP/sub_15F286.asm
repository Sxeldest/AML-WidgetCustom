; =========================================================
; Game Engine Function: sub_15F286
; Address            : 0x15F286 - 0x15F2BA
; =========================================================

15F286:  PUSH            {R4,R5,R7,LR}
15F288:  ADD             R7, SP, #8
15F28A:  MOV             R4, R0
15F28C:  LDR             R0, [R0,#0xC]
15F28E:  CBZ             R0, locret_15F2B8
15F290:  LDR             R0, [R4,#8]; void *
15F292:  CBZ             R0, loc_15F2A0
15F294:  LDR             R5, [R0]
15F296:  BLX             j__ZdlPv; operator delete(void *)
15F29A:  CMP             R5, #0
15F29C:  MOV             R0, R5
15F29E:  BNE             loc_15F294
15F2A0:  LDR             R1, [R4,#4]
15F2A2:  MOVS            R0, #0
15F2A4:  STR             R0, [R4,#8]
15F2A6:  CBZ             R1, loc_15F2B6
15F2A8:  MOVS            R2, #0
15F2AA:  LDR             R3, [R4]
15F2AC:  STR.W           R0, [R3,R2,LSL#2]
15F2B0:  ADDS            R2, #1
15F2B2:  CMP             R1, R2
15F2B4:  BNE             loc_15F2AA
15F2B6:  STR             R0, [R4,#0xC]
15F2B8:  POP             {R4,R5,R7,PC}
