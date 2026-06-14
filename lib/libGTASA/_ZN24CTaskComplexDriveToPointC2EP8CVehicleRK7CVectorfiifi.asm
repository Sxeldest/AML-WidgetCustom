; =========================================================
; Game Engine Function: _ZN24CTaskComplexDriveToPointC2EP8CVehicleRK7CVectorfiifi
; Address            : 0x4FC2B4 - 0x4FC334
; =========================================================

4FC2B4:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexDriveToPoint::CTaskComplexDriveToPoint(CVehicle *, CVector const&, float, int, int, float, int)'
4FC2B6:  ADD             R7, SP, #0xC
4FC2B8:  PUSH.W          {R8,R9,R11}
4FC2BC:  VPUSH           {D8}
4FC2C0:  MOV             R5, R3
4FC2C2:  MOV             R8, R2
4FC2C4:  MOV             R6, R1
4FC2C6:  MOV             R4, R0
4FC2C8:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FC2CC:  LDR             R0, =(_ZTV20CTaskComplexCarDrive_ptr - 0x4FC2D8)
4FC2CE:  CMP             R6, #0
4FC2D0:  LDRD.W          R9, R2, [R7,#arg_0]
4FC2D4:  ADD             R0, PC; _ZTV20CTaskComplexCarDrive_ptr
4FC2D6:  LDR             R1, [R7,#arg_C]
4FC2D8:  STRD.W          R5, R2, [R4,#0x10]
4FC2DC:  MOV.W           R5, #0
4FC2E0:  LDR             R0, [R0]; `vtable for'CTaskComplexCarDrive ...
4FC2E2:  STR             R1, [R4,#0x18]
4FC2E4:  MOV.W           R1, #1
4FC2E8:  STRB            R1, [R4,#0x1C]
4FC2EA:  MOV             R1, R4
4FC2EC:  STRB.W          R5, [R4,#0x20]
4FC2F0:  ADD.W           R0, R0, #8
4FC2F4:  STR             R0, [R4]
4FC2F6:  STR.W           R6, [R1,#0xC]!; CEntity **
4FC2FA:  VLDR            S16, [R7,#arg_8]
4FC2FE:  ITT NE
4FC300:  MOVNE           R0, R6; this
4FC302:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FC306:  LDR             R0, =(_ZTV24CTaskComplexDriveToPoint_ptr - 0x4FC30C)
4FC308:  ADD             R0, PC; _ZTV24CTaskComplexDriveToPoint_ptr
4FC30A:  LDR             R0, [R0]; `vtable for'CTaskComplexDriveToPoint ...
4FC30C:  ADDS            R0, #8
4FC30E:  STR             R0, [R4]
4FC310:  VLDR            D16, [R8]
4FC314:  LDR.W           R0, [R8,#8]
4FC318:  STRD.W          R0, R9, [R4,#0x2C]
4FC31C:  MOV             R0, R4
4FC31E:  VSTR            S16, [R4,#0x34]
4FC322:  STRB.W          R5, [R4,#0x38]
4FC326:  VSTR            D16, [R4,#0x24]
4FC32A:  VPOP            {D8}
4FC32E:  POP.W           {R8,R9,R11}
4FC332:  POP             {R4-R7,PC}
