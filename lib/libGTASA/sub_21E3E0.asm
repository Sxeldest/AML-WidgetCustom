; =========================================================
; Game Engine Function: sub_21E3E0
; Address            : 0x21E3E0 - 0x21E41E
; =========================================================

21E3E0:  PUSH            {R4,R5,R7,LR}
21E3E2:  ADD             R7, SP, #8
21E3E4:  MOV             R4, R0
21E3E6:  LDR             R0, =(dword_6BD644 - 0x21E3EE)
21E3E8:  MOV             R5, R1
21E3EA:  ADD             R0, PC; dword_6BD644
21E3EC:  LDR             R0, [R0]
21E3EE:  STR             R5, [R4,R0]
21E3F0:  LDRSB.W         R0, [R4,#1]
21E3F4:  CMP             R0, #0
21E3F6:  BLT             loc_21E3FE
21E3F8:  LDR.W           R0, [R5,#0x3C]!
21E3FC:  B               loc_21E40C
21E3FE:  LDR             R0, [R4,#4]
21E400:  CMP             R0, #0
21E402:  IT NE
21E404:  BLXNE           j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
21E408:  LDR.W           R0, [R5,#0x34]!
21E40C:  MOV             R1, R4
21E40E:  STR.W           R0, [R1,#0x34]!
21E412:  STR             R5, [R1,#4]
21E414:  LDR             R0, [R5]
21E416:  STR             R1, [R0,#4]
21E418:  MOV             R0, R4
21E41A:  STR             R1, [R5]
21E41C:  POP             {R4,R5,R7,PC}
