; =========================================================
; Game Engine Function: _ZN26CTaskComplexCarDriveWanderC2EP8CVehicleif
; Address            : 0x4FBFA8 - 0x4FC000
; =========================================================

4FBFA8:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexCarDriveWander::CTaskComplexCarDriveWander(CVehicle *, int, float)'
4FBFAA:  ADD             R7, SP, #0xC
4FBFAC:  PUSH.W          {R8}
4FBFB0:  MOV             R6, R3
4FBFB2:  MOV             R8, R2
4FBFB4:  MOV             R5, R1
4FBFB6:  MOV             R4, R0
4FBFB8:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FBFBC:  LDR             R0, =(_ZTV20CTaskComplexCarDrive_ptr - 0x4FBFCC)
4FBFBE:  MOV.W           R1, #0xFFFFFFFF
4FBFC2:  STRD.W          R6, R1, [R4,#0x10]
4FBFC6:  MOVS            R1, #1
4FBFC8:  ADD             R0, PC; _ZTV20CTaskComplexCarDrive_ptr
4FBFCA:  STR.W           R8, [R4,#0x18]
4FBFCE:  STRB            R1, [R4,#0x1C]
4FBFD0:  MOVS            R1, #0
4FBFD2:  LDR             R0, [R0]; `vtable for'CTaskComplexCarDrive ...
4FBFD4:  CMP             R5, #0
4FBFD6:  STRB.W          R1, [R4,#0x20]
4FBFDA:  MOV             R1, R4
4FBFDC:  ADD.W           R0, R0, #8
4FBFE0:  STR             R0, [R4]
4FBFE2:  STR.W           R5, [R1,#0xC]!; CEntity **
4FBFE6:  ITT NE
4FBFE8:  MOVNE           R0, R5; this
4FBFEA:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FBFEE:  LDR             R0, =(_ZTV26CTaskComplexCarDriveWander_ptr - 0x4FBFF4)
4FBFF0:  ADD             R0, PC; _ZTV26CTaskComplexCarDriveWander_ptr
4FBFF2:  LDR             R0, [R0]; `vtable for'CTaskComplexCarDriveWander ...
4FBFF4:  ADDS            R0, #8
4FBFF6:  STR             R0, [R4]
4FBFF8:  MOV             R0, R4
4FBFFA:  POP.W           {R8}
4FBFFE:  POP             {R4-R7,PC}
