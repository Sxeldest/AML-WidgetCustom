; =========================================================
; Game Engine Function: _ZN22CEventVehicleCollisionC2EtfPK8CVehicleRK7CVectorS5_it
; Address            : 0x370E98 - 0x370F00
; =========================================================

370E98:  PUSH            {R4-R7,LR}
370E9A:  ADD             R7, SP, #0xC
370E9C:  PUSH.W          {R11}
370EA0:  LDR.W           R12, =(_ZTV22CEventVehicleCollision_ptr - 0x370EB0)
370EA4:  MOV             R4, R0
370EA6:  MOVS            R6, #0
370EA8:  LDRD.W          R0, LR, [R7,#arg_0]
370EAC:  ADD             R12, PC; _ZTV22CEventVehicleCollision_ptr
370EAE:  STRB            R6, [R4,#8]
370EB0:  STR             R6, [R4,#4]
370EB2:  CMP             R3, #0
370EB4:  STRH            R1, [R4,#0xA]
370EB6:  LDR.W           R1, [R12]; `vtable for'CEventVehicleCollision ...
370EBA:  LDR             R5, [R7,#arg_C]
370EBC:  ADD.W           R1, R1, #8
370EC0:  STRH            R5, [R4,#0xC]
370EC2:  STR             R2, [R4,#0x10]
370EC4:  STR             R1, [R4]
370EC6:  MOV             R1, R4
370EC8:  STR.W           R3, [R1,#0x14]!; CEntity **
370ECC:  VLDR            D16, [R0]
370ED0:  LDR             R0, [R0,#8]
370ED2:  STR             R0, [R4,#0x20]
370ED4:  VSTR            D16, [R4,#0x18]
370ED8:  VLDR            D16, [LR]
370EDC:  LDR.W           R0, [LR,#8]
370EE0:  LDR             R2, [R7,#arg_8]
370EE2:  STR             R0, [R4,#0x2C]
370EE4:  STRB.W          R2, [R4,#0x30]
370EE8:  STRB.W          R6, [R4,#0x31]
370EEC:  VSTR            D16, [R4,#0x24]
370EF0:  ITT NE
370EF2:  MOVNE           R0, R3; this
370EF4:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
370EF8:  MOV             R0, R4
370EFA:  POP.W           {R11}
370EFE:  POP             {R4-R7,PC}
