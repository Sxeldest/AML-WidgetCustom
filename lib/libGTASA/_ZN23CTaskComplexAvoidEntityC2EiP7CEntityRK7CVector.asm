; =========================================================
; Game Engine Function: _ZN23CTaskComplexAvoidEntityC2EiP7CEntityRK7CVector
; Address            : 0x5229F4 - 0x522A60
; =========================================================

5229F4:  PUSH            {R4-R7,LR}
5229F6:  ADD             R7, SP, #0xC
5229F8:  PUSH.W          {R8}
5229FC:  MOV             R6, R3
5229FE:  MOV             R5, R2
522A00:  MOV             R8, R1
522A02:  MOV             R4, R0
522A04:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
522A08:  LDR             R0, =(_ZTV23CTaskComplexAvoidEntity_ptr - 0x522A16)
522A0A:  MOV             R1, R4
522A0C:  STR.W           R8, [R4,#0x10]
522A10:  CMP             R5, #0
522A12:  ADD             R0, PC; _ZTV23CTaskComplexAvoidEntity_ptr
522A14:  LDR             R0, [R0]; `vtable for'CTaskComplexAvoidEntity ...
522A16:  ADD.W           R0, R0, #8
522A1A:  STR             R0, [R4]
522A1C:  STR.W           R5, [R1,#0xC]!; CEntity **
522A20:  VLDR            D16, [R6]
522A24:  LDR             R0, [R6,#8]
522A26:  STR             R0, [R4,#0x28]
522A28:  VSTR            D16, [R4,#0x20]
522A2C:  VLDR            D16, [R6]
522A30:  LDR             R0, [R6,#8]
522A32:  STR             R0, [R4,#0x34]
522A34:  MOV.W           R0, #0
522A38:  STRH.W          R0, [R4,#0x4C]
522A3C:  VSTR            D16, [R4,#0x2C]
522A40:  LDRB.W          R2, [R4,#0x50]
522A44:  STRD.W          R0, R0, [R4,#0x44]
522A48:  AND.W           R0, R2, #0xFE
522A4C:  STRB.W          R0, [R4,#0x50]
522A50:  ITT NE
522A52:  MOVNE           R0, R5; this
522A54:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
522A58:  MOV             R0, R4
522A5A:  POP.W           {R8}
522A5E:  POP             {R4-R7,PC}
