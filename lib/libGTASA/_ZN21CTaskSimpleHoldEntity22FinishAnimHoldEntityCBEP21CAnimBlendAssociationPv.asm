; =========================================================
; Game Engine Function: _ZN21CTaskSimpleHoldEntity22FinishAnimHoldEntityCBEP21CAnimBlendAssociationPv
; Address            : 0x542100 - 0x542158
; =========================================================

542100:  PUSH            {R4,R5,R7,LR}
542102:  ADD             R7, SP, #8
542104:  MOV             R4, R1
542106:  MOV             R5, R0
542108:  LDRB.W          R0, [R4,#0x36]
54210C:  CMP             R0, #0
54210E:  ITTTT NE
542110:  MOVNE           R0, #0xBF
542112:  MOVNE           R1, #0
542114:  STRNE           R1, [R4,#0x38]
542116:  STRDNE.W        R0, R1, [R4,#0x20]
54211A:  IT NE
54211C:  POPNE           {R4,R5,R7,PC}
54211E:  LDR             R0, [R4]
542120:  LDR             R1, [R0,#0x14]
542122:  MOV             R0, R4
542124:  BLX             R1
542126:  CMP.W           R0, #0x134
54212A:  BNE             loc_54214C
54212C:  VLDR            S0, [R5,#0x18]
542130:  VCMPE.F32       S0, #0.0
542134:  VMRS            APSR_nzcv, FPSCR
542138:  BLE             loc_54214C
54213A:  MOV             R5, R4
54213C:  LDR.W           R0, [R5,#8]!; this
542140:  CBZ             R0, loc_54214C
542142:  MOV             R1, R5; CEntity **
542144:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
542148:  MOVS            R0, #0
54214A:  STR             R0, [R5]
54214C:  MOVS            R0, #1
54214E:  STRB.W          R0, [R4,#0x34]
542152:  MOVS            R0, #0
542154:  STR             R0, [R4,#0x38]
542156:  POP             {R4,R5,R7,PC}
