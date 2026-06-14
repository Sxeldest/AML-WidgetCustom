; =========================================================
; Game Engine Function: _ZN28CTaskComplexEnterCarAsDriverC2EP8CVehicle
; Address            : 0x4F6F70 - 0x4F6FDC
; =========================================================

4F6F70:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskComplexEnterCarAsDriver::CTaskComplexEnterCarAsDriver(CVehicle *)'
4F6F72:  ADD             R7, SP, #8
4F6F74:  MOV             R5, R1
4F6F76:  MOV             R4, R0
4F6F78:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F6F7C:  MOVS            R1, #6
4F6F7E:  LDR             R0, =(_ZTV20CTaskComplexEnterCar_ptr - 0x4F6F98)
4F6F80:  STR             R1, [R4,#0x24]
4F6F82:  MOVS            R1, #0
4F6F84:  STRH            R1, [R4,#0x28]
4F6F86:  VMOV.I32        Q8, #0
4F6F8A:  STR             R1, [R4,#0x38]
4F6F8C:  ADD.W           R2, R4, #0x14
4F6F90:  STRB.W          R1, [R4,#0x3C]
4F6F94:  ADD             R0, PC; _ZTV20CTaskComplexEnterCar_ptr
4F6F96:  STR             R1, [R4,#0x40]
4F6F98:  CMP             R5, #0
4F6F9A:  STRB.W          R1, [R4,#0x44]
4F6F9E:  LDRB            R1, [R4,#0x10]
4F6FA0:  VST1.32         {D16-D17}, [R2]
4F6FA4:  MOVW            R2, #0
4F6FA8:  AND.W           R1, R1, #0xF0
4F6FAC:  MOVT            R2, #0xBF80
4F6FB0:  LDR             R0, [R0]; `vtable for'CTaskComplexEnterCar ...
4F6FB2:  ORR.W           R1, R1, #1
4F6FB6:  STR             R2, [R4,#0x48]
4F6FB8:  STRB            R1, [R4,#0x10]
4F6FBA:  MOV             R1, R4
4F6FBC:  ADD.W           R0, R0, #8
4F6FC0:  STR             R0, [R4]
4F6FC2:  STR.W           R5, [R1,#0xC]!; CEntity **
4F6FC6:  ITT NE
4F6FC8:  MOVNE           R0, R5; this
4F6FCA:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F6FCE:  LDR             R0, =(_ZTV28CTaskComplexEnterCarAsDriver_ptr - 0x4F6FD4)
4F6FD0:  ADD             R0, PC; _ZTV28CTaskComplexEnterCarAsDriver_ptr
4F6FD2:  LDR             R0, [R0]; `vtable for'CTaskComplexEnterCarAsDriver ...
4F6FD4:  ADDS            R0, #8
4F6FD6:  STR             R0, [R4]
4F6FD8:  MOV             R0, R4
4F6FDA:  POP             {R4,R5,R7,PC}
