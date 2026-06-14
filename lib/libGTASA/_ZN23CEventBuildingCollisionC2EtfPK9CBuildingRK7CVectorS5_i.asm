; =========================================================
; Game Engine Function: _ZN23CEventBuildingCollisionC2EtfPK9CBuildingRK7CVectorS5_i
; Address            : 0x371694 - 0x3716F2
; =========================================================

371694:  PUSH            {R4-R7,LR}
371696:  ADD             R7, SP, #0xC
371698:  PUSH.W          {R11}
37169C:  LDR.W           R12, =(_ZTV23CEventBuildingCollision_ptr - 0x3716AC)
3716A0:  MOV             R4, R0
3716A2:  MOVS            R6, #0
3716A4:  LDRD.W          R0, LR, [R7,#arg_0]
3716A8:  ADD             R12, PC; _ZTV23CEventBuildingCollision_ptr
3716AA:  STRB            R6, [R4,#8]
3716AC:  STR             R6, [R4,#4]
3716AE:  CMP             R3, #0
3716B0:  STRH            R1, [R4,#0xA]
3716B2:  LDR.W           R1, [R12]; `vtable for'CEventBuildingCollision ...
3716B6:  LDR             R5, [R7,#arg_8]
3716B8:  ADD.W           R1, R1, #8
3716BC:  STRH            R5, [R4,#0xC]
3716BE:  STR             R2, [R4,#0x10]
3716C0:  STR             R1, [R4]
3716C2:  MOV             R1, R4
3716C4:  STR.W           R3, [R1,#0x14]!; CEntity **
3716C8:  VLDR            D16, [R0]
3716CC:  LDR             R0, [R0,#8]
3716CE:  STR             R0, [R4,#0x20]
3716D0:  VSTR            D16, [R4,#0x18]
3716D4:  VLDR            D16, [LR]
3716D8:  LDR.W           R0, [LR,#8]
3716DC:  STR             R0, [R4,#0x2C]
3716DE:  VSTR            D16, [R4,#0x24]
3716E2:  ITT NE
3716E4:  MOVNE           R0, R3; this
3716E6:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3716EA:  MOV             R0, R4
3716EC:  POP.W           {R11}
3716F0:  POP             {R4-R7,PC}
