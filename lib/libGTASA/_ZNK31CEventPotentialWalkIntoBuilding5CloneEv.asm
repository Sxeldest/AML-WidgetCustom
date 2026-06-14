; =========================================================
; Game Engine Function: _ZNK31CEventPotentialWalkIntoBuilding5CloneEv
; Address            : 0x378A10 - 0x378AC2
; =========================================================

378A10:  PUSH            {R4,R6,R7,LR}
378A12:  ADD             R7, SP, #8
378A14:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x378A1E)
378A16:  MOV.W           LR, #0
378A1A:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
378A1C:  LDR             R1, [R1]; CPools::ms_pEventPool ...
378A1E:  LDR             R1, [R1]; CPools::ms_pEventPool
378A20:  LDRD.W          R12, R4, [R1,#8]
378A24:  ADDS            R4, #1
378A26:  STR             R4, [R1,#0xC]
378A28:  CMP             R4, R12
378A2A:  BNE             loc_378A3A
378A2C:  MOVS            R4, #0
378A2E:  MOVS.W          R2, LR,LSL#31
378A32:  STR             R4, [R1,#0xC]
378A34:  BNE             loc_378A6C
378A36:  MOV.W           LR, #1
378A3A:  LDR             R2, [R1,#4]
378A3C:  LDRSB           R3, [R2,R4]
378A3E:  CMP.W           R3, #0xFFFFFFFF
378A42:  BGT             loc_378A24
378A44:  AND.W           R3, R3, #0x7F
378A48:  STRB            R3, [R2,R4]
378A4A:  LDR             R2, [R1,#4]
378A4C:  LDR             R3, [R1,#0xC]
378A4E:  LDRB            R4, [R2,R3]
378A50:  AND.W           R12, R4, #0x80
378A54:  ADDS            R4, #1
378A56:  AND.W           R4, R4, #0x7F
378A5A:  ORR.W           R4, R4, R12
378A5E:  STRB            R4, [R2,R3]
378A60:  LDR             R2, [R1]
378A62:  LDR             R1, [R1,#0xC]
378A64:  ADD.W           R1, R1, R1,LSL#4
378A68:  ADD.W           R4, R2, R1,LSL#2
378A6C:  LDR.W           R12, =(_ZTV23CEventBuildingCollision_ptr - 0x378A78)
378A70:  MOVS            R1, #0
378A72:  LDRH            R3, [R0,#0xC]
378A74:  ADD             R12, PC; _ZTV23CEventBuildingCollision_ptr
378A76:  LDR             R2, [R0,#0x14]
378A78:  STRB            R1, [R4,#8]
378A7A:  LDR.W           R12, [R12]; `vtable for'CEventBuildingCollision ...
378A7E:  CMP             R2, #0
378A80:  STRH            R1, [R4,#0xA]
378A82:  STRH            R3, [R4,#0xC]
378A84:  ADD.W           R3, R12, #8
378A88:  STR             R1, [R4,#0x10]
378A8A:  STRD.W          R3, R1, [R4]
378A8E:  MOV             R1, R4
378A90:  STR.W           R2, [R1,#0x14]!; CEntity **
378A94:  VLDR            D16, [R0,#0x18]
378A98:  LDR             R3, [R0,#0x20]
378A9A:  STR             R3, [R4,#0x20]
378A9C:  VSTR            D16, [R4,#0x18]
378AA0:  VLDR            D16, [R0,#0x24]
378AA4:  LDR             R0, [R0,#0x2C]
378AA6:  STR             R0, [R4,#0x2C]
378AA8:  VSTR            D16, [R4,#0x24]
378AAC:  ITT NE
378AAE:  MOVNE           R0, R2; this
378AB0:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
378AB4:  LDR             R0, =(_ZTV31CEventPotentialWalkIntoBuilding_ptr - 0x378ABA)
378AB6:  ADD             R0, PC; _ZTV31CEventPotentialWalkIntoBuilding_ptr
378AB8:  LDR             R0, [R0]; `vtable for'CEventPotentialWalkIntoBuilding ...
378ABA:  ADDS            R0, #8
378ABC:  STR             R0, [R4]
378ABE:  MOV             R0, R4
378AC0:  POP             {R4,R6,R7,PC}
