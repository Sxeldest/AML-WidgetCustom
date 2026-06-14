; =========================================================
; Game Engine Function: _Z12FindFileNamePKc
; Address            : 0x271024 - 0x271062
; =========================================================

271024:  PUSH            {R4-R7,LR}
271026:  ADD             R7, SP, #0xC
271028:  PUSH.W          {R8,R9,R11}
27102C:  MOV             R8, R0
27102E:  LDR             R0, =(dword_6D81C4 - 0x271034)
271030:  ADD             R0, PC; dword_6D81C4
271032:  LDR.W           R9, [R0,#(dword_6D81C8 - 0x6D81C4)]
271036:  CMP.W           R9, #0
27103A:  BEQ             loc_271058
27103C:  LDR             R0, =(dword_6D81C4 - 0x271044)
27103E:  MOVS            R6, #0
271040:  ADD             R0, PC; dword_6D81C4
271042:  LDR             R4, [R0,#(dword_6D81CC - 0x6D81C4)]
271044:  LDR.W           R5, [R4,R6,LSL#2]
271048:  MOV             R0, R8; char *
27104A:  MOV             R1, R5; char *
27104C:  BLX             strcasecmp
271050:  CBZ             R0, loc_27105A
271052:  ADDS            R6, #1
271054:  CMP             R6, R9
271056:  BCC             loc_271044
271058:  MOV             R5, R8
27105A:  MOV             R0, R5
27105C:  POP.W           {R8,R9,R11}
271060:  POP             {R4-R7,PC}
