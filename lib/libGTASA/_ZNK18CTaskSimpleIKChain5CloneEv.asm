; =========================================================
; Game Engine Function: _ZNK18CTaskSimpleIKChain5CloneEv
; Address            : 0x4EFEE4 - 0x4EFF98
; =========================================================

4EFEE4:  PUSH            {R4-R7,LR}
4EFEE6:  ADD             R7, SP, #0xC
4EFEE8:  PUSH.W          {R8-R11}
4EFEEC:  SUB             SP, SP, #4
4EFEEE:  VPUSH           {D8-D9}
4EFEF2:  SUB             SP, SP, #0x10
4EFEF4:  MOV             R4, R0
4EFEF6:  MOVS            R0, #dword_58; this
4EFEF8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EFEFC:  MOV             R5, R0
4EFEFE:  LDRD.W          R8, R9, [R4,#8]
4EFF02:  LDR.W           R0, [R4,#0x16]
4EFF06:  STR             R0, [SP,#0x40+var_34]
4EFF08:  LDRD.W          R11, R10, [R4,#0x1C]
4EFF0C:  LDR             R0, [R4,#0x24]
4EFF0E:  STR             R0, [SP,#0x40+var_3C]
4EFF10:  LDR             R0, [R4,#0x3C]
4EFF12:  LDR             R6, [R4,#0x28]
4EFF14:  STR             R0, [SP,#0x40+var_38]
4EFF16:  ADD.W           R0, R4, #0x2C ; ','
4EFF1A:  VLD1.32         {D8-D9}, [R0]
4EFF1E:  MOV             R0, R5; this
4EFF20:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EFF24:  ADD.W           R0, R5, #0x2C ; ','
4EFF28:  CMP             R6, #0
4EFF2A:  VST1.32         {D8-D9}, [R0]
4EFF2E:  STRD.W          R8, R9, [R5,#8]
4EFF32:  MOV.W           R8, #0
4EFF36:  STR.W           R8, [R5,#0x10]
4EFF3A:  STRD.W          R11, R10, [R5,#0x1C]
4EFF3E:  LDR             R0, =(_ZTV18CTaskSimpleIKChain_ptr - 0x4EFF48)
4EFF40:  LDR             R1, [SP,#0x40+var_3C]
4EFF42:  STR             R1, [R5,#0x24]
4EFF44:  ADD             R0, PC; _ZTV18CTaskSimpleIKChain_ptr
4EFF46:  LDR             R1, [SP,#0x40+var_34]
4EFF48:  STR.W           R1, [R5,#0x16]
4EFF4C:  LDR             R0, [R0]; `vtable for'CTaskSimpleIKChain ...
4EFF4E:  LDR             R1, [SP,#0x40+var_38]
4EFF50:  STR             R1, [R5,#0x3C]
4EFF52:  MOV             R1, R5
4EFF54:  ADD.W           R0, R0, #8
4EFF58:  STR             R0, [R5]
4EFF5A:  STR.W           R6, [R1,#0x28]!; CEntity **
4EFF5E:  BEQ             loc_4EFF6A
4EFF60:  MOV             R0, R6; this
4EFF62:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4EFF66:  MOVS            R0, #1
4EFF68:  B               loc_4EFF6C
4EFF6A:  MOVS            R0, #0
4EFF6C:  STR.W           R8, [R5,#0x54]
4EFF70:  STRB.W          R0, [R5,#0x40]
4EFF74:  LDR             R0, [R4,#0x10]
4EFF76:  CBZ             R0, loc_4EFF88
4EFF78:  LDR             R0, [R4,#0x44]
4EFF7A:  STR             R0, [R5,#0x44]
4EFF7C:  LDR             R0, [R4,#0x48]
4EFF7E:  STR             R0, [R5,#0x48]
4EFF80:  LDR             R0, [R4,#0x4C]
4EFF82:  STR             R0, [R5,#0x4C]
4EFF84:  LDR             R0, [R4,#0x50]
4EFF86:  STR             R0, [R5,#0x50]
4EFF88:  MOV             R0, R5
4EFF8A:  ADD             SP, SP, #0x10
4EFF8C:  VPOP            {D8-D9}
4EFF90:  ADD             SP, SP, #4
4EFF92:  POP.W           {R8-R11}
4EFF96:  POP             {R4-R7,PC}
