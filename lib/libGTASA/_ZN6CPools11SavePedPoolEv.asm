; =========================================================
; Game Engine Function: _ZN6CPools11SavePedPoolEv
; Address            : 0x488F24 - 0x4890E2
; =========================================================

488F24:  PUSH            {R4-R7,LR}
488F26:  ADD             R7, SP, #0xC
488F28:  PUSH.W          {R8-R11}
488F2C:  SUB             SP, SP, #0x24
488F2E:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x488F36)
488F30:  LDR             R1, =(__stack_chk_guard_ptr - 0x488F38)
488F32:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
488F34:  ADD             R1, PC; __stack_chk_guard_ptr
488F36:  LDR             R0, [R0]; CPools::ms_pPedPool ...
488F38:  LDR             R1, [R1]; __stack_chk_guard
488F3A:  LDR.W           R12, [R0]; CPools::ms_pPedPool
488F3E:  LDR             R1, [R1]
488F40:  STR             R1, [SP,#0x40+var_20]
488F42:  LDR.W           R9, [R12,#8]
488F46:  CMP.W           R9, #0
488F4A:  BEQ.W           loc_4890AC
488F4E:  LDR             R1, =(IsMissionSave_ptr - 0x488F5C)
488F50:  MOVS            R3, #0
488F52:  MOVS            R6, #0
488F54:  MOV.W           R8, #0
488F58:  ADD             R1, PC; IsMissionSave_ptr
488F5A:  LDR             R2, [R1]; IsMissionSave
488F5C:  LDR.W           R1, [R12,#4]
488F60:  LDRB            R0, [R2]
488F62:  LDRSB           R4, [R1,R6]
488F64:  CMP             R4, #0
488F66:  BLT             loc_488F96
488F68:  LDR.W           R4, [R12]
488F6C:  ADDS            R4, R4, R3
488F6E:  BEQ             loc_488F96
488F70:  LDR.W           R5, [R4,#0x484]
488F74:  LDR.W           R4, [R4,#0x59C]
488F78:  LSLS            R5, R5, #0x17
488F7A:  BPL             loc_488F80
488F7C:  CBZ             R4, loc_488F80
488F7E:  CBZ             R0, loc_488F96
488F80:  CMP             R4, #0
488F82:  MOV.W           R5, #0
488F86:  IT EQ
488F88:  MOVEQ           R5, #1
488F8A:  CMP             R0, #0
488F8C:  MOV             R2, R0
488F8E:  IT NE
488F90:  MOVNE           R2, #1
488F92:  ORRS            R2, R5
488F94:  ADD             R8, R2
488F96:  ADDS            R6, #1
488F98:  ADDW            R3, R3, #0x7CC
488F9C:  CMP             R9, R6
488F9E:  BNE             loc_488F62
488FA0:  MOVS            R0, #4; byte_count
488FA2:  BLX             malloc
488FA6:  MOV             R4, R0
488FA8:  MOVS            R1, #byte_4; void *
488FAA:  STR.W           R8, [R4]
488FAE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
488FB2:  MOV             R0, R4; p
488FB4:  BLX             free
488FB8:  CMP.W           R9, #0
488FBC:  BEQ.W           loc_4890C6
488FC0:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x488FCC)
488FC2:  MOVS            R6, #0
488FC4:  MOV.W           R8, #0
488FC8:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
488FCA:  LDR             R2, [R0]; CPools::ms_pPedPool ...
488FCC:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x488FD2)
488FCE:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
488FD0:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
488FD2:  STR             R0, [SP,#0x40+var_3C]
488FD4:  LDR             R0, =(IsMissionSave_ptr - 0x488FDA)
488FD6:  ADD             R0, PC; IsMissionSave_ptr
488FD8:  LDR             R0, [R0]; IsMissionSave
488FDA:  STR             R0, [SP,#0x40+var_40]
488FDC:  STRD.W          R2, R9, [SP,#0x40+var_38]
488FE0:  LDR             R0, [R2]; CPools::ms_pPedPool
488FE2:  LDR             R1, [R0,#4]
488FE4:  LDRSB.W         R1, [R1,R8]
488FE8:  CMP             R1, #0
488FEA:  BLT             loc_48909E
488FEC:  LDR.W           R11, [R0]
488FF0:  ADDS.W          R5, R11, R6
488FF4:  BEQ             loc_48909E
488FF6:  LDR.W           R1, [R5,#0x484]
488FFA:  LDR.W           R0, [R5,#0x59C]
488FFE:  LSLS            R1, R1, #0x17; CPed *
489000:  BMI             loc_489004
489002:  CBZ             R0, loc_48900E
489004:  CBZ             R0, loc_48900E
489006:  LDR             R0, [SP,#0x40+var_40]
489008:  LDRB            R0, [R0]
48900A:  CMP             R0, #0
48900C:  BEQ             loc_48909E
48900E:  MOV             R0, R5; this
489010:  BLX             j__ZN6CPools9GetPedRefEP4CPed; CPools::GetPedRef(CPed *)
489014:  MOV             R10, R0
489016:  LDR.W           R0, [R5,#0x59C]
48901A:  STR             R0, [SP,#0x40+var_30]
48901C:  MOVS            R0, #4; byte_count
48901E:  LDRSH.W         R9, [R5,#0x26]
489022:  BLX             malloc
489026:  MOV             R4, R0
489028:  MOVS            R1, #byte_4; void *
48902A:  STR.W           R10, [R4]
48902E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489032:  MOV             R0, R4; p
489034:  BLX             free
489038:  MOVS            R0, #4; byte_count
48903A:  BLX             malloc
48903E:  MOV             R4, R0
489040:  MOVS            R1, #byte_4; void *
489042:  STR.W           R9, [R4]
489046:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48904A:  MOV             R0, R4; p
48904C:  BLX             free
489050:  MOVS            R0, #4; byte_count
489052:  BLX             malloc
489056:  MOV             R4, R0
489058:  LDR             R0, [SP,#0x40+var_30]
48905A:  STR             R0, [R4]
48905C:  MOV             R0, R4; this
48905E:  MOVS            R1, #byte_4; void *
489060:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489064:  MOV             R0, R4; p
489066:  BLX             free
48906A:  SUB.W           R0, R9, #0x122
48906E:  CMP             R0, #9
489070:  BHI             loc_489090
489072:  LDR             R0, [SP,#0x40+var_3C]
489074:  SUB.W           R4, R7, #-var_29
489078:  MOVS            R2, #9; size_t
48907A:  LDR.W           R0, [R0,R9,LSL#2]
48907E:  ADD.W           R1, R0, #8; char *
489082:  MOV             R0, R4; char *
489084:  BLX             strncpy
489088:  MOV             R0, R4; this
48908A:  MOVS            R1, #byte_9; void *
48908C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489090:  LDR.W           R0, [R11,R6]
489094:  LDR             R1, [R0,#0x64]
489096:  MOV             R0, R5
489098:  BLX             R1
48909A:  LDRD.W          R2, R9, [SP,#0x40+var_38]
48909E:  ADD.W           R8, R8, #1
4890A2:  ADDW            R6, R6, #0x7CC
4890A6:  CMP             R9, R8
4890A8:  BNE             loc_488FE0
4890AA:  B               loc_4890C6
4890AC:  MOVS            R0, #4; byte_count
4890AE:  BLX             malloc
4890B2:  MOV             R4, R0
4890B4:  MOVS            R0, #0
4890B6:  STR             R0, [R4]
4890B8:  MOV             R0, R4; this
4890BA:  MOVS            R1, #byte_4; void *
4890BC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4890C0:  MOV             R0, R4; p
4890C2:  BLX             free
4890C6:  LDR             R0, =(__stack_chk_guard_ptr - 0x4890CE)
4890C8:  LDR             R1, [SP,#0x40+var_20]
4890CA:  ADD             R0, PC; __stack_chk_guard_ptr
4890CC:  LDR             R0, [R0]; __stack_chk_guard
4890CE:  LDR             R0, [R0]
4890D0:  SUBS            R0, R0, R1
4890D2:  ITTTT EQ
4890D4:  MOVEQ           R0, #1
4890D6:  ADDEQ           SP, SP, #0x24 ; '$'
4890D8:  POPEQ.W         {R8-R11}
4890DC:  POPEQ           {R4-R7,PC}
4890DE:  BLX             __stack_chk_fail
