; =========================================================
; Game Engine Function: sub_17DBC4
; Address            : 0x17DBC4 - 0x17DC88
; =========================================================

17DBC4:  PUSH            {R4-R7,LR}
17DBC6:  ADD             R7, SP, #0xC
17DBC8:  PUSH.W          {R8-R11}
17DBCC:  SUB             SP, SP, #4
17DBCE:  LDR             R5, [R0,#0xC]
17DBD0:  MOV             R4, R1
17DBD2:  MOV             R8, R0
17DBD4:  CMP             R5, #0
17DBD6:  BEQ             loc_17DC60
17DBD8:  LDR.W           R1, [R8,#8]
17DBDC:  LDR.W           R0, [R8]
17DBE0:  LDR             R2, [R4]
17DBE2:  ADD.W           R9, R1, #1
17DBE6:  STR.W           R9, [R8,#8]
17DBEA:  CMP             R9, R5
17DBEC:  STR.W           R2, [R0,R1,LSL#2]
17DBF0:  ITT EQ
17DBF2:  MOVEQ.W         R9, #0
17DBF6:  STREQ.W         R9, [R8,#8]
17DBFA:  LDR.W           R0, [R8,#4]
17DBFE:  CMP             R9, R0
17DC00:  BNE             loc_17DC80
17DC02:  MOV             R0, #0x3FFFFFFE
17DC0A:  AND.W           R0, R0, R5,LSL#1
17DC0E:  SUBS.W          R1, R0, R5,LSL#1
17DC12:  MOV.W           R0, R5,LSL#3
17DC16:  IT NE
17DC18:  MOVNE           R1, #1
17DC1A:  CMP             R1, #0
17DC1C:  IT NE
17DC1E:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
17DC22:  BLX             j__Znaj; operator new[](uint)
17DC26:  LDR.W           R4, [R8]
17DC2A:  MOV             R11, R0
17DC2C:  MOV.W           R10, R5,LSL#1
17DC30:  MOVS            R6, #0
17DC32:  ADD.W           R0, R9, R6
17DC36:  MOV             R1, R5
17DC38:  BLX             sub_221798
17DC3C:  LDR.W           R0, [R4,R1,LSL#2]
17DC40:  STR.W           R0, [R11,R6,LSL#2]
17DC44:  ADDS            R6, #1
17DC46:  CMP             R5, R6
17DC48:  BNE             loc_17DC32
17DC4A:  MOVS            R0, #0
17DC4C:  ADD.W           R1, R8, #4
17DC50:  STM.W           R1, {R0,R5,R10}
17DC54:  MOV             R0, R4; void *
17DC56:  BLX             j__ZdaPv; operator delete[](void *)
17DC5A:  STR.W           R11, [R8]
17DC5E:  B               loc_17DC80
17DC60:  MOVS            R0, #0x40 ; '@'; unsigned int
17DC62:  BLX             j__Znaj; operator new[](uint)
17DC66:  MOVS            R1, #1
17DC68:  STR.W           R0, [R8]
17DC6C:  STR.W           R1, [R8,#8]
17DC70:  MOVS            R1, #0
17DC72:  STR.W           R1, [R8,#4]
17DC76:  MOVS            R2, #0x10
17DC78:  LDR             R1, [R4]
17DC7A:  STR.W           R2, [R8,#0xC]
17DC7E:  STR             R1, [R0]
17DC80:  ADD             SP, SP, #4
17DC82:  POP.W           {R8-R11}
17DC86:  POP             {R4-R7,PC}
