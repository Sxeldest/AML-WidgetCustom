; =========================================================
; Game Engine Function: sub_1658B8
; Address            : 0x1658B8 - 0x16590A
; =========================================================

1658B8:  PUSH            {R4-R7,LR}
1658BA:  ADD             R7, SP, #0xC
1658BC:  PUSH.W          {R11}
1658C0:  LDR.W           LR, [R0,#8]
1658C4:  LDR.W           R12, [R0]
1658C8:  CMP.W           R12, #0
1658CC:  MOV             R0, LR
1658CE:  BEQ             loc_1658F0
1658D0:  MOV             R0, LR
1658D2:  MOV             R3, R12
1658D4:  LSRS            R2, R3, #1
1658D6:  MVN.W           R6, R3,LSR#1
1658DA:  ADD.W           R4, R0, R2,LSL#3
1658DE:  LDR.W           R5, [R4],#8
1658E2:  CMP             R5, R1
1658E4:  ITT CC
1658E6:  ADDCC           R2, R3, R6
1658E8:  MOVCC           R0, R4
1658EA:  CMP             R2, #0
1658EC:  MOV             R3, R2
1658EE:  BNE             loc_1658D4
1658F0:  ADD.W           R2, LR, R12,LSL#3
1658F4:  CMP             R0, R2
1658F6:  BEQ             loc_165902
1658F8:  LDR             R2, [R0]
1658FA:  CMP             R2, R1
1658FC:  BNE             loc_165902
1658FE:  LDR             R0, [R0,#4]
165900:  B               loc_165904
165902:  MOVS            R0, #0
165904:  POP.W           {R11}
165908:  POP             {R4-R7,PC}
