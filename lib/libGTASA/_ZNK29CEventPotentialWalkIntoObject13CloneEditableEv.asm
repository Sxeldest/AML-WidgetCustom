; =========================================================
; Game Engine Function: _ZNK29CEventPotentialWalkIntoObject13CloneEditableEv
; Address            : 0x379CA8 - 0x379D3E
; =========================================================

379CA8:  PUSH            {R4,R6,R7,LR}
379CAA:  ADD             R7, SP, #8
379CAC:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x379CB6)
379CAE:  MOV.W           LR, #0
379CB2:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
379CB4:  LDR             R1, [R1]; CPools::ms_pEventPool ...
379CB6:  LDR             R1, [R1]; CPools::ms_pEventPool
379CB8:  LDRD.W          R12, R4, [R1,#8]
379CBC:  ADDS            R4, #1
379CBE:  STR             R4, [R1,#0xC]
379CC0:  CMP             R4, R12
379CC2:  BNE             loc_379CD2
379CC4:  MOVS            R4, #0
379CC6:  MOVS.W          R2, LR,LSL#31
379CCA:  STR             R4, [R1,#0xC]
379CCC:  BNE             loc_379D04
379CCE:  MOV.W           LR, #1
379CD2:  LDR             R2, [R1,#4]
379CD4:  LDRSB           R3, [R2,R4]
379CD6:  CMP.W           R3, #0xFFFFFFFF
379CDA:  BGT             loc_379CBC
379CDC:  AND.W           R3, R3, #0x7F
379CE0:  STRB            R3, [R2,R4]
379CE2:  LDR             R2, [R1,#4]
379CE4:  LDR             R3, [R1,#0xC]
379CE6:  LDRB            R4, [R2,R3]
379CE8:  AND.W           R12, R4, #0x80
379CEC:  ADDS            R4, #1
379CEE:  AND.W           R4, R4, #0x7F
379CF2:  ORR.W           R4, R4, R12
379CF6:  STRB            R4, [R2,R3]
379CF8:  LDR             R2, [R1]
379CFA:  LDR             R1, [R1,#0xC]
379CFC:  ADD.W           R1, R1, R1,LSL#4
379D00:  ADD.W           R4, R2, R1,LSL#2
379D04:  LDR             R1, =(_ZTV29CEventPotentialWalkIntoObject_ptr - 0x379D10)
379D06:  MOVS            R3, #0
379D08:  LDRD.W          R2, R0, [R0,#0x10]
379D0C:  ADD             R1, PC; _ZTV29CEventPotentialWalkIntoObject_ptr
379D0E:  STR             R3, [R4,#4]
379D10:  MOVW            R3, #0x100
379D14:  CMP             R2, #0
379D16:  MOVT            R3, #0xC8
379D1A:  LDR             R1, [R1]; `vtable for'CEventPotentialWalkIntoObject ...
379D1C:  STR             R3, [R4,#8]
379D1E:  MOVW            R3, #0xFFFF
379D22:  STRH            R3, [R4,#0xC]
379D24:  STR             R0, [R4,#0x14]
379D26:  ADD.W           R0, R1, #8
379D2A:  MOV             R1, R4
379D2C:  STR             R0, [R4]
379D2E:  STR.W           R2, [R1,#0x10]!; CEntity **
379D32:  ITT NE
379D34:  MOVNE           R0, R2; this
379D36:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
379D3A:  MOV             R0, R4
379D3C:  POP             {R4,R6,R7,PC}
