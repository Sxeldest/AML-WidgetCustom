; =========================================================
; Game Engine Function: _ZN20CTaskComplexCopInCarC2EP8CVehicleP4CPedS3_b
; Address            : 0x53FBBC - 0x53FC44
; =========================================================

53FBBC:  PUSH            {R4-R7,LR}
53FBBE:  ADD             R7, SP, #0xC
53FBC0:  PUSH.W          {R8,R9,R11}
53FBC4:  MOV             R5, R3
53FBC6:  MOV             R9, R2
53FBC8:  MOV             R8, R1
53FBCA:  MOV             R4, R0
53FBCC:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
53FBD0:  LDR             R0, =(_ZTV20CTaskComplexCopInCar_ptr - 0x53FBDC)
53FBD2:  MOVS            R2, #0
53FBD4:  STRH            R2, [R4,#0x20]
53FBD6:  MOV             R6, R4
53FBD8:  ADD             R0, PC; _ZTV20CTaskComplexCopInCar_ptr
53FBDA:  STRH            R2, [R4,#0x2C]
53FBDC:  STRD.W          R2, R2, [R4,#0x24]
53FBE0:  CMP.W           R8, #0
53FBE4:  LDR             R0, [R0]; `vtable for'CTaskComplexCopInCar ...
53FBE6:  LDRB.W          R3, [R4,#0x30]
53FBEA:  LDR             R1, [R7,#arg_0]
53FBEC:  ADD.W           R0, R0, #8
53FBF0:  STRD.W          R2, R2, [R4,#0x18]
53FBF4:  STR             R0, [R4]
53FBF6:  AND.W           R0, R3, #0xFA
53FBFA:  ORR.W           R0, R0, R1
53FBFE:  MOV             R1, R4
53FC00:  ORR.W           R0, R0, #4
53FC04:  STRB.W          R0, [R4,#0x30]
53FC08:  STR.W           R5, [R6,#0x14]!
53FC0C:  MOV             R5, R4
53FC0E:  STR.W           R9, [R5,#0x10]!
53FC12:  STR.W           R8, [R1,#0xC]!; CEntity **
53FC16:  BEQ             loc_53FC22
53FC18:  MOV             R0, R8; this
53FC1A:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
53FC1E:  LDR.W           R9, [R5]
53FC22:  CMP.W           R9, #0
53FC26:  ITTT NE
53FC28:  MOVNE           R0, R9; this
53FC2A:  MOVNE           R1, R5; CEntity **
53FC2C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
53FC30:  LDR             R0, [R6]; this
53FC32:  CMP             R0, #0
53FC34:  ITT NE
53FC36:  MOVNE           R1, R6; CEntity **
53FC38:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
53FC3C:  MOV             R0, R4
53FC3E:  POP.W           {R8,R9,R11}
53FC42:  POP             {R4-R7,PC}
