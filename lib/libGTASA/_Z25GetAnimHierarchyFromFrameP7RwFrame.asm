; =========================================================
; Game Engine Function: _Z25GetAnimHierarchyFromFrameP7RwFrame
; Address            : 0x5D1050 - 0x5D1092
; =========================================================

5D1050:  PUSH            {R4,R6,R7,LR}
5D1052:  ADD             R7, SP, #8
5D1054:  SUB             SP, SP, #8
5D1056:  MOV             R4, R0
5D1058:  MOVS            R0, #0
5D105A:  STR             R0, [SP,#0x10+var_C]
5D105C:  MOV             R0, R4
5D105E:  BLX.W           j__Z24RpHAnimFrameGetHierarchyP7RwFrame; RpHAnimFrameGetHierarchy(RwFrame *)
5D1062:  CMP             R0, #0
5D1064:  ITTT NE
5D1066:  STRNE           R0, [SP,#0x10+var_C]
5D1068:  ADDNE           SP, SP, #8
5D106A:  POPNE           {R4,R6,R7,PC}
5D106C:  LDR             R1, =(sub_5D109C+1 - 0x5D1076)
5D106E:  ADD             R2, SP, #0x10+var_C
5D1070:  MOV             R0, R4
5D1072:  ADD             R1, PC; sub_5D109C
5D1074:  BLX.W           j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
5D1078:  LDR             R0, [SP,#0x10+var_C]
5D107A:  CBZ             R0, loc_5D1080
5D107C:  ADD             SP, SP, #8
5D107E:  POP             {R4,R6,R7,PC}
5D1080:  LDR             R1, =(sub_5D109C+1 - 0x5D108A)
5D1082:  ADD             R2, SP, #0x10+var_C
5D1084:  MOV             R0, R4
5D1086:  ADD             R1, PC; sub_5D109C
5D1088:  BLX.W           j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
5D108C:  LDR             R0, [SP,#0x10+var_C]
5D108E:  ADD             SP, SP, #8
5D1090:  POP             {R4,R6,R7,PC}
