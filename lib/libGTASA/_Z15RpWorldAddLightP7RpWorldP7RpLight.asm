; =========================================================
; Game Engine Function: _Z15RpWorldAddLightP7RpWorldP7RpLight
; Address            : 0x21E830 - 0x21E870
; =========================================================

21E830:  PUSH            {R4,R5,R7,LR}
21E832:  ADD             R7, SP, #8
21E834:  MOV             R4, R0
21E836:  LDR             R0, =(dword_6BD644 - 0x21E83E)
21E838:  MOV             R5, R1
21E83A:  ADD             R0, PC; dword_6BD644
21E83C:  LDR             R0, [R0]
21E83E:  STR             R4, [R5,R0]
21E840:  LDRSB.W         R0, [R5,#1]
21E844:  CMP             R0, #0
21E846:  BLT             loc_21E850
21E848:  MOV             R0, R4
21E84A:  LDR.W           R1, [R0,#0x3C]!
21E84E:  B               loc_21E860
21E850:  LDR             R0, [R5,#4]
21E852:  CMP             R0, #0
21E854:  IT NE
21E856:  BLXNE           j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
21E85A:  MOV             R0, R4
21E85C:  LDR.W           R1, [R0,#0x34]!
21E860:  STR.W           R1, [R5,#0x34]!
21E864:  STR             R0, [R5,#4]
21E866:  LDR             R1, [R0]
21E868:  STR             R5, [R1,#4]
21E86A:  STR             R5, [R0]
21E86C:  MOV             R0, R4
21E86E:  POP             {R4,R5,R7,PC}
