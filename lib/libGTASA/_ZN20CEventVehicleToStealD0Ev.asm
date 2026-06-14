; =========================================================
; Game Engine Function: _ZN20CEventVehicleToStealD0Ev
; Address            : 0x374F78 - 0x374FC2
; =========================================================

374F78:  PUSH            {R4,R6,R7,LR}
374F7A:  ADD             R7, SP, #8
374F7C:  MOV             R4, R0
374F7E:  LDR             R0, =(_ZTV20CEventVehicleToSteal_ptr - 0x374F86)
374F80:  MOV             R1, R4
374F82:  ADD             R0, PC; _ZTV20CEventVehicleToSteal_ptr
374F84:  LDR             R2, [R0]; `vtable for'CEventVehicleToSteal ...
374F86:  LDR.W           R0, [R1,#0xC]!; CEntity **
374F8A:  ADDS            R2, #8
374F8C:  STR             R2, [R4]
374F8E:  CMP             R0, #0
374F90:  IT NE
374F92:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
374F96:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x374FA4)
374F98:  MOV             R3, #0xF0F0F0F1
374FA0:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
374FA2:  LDR             R0, [R0]; CPools::ms_pEventPool ...
374FA4:  LDR             R0, [R0]; CPools::ms_pEventPool
374FA6:  LDRD.W          R1, R2, [R0]
374FAA:  SUBS            R1, R4, R1
374FAC:  ASRS            R1, R1, #2
374FAE:  MULS            R1, R3
374FB0:  LDRB            R3, [R2,R1]
374FB2:  ORR.W           R3, R3, #0x80
374FB6:  STRB            R3, [R2,R1]
374FB8:  LDR             R2, [R0,#0xC]
374FBA:  CMP             R1, R2
374FBC:  IT LT
374FBE:  STRLT           R1, [R0,#0xC]
374FC0:  POP             {R4,R6,R7,PC}
