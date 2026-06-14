; =========================================================
; Game Engine Function: _ZN23CTaskSimpleRunNamedAnim22FinishRunAnimMovePedCBEP21CAnimBlendAssociationPv
; Address            : 0x4D70BC - 0x4D711C
; =========================================================

4D70BC:  PUSH            {R4-R7,LR}
4D70BE:  ADD             R7, SP, #0xC
4D70C0:  PUSH.W          {R11}
4D70C4:  MOV             R4, R1
4D70C6:  MOVS            R1, #0; int
4D70C8:  MOV             R5, R0
4D70CA:  MOVS            R6, #0
4D70CC:  BLX             j__ZN21CAnimBlendAssociation7GetNodeEi; CAnimBlendAssociation::GetNode(int)
4D70D0:  ADD.W           R1, R4, #0x50 ; 'P'; CVector *
4D70D4:  MOVS            R2, #0; float
4D70D6:  BLX             j__ZN14CAnimBlendNode21GetCurrentTranslationER7CVectorf; CAnimBlendNode::GetCurrentTranslation(CVector &,float)
4D70DA:  LDRB            R0, [R4,#0xC]
4D70DC:  ORR.W           R0, R0, #0x40 ; '@'
4D70E0:  STRB            R0, [R4,#0xC]
4D70E2:  LDRH            R0, [R5,#0x2E]
4D70E4:  TST.W           R0, #8
4D70E8:  ORR.W           R1, R0, #0x2000
4D70EC:  STRH            R1, [R5,#0x2E]
4D70EE:  BNE             loc_4D70F6
4D70F0:  LDR             R0, [R5,#0x30]
4D70F2:  CMP             R0, #2
4D70F4:  BNE             loc_4D7106
4D70F6:  LDRB            R0, [R4,#0xC]
4D70F8:  STR             R6, [R4,#8]
4D70FA:  ORR.W           R0, R0, #1
4D70FE:  STRB            R0, [R4,#0xC]
4D7100:  POP.W           {R11}
4D7104:  POP             {R4-R7,PC}
4D7106:  LDR             R0, =(_ZN15CTaskSimpleAnim15FinishRunAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4D710E)
4D7108:  MOV             R2, R4
4D710A:  ADD             R0, PC; _ZN15CTaskSimpleAnim15FinishRunAnimCBEP21CAnimBlendAssociationPv_ptr
4D710C:  LDR             R1, [R0]; CTaskSimpleAnim::FinishRunAnimCB(CAnimBlendAssociation *,void *)
4D710E:  MOV             R0, R5
4D7110:  POP.W           {R11}
4D7114:  POP.W           {R4-R7,LR}
4D7118:  B.W             sub_192A28
