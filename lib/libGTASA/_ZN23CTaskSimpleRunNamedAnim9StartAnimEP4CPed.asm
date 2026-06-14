; =========================================================
; Game Engine Function: _ZN23CTaskSimpleRunNamedAnim9StartAnimEP4CPed
; Address            : 0x4D7034 - 0x4D70AC
; =========================================================

4D7034:  PUSH            {R4,R6,R7,LR}
4D7036:  ADD             R7, SP, #8
4D7038:  MOV             R4, R0
4D703A:  LDR             R0, [R4,#0x40]
4D703C:  CMP             R0, #0
4D703E:  BLT             loc_4D7052
4D7040:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4D7048)
4D7042:  MOVS            R3, #1
4D7044:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4D7046:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
4D7048:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
4D704A:  STRB.W          R3, [R4,#0x4C]
4D704E:  STRD.W          R2, R0, [R4,#0x44]
4D7052:  LDR             R2, [R4,#0x5C]
4D7054:  TST.W           R2, #8
4D7058:  ITT EQ
4D705A:  ORREQ.W         R2, R2, #4
4D705E:  STREQ           R2, [R4,#0x5C]
4D7060:  LDRD.W          R3, R12, [R4,#0x38]
4D7064:  LDR             R0, [R1,#0x18]
4D7066:  MOV             R1, R12
4D7068:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClumpP19CAnimBlendHierarchyif; CAnimManager::BlendAnimation(RpClump *,CAnimBlendHierarchy *,int,float)
4D706C:  LDRB            R1, [R4,#0xC]
4D706E:  STR             R0, [R4,#8]
4D7070:  TST.W           R1, #0x20
4D7074:  BNE             loc_4D7090
4D7076:  LSLS            R1, R1, #0x1B
4D7078:  BMI             loc_4D7096
4D707A:  LDR             R1, [R4,#0x5C]
4D707C:  ANDS.W          R1, R1, #8
4D7080:  BNE             loc_4D7096
4D7082:  LDR             R1, =(_ZN15CTaskSimpleAnim15FinishRunAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4D708A)
4D7084:  MOV             R2, R4; void *
4D7086:  ADD             R1, PC; _ZN15CTaskSimpleAnim15FinishRunAnimCBEP21CAnimBlendAssociationPv_ptr
4D7088:  LDR             R1, [R1]; CTaskSimpleAnim::FinishRunAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4D708A:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4D708E:  B               loc_4D70A2
4D7090:  LDR             R1, =(_ZN23CTaskSimpleRunNamedAnim22FinishRunAnimMovePedCBEP21CAnimBlendAssociationPv_ptr - 0x4D7096)
4D7092:  ADD             R1, PC; _ZN23CTaskSimpleRunNamedAnim22FinishRunAnimMovePedCBEP21CAnimBlendAssociationPv_ptr
4D7094:  B               loc_4D709A
4D7096:  LDR             R1, =(_ZN15CTaskSimpleAnim15FinishRunAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4D709C)
4D7098:  ADD             R1, PC; _ZN15CTaskSimpleAnim15FinishRunAnimCBEP21CAnimBlendAssociationPv_ptr
4D709A:  LDR             R1, [R1]; void (*)(CAnimBlendAssociation *, void *)
4D709C:  MOV             R2, R4; void *
4D709E:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4D70A2:  LDR             R0, [R4,#8]
4D70A4:  LDRH            R0, [R0,#0x2C]
4D70A6:  STRH.W          R0, [R4,#0x60]
4D70AA:  POP             {R4,R6,R7,PC}
