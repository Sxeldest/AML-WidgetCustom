; =========================================================
; Game Engine Function: _ZN36CTaskComplexGoToCarDoorAndStandStillC2EP8CVehicleibifffi
; Address            : 0x4FF9F0 - 0x4FFA6A
; =========================================================

4FF9F0:  PUSH            {R4-R7,LR}
4FF9F2:  ADD             R7, SP, #0xC
4FF9F4:  PUSH.W          {R8}
4FF9F8:  MOV             R8, R3
4FF9FA:  MOV             R6, R2
4FF9FC:  MOV             R5, R1
4FF9FE:  MOV             R4, R0
4FFA00:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FFA04:  LDR             R2, =(_ZTV36CTaskComplexGoToCarDoorAndStandStill_ptr - 0x4FFA18)
4FFA06:  VMOV.I32        Q8, #0
4FFA0A:  VLDR            S0, [R7,#arg_C]
4FFA0E:  CMP             R5, #0
4FFA10:  VLDR            S2, [R7,#arg_8]
4FFA14:  ADD             R2, PC; _ZTV36CTaskComplexGoToCarDoorAndStandStill_ptr
4FFA16:  VLDR            S4, [R7,#arg_4]
4FFA1A:  LDR             R0, [R7,#arg_10]
4FFA1C:  STR             R6, [R4,#0x10]
4FFA1E:  STRB.W          R8, [R4,#0x14]
4FFA22:  VSTR            S4, [R4,#0x18]
4FFA26:  VSTR            S2, [R4,#0x1C]
4FFA2A:  VSTR            S0, [R4,#0x20]
4FFA2E:  STR             R0, [R4,#0x24]
4FFA30:  MOV.W           R0, #0
4FFA34:  LDR             R1, [R7,#arg_0]
4FFA36:  STRH            R0, [R4,#0x30]
4FFA38:  STR             R1, [R4,#0x44]
4FFA3A:  LDR             R1, [R2]; `vtable for'CTaskComplexGoToCarDoorAndStandStill ...
4FFA3C:  ADD.W           R2, R4, #0x34 ; '4'
4FFA40:  STRH.W          R0, [R4,#0x48]
4FFA44:  STR             R0, [R4,#0x4C]
4FFA46:  STR             R0, [R4,#0x2C]
4FFA48:  VST1.32         {D16-D17}, [R2]
4FFA4C:  STR             R0, [R4,#0x28]
4FFA4E:  ADD.W           R0, R1, #8
4FFA52:  MOV             R1, R4
4FFA54:  STR             R0, [R4]
4FFA56:  STR.W           R5, [R1,#0xC]!; CEntity **
4FFA5A:  ITT NE
4FFA5C:  MOVNE           R0, R5; this
4FFA5E:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FFA62:  MOV             R0, R4
4FFA64:  POP.W           {R8}
4FFA68:  POP             {R4-R7,PC}
