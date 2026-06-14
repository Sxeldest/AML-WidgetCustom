; =========================================================
; Game Engine Function: _ZNK21CTaskSimpleHoldEntity5CloneEv
; Address            : 0x543BE4 - 0x543D00
; =========================================================

543BE4:  PUSH            {R4-R7,LR}
543BE6:  ADD             R7, SP, #0xC
543BE8:  PUSH.W          {R8-R11}
543BEC:  SUB             SP, SP, #4
543BEE:  MOV             R5, R0
543BF0:  MOVS            R0, #off_3C; this
543BF2:  LDR             R6, [R5,#0x30]
543BF4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
543BF8:  LDRB.W          R11, [R5,#0x19]
543BFC:  ADD.W           R8, R5, #0xC
543C00:  LDRB.W          R10, [R5,#0x18]
543C04:  MOV             R4, R0
543C06:  LDR.W           R9, [R5,#8]
543C0A:  CMP             R6, #0
543C0C:  BEQ             loc_543C90
543C0E:  LDR             R0, [R5,#0x28]
543C10:  STR             R0, [SP,#0x20+var_20]
543C12:  MOV             R0, R4; this
543C14:  LDRD.W          R6, R5, [R5,#0x2C]
543C18:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
543C1C:  LDR             R0, =(_ZTV21CTaskSimpleHoldEntity_ptr - 0x543C2A)
543C1E:  MOVS            R1, #0
543C20:  MOVS            R2, #0xBF
543C22:  STRB.W          R10, [R4,#0x18]
543C26:  ADD             R0, PC; _ZTV21CTaskSimpleHoldEntity_ptr
543C28:  STRD.W          R1, R1, [R4,#0xC]
543C2C:  STR             R1, [R4,#0x14]
543C2E:  CMP.W           R9, #0
543C32:  LDR             R0, [R0]; `vtable for'CTaskSimpleHoldEntity ...
543C34:  STRB.W          R11, [R4,#0x19]
543C38:  STRD.W          R1, R2, [R4,#0x1C]
543C3C:  MOV.W           R2, #0x100
543C40:  STR             R1, [R4,#0x24]
543C42:  ADD.W           R0, R0, #8
543C46:  STRH            R2, [R4,#0x34]
543C48:  STRB.W          R1, [R4,#0x36]
543C4C:  STR             R1, [R4,#0x38]
543C4E:  MOV             R1, R4
543C50:  STR             R0, [R4]
543C52:  STR.W           R9, [R1,#8]!; CEntity **
543C56:  VLDR            D16, [R8]
543C5A:  LDR.W           R0, [R8,#8]
543C5E:  STR             R0, [R4,#0x14]
543C60:  VSTR            D16, [R4,#0xC]
543C64:  BEQ             loc_543C78
543C66:  LDR.W           R0, [R9,#0x1C]
543C6A:  ORR.W           R0, R0, #0x400
543C6E:  STR.W           R0, [R9,#0x1C]
543C72:  LDR             R0, [R1]; this
543C74:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
543C78:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x543C80)
543C7A:  STR             R6, [R4,#0x2C]
543C7C:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
543C7E:  LDR             R1, [SP,#0x20+var_20]; int
543C80:  STR             R1, [R4,#0x28]
543C82:  LDR             R0, [R0]; CAnimManager::ms_aAnimBlocks ...
543C84:  STR             R5, [R4,#0x30]
543C86:  SUBS            R0, R6, R0
543C88:  ASRS            R0, R0, #5; this
543C8A:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
543C8E:  B               loc_543CF6
543C90:  MOV             R0, R4; this
543C92:  LDRD.W          R6, R5, [R5,#0x20]
543C96:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
543C9A:  LDR             R0, =(_ZTV21CTaskSimpleHoldEntity_ptr - 0x543CAA)
543C9C:  MOVS            R1, #0
543C9E:  MOV.W           R2, #0x100
543CA2:  STRB.W          R10, [R4,#0x18]
543CA6:  ADD             R0, PC; _ZTV21CTaskSimpleHoldEntity_ptr
543CA8:  STRD.W          R1, R1, [R4,#0xC]
543CAC:  STR             R1, [R4,#0x14]
543CAE:  CMP.W           R9, #0
543CB2:  LDR             R0, [R0]; `vtable for'CTaskSimpleHoldEntity ...
543CB4:  STRB.W          R11, [R4,#0x19]
543CB8:  STRD.W          R6, R5, [R4,#0x20]
543CBC:  ADD.W           R0, R0, #8
543CC0:  STRD.W          R1, R1, [R4,#0x2C]
543CC4:  STRH            R2, [R4,#0x34]
543CC6:  STRB.W          R1, [R4,#0x36]
543CCA:  STR             R1, [R4,#0x38]
543CCC:  MOV             R1, R4
543CCE:  STR             R0, [R4]
543CD0:  STR.W           R9, [R1,#8]!; CEntity **
543CD4:  VLDR            D16, [R8]
543CD8:  LDR.W           R0, [R8,#8]
543CDC:  STR             R0, [R4,#0x14]
543CDE:  VSTR            D16, [R4,#0xC]
543CE2:  BEQ             loc_543CF6
543CE4:  LDR.W           R0, [R9,#0x1C]
543CE8:  ORR.W           R0, R0, #0x400
543CEC:  STR.W           R0, [R9,#0x1C]
543CF0:  LDR             R0, [R1]; this
543CF2:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
543CF6:  MOV             R0, R4
543CF8:  ADD             SP, SP, #4
543CFA:  POP.W           {R8-R11}
543CFE:  POP             {R4-R7,PC}
