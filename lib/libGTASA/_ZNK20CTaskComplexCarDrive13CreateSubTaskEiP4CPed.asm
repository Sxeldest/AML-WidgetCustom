; =========================================================
; Game Engine Function: _ZNK20CTaskComplexCarDrive13CreateSubTaskEiP4CPed
; Address            : 0x4FBA88 - 0x4FBC6C
; =========================================================

4FBA88:  PUSH            {R4-R7,LR}
4FBA8A:  ADD             R7, SP, #0xC
4FBA8C:  PUSH.W          {R11}
4FBA90:  MOV             R5, R0
4FBA92:  SUB.W           R0, R1, #0x2BC; switch 18 cases
4FBA96:  MOV             R6, R2
4FBA98:  MOVS            R4, #0
4FBA9A:  CMP             R0, #0x11
4FBA9C:  BHI             def_4FBA9E; jumptable 004FBA9E default case
4FBA9E:  TBB.W           [PC,R0]; switch jump
4FBAA2:  DCB 9; jump table for switch statement
4FBAA3:  DCB 0x49
4FBAA4:  DCB 0xD2
4FBAA5:  DCB 0xD2
4FBAA6:  DCB 0xD2
4FBAA7:  DCB 0xD2
4FBAA8:  DCB 0xD2
4FBAA9:  DCB 0xD2
4FBAAA:  DCB 0xD2
4FBAAB:  DCB 0x7E
4FBAAC:  DCB 0xD2
4FBAAD:  DCB 0xD2
4FBAAE:  DCB 0xD2
4FBAAF:  DCB 0xD2
4FBAB0:  DCB 0xBA
4FBAB1:  DCB 0xD2
4FBAB2:  DCB 0xD2
4FBAB3:  DCB 0xC7
4FBAB4:  MOVS            R0, #dword_50; jumptable 004FBA9E case 700
4FBAB6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FBABA:  MOV             R4, R0
4FBABC:  LDR             R5, [R5,#0xC]
4FBABE:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FBAC2:  VMOV.I32        Q8, #0
4FBAC6:  ADD.W           R1, R4, #0x14
4FBACA:  LDR             R0, =(_ZTV20CTaskComplexEnterCar_ptr - 0x4FBADC)
4FBACC:  MOVS            R6, #0
4FBACE:  CMP             R5, #0
4FBAD0:  VST1.32         {D16-D17}, [R1]
4FBAD4:  MOV.W           R1, #6
4FBAD8:  ADD             R0, PC; _ZTV20CTaskComplexEnterCar_ptr
4FBADA:  STR             R1, [R4,#0x24]
4FBADC:  MOV             R1, #0xBF800000
4FBAE4:  LDR             R0, [R0]; `vtable for'CTaskComplexEnterCar ...
4FBAE6:  STRH            R6, [R4,#0x28]
4FBAE8:  STR             R6, [R4,#0x38]
4FBAEA:  ADD.W           R0, R0, #8
4FBAEE:  STRB.W          R6, [R4,#0x3C]
4FBAF2:  STR             R6, [R4,#0x40]
4FBAF4:  STRB.W          R6, [R4,#0x44]
4FBAF8:  STR             R1, [R4,#0x48]
4FBAFA:  LDRB            R1, [R4,#0x10]
4FBAFC:  STR             R0, [R4]
4FBAFE:  AND.W           R0, R1, #0xF0
4FBB02:  MOV             R1, R4
4FBB04:  STRB            R0, [R4,#0x10]
4FBB06:  STR.W           R5, [R1,#0xC]!; CEntity **
4FBB0A:  ITT NE
4FBB0C:  MOVNE           R0, R5; this
4FBB0E:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FBB12:  LDR             R0, =(_ZTV31CTaskComplexEnterCarAsPassenger_ptr - 0x4FBB1A)
4FBB14:  STR             R6, [R4,#0x1C]
4FBB16:  ADD             R0, PC; _ZTV31CTaskComplexEnterCarAsPassenger_ptr
4FBB18:  B               loc_4FBC40
4FBB1A:  CMP.W           R1, #0x340; jumptable 004FBA9E default case
4FBB1E:  BEQ.W           loc_4FBC4E
4FBB22:  CMP.W           R1, #0x390
4FBB26:  BNE.W           loc_4FBC46; jumptable 004FBA9E cases 702-708,710-713,715,716
4FBB2A:  MOV             R0, R6; this
4FBB2C:  BLX             j__ZN18CTaskComplexWander22GetWanderTaskByPedTypeERK4CPed; CTaskComplexWander::GetWanderTaskByPedType(CPed const&)
4FBB30:  MOV             R4, R0
4FBB32:  B               loc_4FBC46; jumptable 004FBA9E cases 702-708,710-713,715,716
4FBB34:  MOVS            R0, #dword_50; jumptable 004FBA9E case 701
4FBB36:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FBB3A:  MOV             R4, R0
4FBB3C:  LDR             R5, [R5,#0xC]
4FBB3E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FBB42:  VMOV.I32        Q8, #0
4FBB46:  LDR             R0, =(_ZTV20CTaskComplexEnterCar_ptr - 0x4FBB52)
4FBB48:  ADD.W           R1, R4, #0x14
4FBB4C:  CMP             R5, #0
4FBB4E:  ADD             R0, PC; _ZTV20CTaskComplexEnterCar_ptr
4FBB50:  VST1.32         {D16-D17}, [R1]
4FBB54:  MOV.W           R1, #6
4FBB58:  STR             R1, [R4,#0x24]
4FBB5A:  MOV.W           R1, #0
4FBB5E:  LDR             R0, [R0]; `vtable for'CTaskComplexEnterCar ...
4FBB60:  STRH            R1, [R4,#0x28]
4FBB62:  STR             R1, [R4,#0x38]
4FBB64:  ADD.W           R0, R0, #8
4FBB68:  STRB.W          R1, [R4,#0x3C]
4FBB6C:  STR             R1, [R4,#0x40]
4FBB6E:  STRB.W          R1, [R4,#0x44]
4FBB72:  MOVW            R1, #0
4FBB76:  LDRB            R2, [R4,#0x10]
4FBB78:  MOVT            R1, #0xBF80
4FBB7C:  STR             R1, [R4,#0x48]
4FBB7E:  MOV             R1, R4
4FBB80:  STR             R0, [R4]
4FBB82:  AND.W           R0, R2, #0xF0
4FBB86:  ORR.W           R0, R0, #1
4FBB8A:  STRB            R0, [R4,#0x10]
4FBB8C:  STR.W           R5, [R1,#0xC]!; CEntity **
4FBB90:  ITT NE
4FBB92:  MOVNE           R0, R5; this
4FBB94:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FBB98:  LDR             R0, =(_ZTV28CTaskComplexEnterCarAsDriver_ptr - 0x4FBB9E)
4FBB9A:  ADD             R0, PC; _ZTV28CTaskComplexEnterCarAsDriver_ptr
4FBB9C:  B               loc_4FBC40
4FBB9E:  LDR             R0, [R5]; jumptable 004FBA9E case 709
4FBBA0:  LDR             R1, [R0,#0x34]
4FBBA2:  MOV             R0, R5
4FBBA4:  BLX             R1
4FBBA6:  MOVS            R0, #dword_60; this
4FBBA8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FBBAC:  MOV             R4, R0
4FBBAE:  LDR             R5, [R5,#0xC]
4FBBB0:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4FBBB4:  LDR             R0, =(_ZTV19CTaskSimpleCarDrive_ptr - 0x4FBBC4)
4FBBB6:  VMOV.I32        Q8, #0
4FBBBA:  ADD.W           R1, R4, #0xC
4FBBBE:  MOVS            R6, #0
4FBBC0:  ADD             R0, PC; _ZTV19CTaskSimpleCarDrive_ptr
4FBBC2:  CMP             R5, #0
4FBBC4:  VST1.32         {D16-D17}, [R1]
4FBBC8:  MOV.W           R1, #2
4FBBCC:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarDrive ...
4FBBCE:  ADD.W           R0, R0, #8
4FBBD2:  STR             R0, [R4]
4FBBD4:  STRH            R6, [R4,#0x1C]
4FBBD6:  STR.W           R6, [R4,#0x56]
4FBBDA:  STR.W           R6, [R4,#0x52]
4FBBDE:  LDRB.W          R0, [R4,#0x5C]
4FBBE2:  STRD.W          R6, R6, [R4,#0x4C]
4FBBE6:  BFI.W           R0, R1, #2, #4
4FBBEA:  MOV             R1, R4
4FBBEC:  STRB.W          R0, [R4,#0x5C]
4FBBF0:  STR.W           R5, [R1,#8]!; CEntity **
4FBBF4:  BEQ             loc_4FBC00
4FBBF6:  MOV             R0, R5; this
4FBBF8:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FBBFC:  LDRB.W          R0, [R4,#0x5C]
4FBC00:  MOV.W           R1, #0xFFFFFFFF; unsigned int
4FBC04:  AND.W           R0, R0, #0xFC
4FBC08:  STR             R1, [R4,#0x20]
4FBC0A:  STRB.W          R0, [R4,#0x5C]
4FBC0E:  STRD.W          R6, R6, [R4,#0x3C]
4FBC12:  STR             R6, [R4,#0x44]
4FBC14:  B               loc_4FBC46; jumptable 004FBA9E cases 702-708,710-713,715,716
4FBC16:  MOVS            R0, #dword_14; jumptable 004FBA9E case 714
4FBC18:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FBC1C:  MOV             R4, R0
4FBC1E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FBC22:  LDR             R0, =(_ZTV23CTaskComplexLeaveAnyCar_ptr - 0x4FBC2E)
4FBC24:  MOVS            R1, #0
4FBC26:  STR             R1, [R4,#0xC]
4FBC28:  MOVS            R1, #1; unsigned int
4FBC2A:  ADD             R0, PC; _ZTV23CTaskComplexLeaveAnyCar_ptr
4FBC2C:  STRH            R1, [R4,#0x10]
4FBC2E:  B               loc_4FBC40
4FBC30:  MOVS            R0, #(byte_9+3); jumptable 004FBA9E case 717
4FBC32:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FBC36:  MOV             R4, R0
4FBC38:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FBC3C:  LDR             R0, =(_ZTV31CTaskComplexEnterAnyCarAsDriver_ptr - 0x4FBC42)
4FBC3E:  ADD             R0, PC; _ZTV31CTaskComplexEnterAnyCarAsDriver_ptr
4FBC40:  LDR             R0, [R0]; `vtable for'CTaskComplexEnterCarAsDriver
4FBC42:  ADDS            R0, #8
4FBC44:  STR             R0, [R4]
4FBC46:  MOV             R0, R4; jumptable 004FBA9E cases 702-708,710-713,715,716
4FBC48:  POP.W           {R11}
4FBC4C:  POP             {R4-R7,PC}
4FBC4E:  MOVS            R0, #dword_34; this
4FBC50:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FBC54:  MOV             R4, R0
4FBC56:  LDR             R0, [R6,#0x14]
4FBC58:  LDR             R2, [R5,#0x14]; int
4FBC5A:  ADD.W           R1, R0, #0x30 ; '0'
4FBC5E:  CMP             R0, #0
4FBC60:  IT EQ
4FBC62:  ADDEQ           R1, R6, #4; CVector *
4FBC64:  MOV             R0, R4; this
4FBC66:  BLX             j__ZN28CTaskSimpleCreateCarAndGetInC2ERK7CVectori; CTaskSimpleCreateCarAndGetIn::CTaskSimpleCreateCarAndGetIn(CVector const&,int)
4FBC6A:  B               loc_4FBC46; jumptable 004FBA9E cases 702-708,710-713,715,716
