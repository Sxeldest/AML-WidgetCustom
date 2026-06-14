; =========================================================
; Game Engine Function: _ZN20CTaskComplexCarDrive18CreateFirstSubTaskEP4CPed
; Address            : 0x4FBC88 - 0x4FBE7C
; =========================================================

4FBC88:  PUSH            {R4-R7,LR}
4FBC8A:  ADD             R7, SP, #0xC
4FBC8C:  PUSH.W          {R11}
4FBC90:  SUB             SP, SP, #0x30
4FBC92:  MOV             R5, R0
4FBC94:  MOV             R4, R1
4FBC96:  MOV             R2, R5
4FBC98:  LDR.W           R0, [R4,#0x590]; this
4FBC9C:  LDR.W           R1, [R2,#0xC]!; CVehicle *
4FBCA0:  CMP             R1, #0
4FBCA2:  BEQ             loc_4FBD2A
4FBCA4:  CMP             R0, #0
4FBCA6:  ITT NE
4FBCA8:  LDRBNE.W        R2, [R4,#0x485]
4FBCAC:  MOVSNE.W        R2, R2,LSL#31
4FBCB0:  BNE             loc_4FBD4E
4FBCB2:  LDR.W           R0, [R1,#0x5A0]
4FBCB6:  CMP             R0, #9
4FBCB8:  BNE             loc_4FBD6C
4FBCBA:  MOVS            R0, #dword_50; this
4FBCBC:  LDRB            R6, [R5,#0x1C]
4FBCBE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FBCC2:  MOV             R4, R0
4FBCC4:  LDR             R5, [R5,#0xC]
4FBCC6:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FBCCA:  LDR             R0, =(_ZTV20CTaskComplexEnterCar_ptr - 0x4FBCD8)
4FBCCC:  MOV             R1, R4
4FBCCE:  LDRB            R2, [R4,#0x10]
4FBCD0:  VMOV.I32        Q8, #0
4FBCD4:  ADD             R0, PC; _ZTV20CTaskComplexEnterCar_ptr
4FBCD6:  CMP             R6, #0
4FBCD8:  LDR             R0, [R0]; `vtable for'CTaskComplexEnterCar ...
4FBCDA:  ADD.W           R0, R0, #8
4FBCDE:  STR             R0, [R4]
4FBCE0:  STR.W           R5, [R1,#0xC]!; CEntity **
4FBCE4:  BIC.W           R0, R2, #0xF
4FBCE8:  BEQ.W           loc_4FBE1E
4FBCEC:  ORR.W           R0, R0, #1
4FBCF0:  STRB            R0, [R4,#0x10]
4FBCF2:  MOVS            R0, #6
4FBCF4:  CMP             R5, #0
4FBCF6:  STR             R0, [R4,#0x24]
4FBCF8:  MOV.W           R0, #0
4FBCFC:  STRH            R0, [R4,#0x28]
4FBCFE:  STR             R0, [R4,#0x38]
4FBD00:  STRB.W          R0, [R4,#0x3C]
4FBD04:  STR             R0, [R4,#0x40]
4FBD06:  STRB.W          R0, [R4,#0x44]
4FBD0A:  MOV             R0, #0xBF800000
4FBD12:  STR             R0, [R4,#0x48]
4FBD14:  ADD.W           R0, R4, #0x14
4FBD18:  VST1.32         {D16-D17}, [R0]
4FBD1C:  ITT NE
4FBD1E:  MOVNE           R0, R5; this
4FBD20:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FBD24:  LDR             R0, =(_ZTV28CTaskComplexEnterCarAsDriver_ptr - 0x4FBD2A)
4FBD26:  ADD             R0, PC; _ZTV28CTaskComplexEnterCarAsDriver_ptr
4FBD28:  B               loc_4FBE54
4FBD2A:  CMP             R0, #0
4FBD2C:  ITT NE
4FBD2E:  LDRBNE.W        R1, [R4,#0x485]
4FBD32:  MOVSNE.W        R1, R1,LSL#31; unsigned int
4FBD36:  BNE             loc_4FBD80
4FBD38:  LDRB            R0, [R5,#0x1C]
4FBD3A:  CBZ             R0, loc_4FBDA4
4FBD3C:  MOVS            R0, #(byte_9+3); this
4FBD3E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FBD42:  MOV             R4, R0
4FBD44:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FBD48:  LDR             R0, =(_ZTV31CTaskComplexEnterAnyCarAsDriver_ptr - 0x4FBD4E)
4FBD4A:  ADD             R0, PC; _ZTV31CTaskComplexEnterAnyCarAsDriver_ptr
4FBD4C:  B               loc_4FBE54
4FBD4E:  CMP             R0, R1
4FBD50:  BEQ             loc_4FBDA8
4FBD52:  MOVS            R0, #dword_14; this
4FBD54:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FBD58:  MOV             R4, R0
4FBD5A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FBD5E:  LDR             R0, =(_ZTV23CTaskComplexLeaveAnyCar_ptr - 0x4FBD6A)
4FBD60:  MOVS            R1, #0
4FBD62:  STR             R1, [R4,#0xC]
4FBD64:  MOVS            R1, #1
4FBD66:  ADD             R0, PC; _ZTV23CTaskComplexLeaveAnyCar_ptr
4FBD68:  STRH            R1, [R4,#0x10]
4FBD6A:  B               loc_4FBE54
4FBD6C:  MOV             R0, SP; this
4FBD6E:  BLX             j__ZN19CUpsideDownCarCheck15IsCarUpsideDownEPK8CVehicle; CUpsideDownCarCheck::IsCarUpsideDown(CVehicle const*)
4FBD72:  LDRB            R2, [R5,#0x1C]
4FBD74:  CMP             R0, #0
4FBD76:  BEQ             loc_4FBE5C
4FBD78:  CBZ             R2, loc_4FBDA4
4FBD7A:  MOVW            R1, #0x2CD
4FBD7E:  B               loc_4FBE68
4FBD80:  MOV             R1, R2; CEntity **
4FBD82:  STR             R0, [R5,#0xC]
4FBD84:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FBD88:  LDR             R0, [R5]
4FBD8A:  LDR             R1, [R0,#0x34]
4FBD8C:  MOV             R0, R5
4FBD8E:  BLX             R1
4FBD90:  MOVS            R0, #dword_60; this
4FBD92:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FBD96:  MOV             R4, R0
4FBD98:  LDR             R5, [R5,#0xC]
4FBD9A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4FBD9E:  LDR             R0, =(_ZTV19CTaskSimpleCarDrive_ptr - 0x4FBDA4)
4FBDA0:  ADD             R0, PC; _ZTV19CTaskSimpleCarDrive_ptr
4FBDA2:  B               loc_4FBDC2
4FBDA4:  MOVS            R4, #0
4FBDA6:  B               loc_4FBE72
4FBDA8:  LDR             R0, [R5]
4FBDAA:  LDR             R1, [R0,#0x34]
4FBDAC:  MOV             R0, R5
4FBDAE:  BLX             R1
4FBDB0:  MOVS            R0, #dword_60; this
4FBDB2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FBDB6:  MOV             R4, R0
4FBDB8:  LDR             R5, [R5,#0xC]
4FBDBA:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4FBDBE:  LDR             R0, =(_ZTV19CTaskSimpleCarDrive_ptr - 0x4FBDC4)
4FBDC0:  ADD             R0, PC; _ZTV19CTaskSimpleCarDrive_ptr
4FBDC2:  VMOV.I32        Q8, #0
4FBDC6:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarDrive ...
4FBDC8:  ADD.W           R1, R4, #0xC
4FBDCC:  MOVS            R6, #0
4FBDCE:  ADDS            R0, #8
4FBDD0:  CMP             R5, #0
4FBDD2:  VST1.32         {D16-D17}, [R1]
4FBDD6:  MOV.W           R1, #2
4FBDDA:  STR             R0, [R4]
4FBDDC:  STRH            R6, [R4,#0x1C]
4FBDDE:  STR.W           R6, [R4,#0x56]
4FBDE2:  STR.W           R6, [R4,#0x52]
4FBDE6:  LDRB.W          R0, [R4,#0x5C]
4FBDEA:  STR             R6, [R4,#0x4C]
4FBDEC:  BFI.W           R0, R1, #2, #4
4FBDF0:  MOV             R1, R4
4FBDF2:  STR             R6, [R4,#0x50]
4FBDF4:  STRB.W          R0, [R4,#0x5C]
4FBDF8:  STR.W           R5, [R1,#8]!; CEntity **
4FBDFC:  BEQ             loc_4FBE08
4FBDFE:  MOV             R0, R5; this
4FBE00:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FBE04:  LDRB.W          R0, [R4,#0x5C]
4FBE08:  MOV.W           R1, #0xFFFFFFFF
4FBE0C:  AND.W           R0, R0, #0xFC
4FBE10:  STR             R1, [R4,#0x20]
4FBE12:  STRB.W          R0, [R4,#0x5C]
4FBE16:  STR             R6, [R4,#0x3C]
4FBE18:  STR             R6, [R4,#0x40]
4FBE1A:  STR             R6, [R4,#0x44]
4FBE1C:  B               loc_4FBE72
4FBE1E:  STRB            R0, [R4,#0x10]
4FBE20:  MOVS            R0, #6
4FBE22:  STR             R0, [R4,#0x24]
4FBE24:  MOVS            R0, #0
4FBE26:  MOVS            R6, #0
4FBE28:  MOVT            R0, #0xBF80
4FBE2C:  STRH            R6, [R4,#0x28]
4FBE2E:  CMP             R5, #0
4FBE30:  STR             R6, [R4,#0x38]
4FBE32:  STRB.W          R6, [R4,#0x3C]
4FBE36:  STR             R6, [R4,#0x40]
4FBE38:  STRB.W          R6, [R4,#0x44]
4FBE3C:  STR             R0, [R4,#0x48]
4FBE3E:  ADD.W           R0, R4, #0x14
4FBE42:  VST1.32         {D16-D17}, [R0]
4FBE46:  ITT NE
4FBE48:  MOVNE           R0, R5; this
4FBE4A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FBE4E:  LDR             R0, =(_ZTV31CTaskComplexEnterCarAsPassenger_ptr - 0x4FBE56)
4FBE50:  STR             R6, [R4,#0x1C]
4FBE52:  ADD             R0, PC; _ZTV31CTaskComplexEnterCarAsPassenger_ptr
4FBE54:  LDR             R0, [R0]; `vtable for'CTaskComplexEnterCarAsDriver
4FBE56:  ADDS            R0, #8
4FBE58:  STR             R0, [R4]
4FBE5A:  B               loc_4FBE72
4FBE5C:  MOV.W           R1, #0x2BC
4FBE60:  CMP             R2, #0
4FBE62:  IT NE
4FBE64:  MOVWNE          R1, #0x2BD; int
4FBE68:  MOV             R0, R5; this
4FBE6A:  MOV             R2, R4; CPed *
4FBE6C:  BLX             j__ZNK20CTaskComplexCarDrive13CreateSubTaskEiP4CPed; CTaskComplexCarDrive::CreateSubTask(int,CPed *)
4FBE70:  MOV             R4, R0
4FBE72:  MOV             R0, R4
4FBE74:  ADD             SP, SP, #0x30 ; '0'
4FBE76:  POP.W           {R11}
4FBE7A:  POP             {R4-R7,PC}
