; =========================================================
; Game Engine Function: sub_8428C
; Address            : 0x8428C - 0x842E4
; =========================================================

8428C:  PUSH            {R4-R7,LR}
8428E:  ADD             R7, SP, #0xC
84290:  PUSH.W          {R8,R9,R11}
84294:  MOV             R9, R0
84296:  MOVW            R0, #0x4E70
8429A:  ADD.W           R6, R9, R0
8429E:  MOV.W           R8, #0
842A2:  B               loc_842B8
842A4:  SUBS            R6, #0x14
842A6:  LDR             R0, [R6]; void *
842A8:  STR.W           R8, [R6]
842AC:  CMP             R0, #0
842AE:  IT NE
842B0:  BLXNE           j__ZdlPv; operator delete(void *)
842B4:  CMP             R6, R9
842B6:  BEQ             loc_842DC
842B8:  LDR.W           R5, [R6,#-0xC]
842BC:  CMP             R5, #0
842BE:  BEQ             loc_842A4
842C0:  LDRB            R0, [R5,#0x14]
842C2:  LDR             R4, [R5]
842C4:  LSLS            R0, R0, #0x1F
842C6:  ITT NE
842C8:  LDRNE           R0, [R5,#0x1C]; void *
842CA:  BLXNE           j__ZdlPv; operator delete(void *)
842CE:  MOV             R0, R5; void *
842D0:  BLX             j__ZdlPv; operator delete(void *)
842D4:  CMP             R4, #0
842D6:  MOV             R5, R4
842D8:  BNE             loc_842C0
842DA:  B               loc_842A4
842DC:  MOV             R0, R9
842DE:  POP.W           {R8,R9,R11}
842E2:  POP             {R4-R7,PC}
