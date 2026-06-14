; =========================================================
; Game Engine Function: _ZN23CTaskComplexTrackEntityC2EP7CEntity7CVectorhiffh
; Address            : 0x517D00 - 0x517D6E
; =========================================================

517D00:  PUSH            {R4-R7,LR}
517D02:  ADD             R7, SP, #0xC
517D04:  PUSH.W          {R8}
517D08:  MOV             R8, R3
517D0A:  MOV             R6, R2
517D0C:  MOV             R5, R1
517D0E:  MOV             R4, R0
517D10:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
517D14:  LDR             R0, =(_ZTV23CTaskComplexTrackEntity_ptr - 0x517D20)
517D16:  MOVS            R2, #0
517D18:  LDRD.W          R1, R12, [R7,#arg_0]
517D1C:  ADD             R0, PC; _ZTV23CTaskComplexTrackEntity_ptr
517D1E:  VLDR            S0, [R7,#arg_C]
517D22:  VLDR            S2, [R7,#arg_10]
517D26:  LDR             R0, [R0]; `vtable for'CTaskComplexTrackEntity ...
517D28:  STRH            R2, [R4,#0x38]
517D2A:  STR             R6, [R4,#0x10]
517D2C:  ADDS            R0, #8
517D2E:  STRD.W          R2, R2, [R4,#0x30]
517D32:  STR             R1, [R4,#0x18]
517D34:  MOV             R1, R4
517D36:  LDR.W           LR, [R7,#arg_14]
517D3A:  LDR             R3, [R7,#arg_8]
517D3C:  STR.W           R8, [R4,#0x14]
517D40:  STR             R3, [R4,#0x20]
517D42:  VSTR            S0, [R4,#0x24]
517D46:  VSTR            S2, [R4,#0x28]
517D4A:  STRB.W          R12, [R4,#0x1C]
517D4E:  STRB.W          LR, [R4,#0x2C]
517D52:  STR             R0, [R4]
517D54:  MOV             R0, R5; this
517D56:  STR.W           R5, [R1,#0xC]!; CEntity **
517D5A:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
517D5E:  MOVS            R0, #0xBF800000
517D64:  STR             R0, [R4,#0x3C]
517D66:  MOV             R0, R4
517D68:  POP.W           {R8}
517D6C:  POP             {R4-R7,PC}
