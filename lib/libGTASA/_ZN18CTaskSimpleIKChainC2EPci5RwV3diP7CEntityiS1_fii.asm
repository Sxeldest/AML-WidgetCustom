; =========================================================
; Game Engine Function: _ZN18CTaskSimpleIKChainC2EPci5RwV3diP7CEntityiS1_fii
; Address            : 0x4EFDD0 - 0x4EFE52
; =========================================================

4EFDD0:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleIKChain::CTaskSimpleIKChain(char *, int, RwV3d, int, CEntity *, int, RwV3d, float, int, int)'
4EFDD2:  ADD             R7, SP, #0xC
4EFDD4:  PUSH.W          {R8,R9,R11}
4EFDD8:  MOV             R5, R3
4EFDDA:  MOV             R6, R2
4EFDDC:  MOV             R4, R0
4EFDDE:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EFDE2:  LDR.W           R12, =(_ZTV18CTaskSimpleIKChain_ptr - 0x4EFDEE)
4EFDE6:  LDRD.W          R0, R1, [R7,#arg_24]
4EFDEA:  ADD             R12, PC; _ZTV18CTaskSimpleIKChain_ptr
4EFDEC:  STR             R0, [R4,#8]
4EFDEE:  STR             R1, [R4,#0xC]
4EFDF0:  LDR             R2, [R7,#arg_4]
4EFDF2:  LDR             R3, [R7,#arg_0]
4EFDF4:  LDR.W           R9, [R7,#arg_14]
4EFDF8:  LDR             R1, [R7,#arg_1C]
4EFDFA:  STRH            R6, [R4,#0x18]
4EFDFC:  STR             R5, [R4,#0x1C]
4EFDFE:  MOVS            R5, #0
4EFE00:  STR             R2, [R4,#0x24]
4EFE02:  STR             R3, [R4,#0x20]
4EFE04:  LDR.W           R3, [R12]; `vtable for'CTaskSimpleIKChain ...
4EFE08:  LDR.W           LR, [R7,#arg_8]
4EFE0C:  LDR.W           R8, [R7,#arg_10]
4EFE10:  LDR             R2, [R7,#arg_18]
4EFE12:  STRH.W          LR, [R4,#0x16]
4EFE16:  STR             R5, [R4,#0x10]
4EFE18:  STRD.W          R8, R9, [R4,#0x2C]
4EFE1C:  STRD.W          R2, R1, [R4,#0x34]
4EFE20:  ADD.W           R1, R3, #8
4EFE24:  LDR             R0, [R7,#arg_C]; this
4EFE26:  STR             R1, [R4]
4EFE28:  MOV             R1, R4
4EFE2A:  VLDR            S0, [R7,#arg_20]
4EFE2E:  CMP             R0, #0
4EFE30:  STR.W           R0, [R1,#0x28]!; CEntity **
4EFE34:  VSTR            S0, [R4,#0x3C]
4EFE38:  BEQ             loc_4EFE42
4EFE3A:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4EFE3E:  MOVS            R0, #1
4EFE40:  B               loc_4EFE44
4EFE42:  MOVS            R0, #0
4EFE44:  STR             R5, [R4,#0x54]
4EFE46:  STRB.W          R0, [R4,#0x40]
4EFE4A:  MOV             R0, R4
4EFE4C:  POP.W           {R8,R9,R11}
4EFE50:  POP             {R4-R7,PC}
