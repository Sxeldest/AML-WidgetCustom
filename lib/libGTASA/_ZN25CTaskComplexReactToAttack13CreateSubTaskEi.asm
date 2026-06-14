; =========================================================
; Game Engine Function: _ZN25CTaskComplexReactToAttack13CreateSubTaskEi
; Address            : 0x4DFEFC - 0x4DFFF6
; =========================================================

4DFEFC:  PUSH            {R4-R7,LR}
4DFEFE:  ADD             R7, SP, #0xC
4DFF00:  PUSH.W          {R8,R9,R11}
4DFF04:  VPUSH           {D8}
4DFF08:  MOV             R5, R0
4DFF0A:  CMP             R1, #0xC8
4DFF0C:  BEQ             loc_4DFF38
4DFF0E:  CMP.W           R1, #0x3F0
4DFF12:  BEQ             loc_4DFF50
4DFF14:  CMP             R1, #0xD0
4DFF16:  BNE             loc_4DFFAE
4DFF18:  MOVS            R0, #off_18; this
4DFF1A:  LDR             R5, [R5,#0x1C]
4DFF1C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4DFF20:  CMP             R5, #2
4DFF22:  MOV.W           R2, #0
4DFF26:  ITE EQ
4DFF28:  MOVEQ           R1, #0x1A
4DFF2A:  MOVNE           R1, #0x14
4DFF2C:  MOV.W           R3, #0x3E8
4DFF30:  MOV             R4, R0
4DFF32:  BLX             j__ZN24CTaskComplexFallAndGetUpC2E11AnimationId12AssocGroupIdi; CTaskComplexFallAndGetUp::CTaskComplexFallAndGetUp(AnimationId,AssocGroupId,int)
4DFF36:  B               loc_4DFFEA
4DFF38:  MOVS            R0, #byte_8; this
4DFF3A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4DFF3E:  MOV             R4, R0
4DFF40:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4DFF44:  LDR             R0, =(_ZTV15CTaskSimpleNone_ptr - 0x4DFF4A)
4DFF46:  ADD             R0, PC; _ZTV15CTaskSimpleNone_ptr
4DFF48:  LDR             R0, [R0]; `vtable for'CTaskSimpleNone ...
4DFF4A:  ADDS            R0, #8
4DFF4C:  STR             R0, [R4]
4DFF4E:  B               loc_4DFFEA
4DFF50:  LDR             R0, [R5,#0x14]
4DFF52:  CBZ             R0, loc_4DFFB2
4DFF54:  LDRB.W          R0, [R0,#0x3A]
4DFF58:  AND.W           R0, R0, #7
4DFF5C:  CMP             R0, #3
4DFF5E:  BNE             loc_4DFFB2
4DFF60:  MOVS            R0, #word_28; this
4DFF62:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4DFF66:  LDR             R6, [R5,#0x14]
4DFF68:  MOV             R4, R0
4DFF6A:  LDRD.W          R8, R9, [R5,#0x1C]
4DFF6E:  VLDR            S16, [R5,#0x18]
4DFF72:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4DFF76:  MOVS            R1, #0
4DFF78:  LDR             R0, =(_ZTV16CTaskSimpleBeHit_ptr - 0x4DFF84)
4DFF7A:  STRH            R1, [R4,#0xC]
4DFF7C:  VCVT.S32.F32    S0, S16
4DFF80:  ADD             R0, PC; _ZTV16CTaskSimpleBeHit_ptr
4DFF82:  MOVS            R2, #0xBF
4DFF84:  STRD.W          R2, R1, [R4,#0x10]
4DFF88:  CMP             R6, #0
4DFF8A:  LDR             R0, [R0]; `vtable for'CTaskSimpleBeHit ...
4DFF8C:  STR.W           R9, [R4,#0x18]
4DFF90:  STRD.W          R8, R1, [R4,#0x20]
4DFF94:  MOV             R1, R4
4DFF96:  ADD.W           R0, R0, #8
4DFF9A:  STR             R0, [R4]
4DFF9C:  VSTR            S0, [R4,#0x1C]
4DFFA0:  STR.W           R6, [R1,#8]!; CEntity **
4DFFA4:  BEQ             loc_4DFFEA
4DFFA6:  MOV             R0, R6; this
4DFFA8:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4DFFAC:  B               loc_4DFFEA
4DFFAE:  MOVS            R4, #0
4DFFB0:  B               loc_4DFFEA
4DFFB2:  MOVS            R0, #word_28; this
4DFFB4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4DFFB8:  LDRD.W          R8, R6, [R5,#0x1C]
4DFFBC:  MOV             R4, R0
4DFFBE:  VLDR            S16, [R5,#0x18]
4DFFC2:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4DFFC6:  MOVS            R1, #0
4DFFC8:  LDR             R0, =(_ZTV16CTaskSimpleBeHit_ptr - 0x4DFFD8)
4DFFCA:  STR             R1, [R4,#8]
4DFFCC:  MOVS            R2, #0xBF
4DFFCE:  STRH            R1, [R4,#0xC]
4DFFD0:  VCVT.S32.F32    S0, S16
4DFFD4:  ADD             R0, PC; _ZTV16CTaskSimpleBeHit_ptr
4DFFD6:  STRD.W          R2, R1, [R4,#0x10]
4DFFDA:  STR             R6, [R4,#0x18]
4DFFDC:  LDR             R0, [R0]; `vtable for'CTaskSimpleBeHit ...
4DFFDE:  STRD.W          R8, R1, [R4,#0x20]
4DFFE2:  ADDS            R0, #8
4DFFE4:  STR             R0, [R4]
4DFFE6:  VSTR            S0, [R4,#0x1C]
4DFFEA:  MOV             R0, R4
4DFFEC:  VPOP            {D8}
4DFFF0:  POP.W           {R8,R9,R11}
4DFFF4:  POP             {R4-R7,PC}
