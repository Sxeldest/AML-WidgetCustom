; =========================================================
; Game Engine Function: _ZNK30CEventPotentialWalkIntoVehicle13CloneEditableEv
; Address            : 0x379BFC - 0x379C92
; =========================================================

379BFC:  PUSH            {R4,R6,R7,LR}
379BFE:  ADD             R7, SP, #8
379C00:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x379C0A)
379C02:  MOV.W           LR, #0
379C06:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
379C08:  LDR             R1, [R1]; CPools::ms_pEventPool ...
379C0A:  LDR             R1, [R1]; CPools::ms_pEventPool
379C0C:  LDRD.W          R12, R4, [R1,#8]
379C10:  ADDS            R4, #1
379C12:  STR             R4, [R1,#0xC]
379C14:  CMP             R4, R12
379C16:  BNE             loc_379C26
379C18:  MOVS            R4, #0
379C1A:  MOVS.W          R2, LR,LSL#31
379C1E:  STR             R4, [R1,#0xC]
379C20:  BNE             loc_379C58
379C22:  MOV.W           LR, #1
379C26:  LDR             R2, [R1,#4]
379C28:  LDRSB           R3, [R2,R4]
379C2A:  CMP.W           R3, #0xFFFFFFFF
379C2E:  BGT             loc_379C10
379C30:  AND.W           R3, R3, #0x7F
379C34:  STRB            R3, [R2,R4]
379C36:  LDR             R2, [R1,#4]
379C38:  LDR             R3, [R1,#0xC]
379C3A:  LDRB            R4, [R2,R3]
379C3C:  AND.W           R12, R4, #0x80
379C40:  ADDS            R4, #1
379C42:  AND.W           R4, R4, #0x7F
379C46:  ORR.W           R4, R4, R12
379C4A:  STRB            R4, [R2,R3]
379C4C:  LDR             R2, [R1]
379C4E:  LDR             R1, [R1,#0xC]
379C50:  ADD.W           R1, R1, R1,LSL#4
379C54:  ADD.W           R4, R2, R1,LSL#2
379C58:  LDR             R1, =(_ZTV30CEventPotentialWalkIntoVehicle_ptr - 0x379C64)
379C5A:  MOVS            R3, #0
379C5C:  LDRD.W          R2, R0, [R0,#0x10]
379C60:  ADD             R1, PC; _ZTV30CEventPotentialWalkIntoVehicle_ptr
379C62:  STR             R3, [R4,#4]
379C64:  MOVW            R3, #0x100
379C68:  CMP             R2, #0
379C6A:  MOVT            R3, #0xC8
379C6E:  LDR             R1, [R1]; `vtable for'CEventPotentialWalkIntoVehicle ...
379C70:  STR             R3, [R4,#8]
379C72:  MOVW            R3, #0xFFFF
379C76:  STRH            R3, [R4,#0xC]
379C78:  STR             R0, [R4,#0x14]
379C7A:  ADD.W           R0, R1, #8
379C7E:  MOV             R1, R4
379C80:  STR             R0, [R4]
379C82:  STR.W           R2, [R1,#0x10]!; CEntity **
379C86:  ITT NE
379C88:  MOVNE           R0, R2; this
379C8A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
379C8E:  MOV             R0, R4
379C90:  POP             {R4,R6,R7,PC}
