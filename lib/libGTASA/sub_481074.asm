; =========================================================
; Game Engine Function: sub_481074
; Address            : 0x481074 - 0x481122
; =========================================================

481074:  PUSH            {R4-R7,LR}
481076:  ADD             R7, SP, #0xC
481078:  PUSH.W          {R8-R11}
48107C:  SUB             SP, SP, #0xC
48107E:  MOVW            R4, #0xC9F0
481082:  MOV             R5, R2
481084:  MOVT            R4, #0x3B9A
481088:  STR             R1, [SP,#0x28+var_20]
48108A:  MOV             R9, R0
48108C:  MOV             R0, R4
48108E:  MOV             R1, R5
481090:  MOV             R10, R3
481092:  BLX             __aeabi_uidiv
481096:  LDR.W           R6, [R9,#4]
48109A:  MOV             R8, R0
48109C:  CMP             R5, R4
48109E:  BLS             loc_4810B2
4810A0:  LDR.W           R0, [R9]
4810A4:  MOVS            R1, #0x46 ; 'F'
4810A6:  STR             R1, [R0,#0x14]
4810A8:  LDR.W           R0, [R9]
4810AC:  LDR             R1, [R0]
4810AE:  MOV             R0, R9
4810B0:  BLX             R1
4810B2:  CMP             R8, R10
4810B4:  MOV.W           R2, R10,LSL#2
4810B8:  IT GE
4810BA:  MOVGE           R8, R10
4810BC:  MOV             R0, R9; int
4810BE:  STR.W           R8, [R6,#0x50]
4810C2:  LDR             R1, [SP,#0x28+var_20]
4810C4:  BL              sub_480EA8
4810C8:  MOV             R4, R0
4810CA:  CMP.W           R10, #0
4810CE:  BEQ             loc_481118
4810D0:  MVN.W           R0, R10
4810D4:  MOV.W           R11, #0
4810D8:  STR             R0, [SP,#0x28+var_24]
4810DA:  MOV             R6, R8
4810DC:  SUB.W           R8, R10, R11
4810E0:  CMP             R6, R8
4810E2:  MOV             R0, R9; int
4810E4:  IT CC
4810E6:  MOVCC           R8, R6
4810E8:  LDR             R1, [SP,#0x28+var_20]
4810EA:  MUL.W           R2, R8, R5
4810EE:  BL              sub_480FD4
4810F2:  CMP.W           R8, #0
4810F6:  BEQ             loc_481114
4810F8:  LDR             R1, [SP,#0x28+var_24]
4810FA:  MVNS            R2, R6
4810FC:  ADD             R1, R11
4810FE:  CMP             R1, R2
481100:  IT HI
481102:  MOVHI           R2, R1
481104:  ADDS            R1, R2, #1
481106:  STR.W           R0, [R4,R11,LSL#2]
48110A:  ADD             R0, R5
48110C:  ADDS            R1, #1
48110E:  ADD.W           R11, R11, #1
481112:  BNE             loc_481106
481114:  CMP             R11, R10
481116:  BCC             loc_4810DA
481118:  MOV             R0, R4
48111A:  ADD             SP, SP, #0xC
48111C:  POP.W           {R8-R11}
481120:  POP             {R4-R7,PC}
