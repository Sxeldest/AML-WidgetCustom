; =========================================================
; Game Engine Function: _ZN23CTaskComplexFallToDeath13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x52CF18 - 0x52CF5C
; =========================================================

52CF18:  PUSH            {R4,R5,R7,LR}
52CF1A:  ADD             R7, SP, #8
52CF1C:  MOV             R4, R1
52CF1E:  MOV             R5, R0
52CF20:  CMP             R2, #2
52CF22:  ITT NE
52CF24:  MOVNE           R0, #0
52CF26:  POPNE           {R4,R5,R7,PC}
52CF28:  LDR             R1, [R5,#0x18]
52CF2A:  ADDS            R0, R1, #1
52CF2C:  BEQ             loc_52CF40
52CF2E:  LDR             R0, [R4,#0x18]
52CF30:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
52CF34:  CMP             R0, #0
52CF36:  ITTT NE
52CF38:  MOVNE           R1, #0
52CF3A:  MOVTNE          R1, #0xC47A
52CF3E:  STRNE           R1, [R0,#0x1C]
52CF40:  LDR             R1, [R5,#0x1C]
52CF42:  ADDS            R0, R1, #1
52CF44:  BEQ             loc_52CF58
52CF46:  LDR             R0, [R4,#0x18]
52CF48:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
52CF4C:  CMP             R0, #0
52CF4E:  ITTT NE
52CF50:  MOVNE           R1, #0
52CF52:  MOVTNE          R1, #0xC47A
52CF56:  STRNE           R1, [R0,#0x1C]
52CF58:  MOVS            R0, #1
52CF5A:  POP             {R4,R5,R7,PC}
