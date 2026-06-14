; =========================================================
; Game Engine Function: _ZN9CPlantMgr22_ColEntityCache_UpdateERK7CVectorh
; Address            : 0x2CDDA0 - 0x2CE036
; =========================================================

2CDDA0:  PUSH            {R4-R7,LR}
2CDDA2:  ADD             R7, SP, #0xC
2CDDA4:  PUSH.W          {R8-R11}
2CDDA8:  SUB             SP, SP, #4
2CDDAA:  VPUSH           {D8-D12}
2CDDAE:  SUB             SP, SP, #0x28
2CDDB0:  MOV             R4, R0
2CDDB2:  LDR             R0, =(_ZN9CPlantMgr21m_CloseColEntListHeadE_ptr - 0x2CDDBA)
2CDDB4:  CMP             R1, #0
2CDDB6:  ADD             R0, PC; _ZN9CPlantMgr21m_CloseColEntListHeadE_ptr
2CDDB8:  LDR             R0, [R0]; CPlantMgr::m_CloseColEntListHead ...
2CDDBA:  LDR             R5, [R0]; CPlantMgr::m_CloseColEntListHead
2CDDBC:  BEQ             loc_2CDDD8
2CDDBE:  CMP             R5, #0
2CDDC0:  BEQ.W           loc_2CDF0E
2CDDC4:  LDR             R0, [R5]
2CDDC6:  LDR             R4, [R5,#0xC]
2CDDC8:  CBNZ            R0, loc_2CDDD0
2CDDCA:  MOV             R0, R5; this
2CDDCC:  BLX             j__ZN17CPlantColEntEntry12ReleaseEntryEv; CPlantColEntEntry::ReleaseEntry(void)
2CDDD0:  CMP             R4, #0
2CDDD2:  MOV             R5, R4
2CDDD4:  BNE             loc_2CDDC4
2CDDD6:  B               loc_2CDF0E
2CDDD8:  CBZ             R5, loc_2CDE1A
2CDDDA:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x2CDDE4)
2CDDDC:  VLDR            S16, =115600.0
2CDDE0:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
2CDDE2:  LDR.W           R8, [R0]; CGame::currArea ...
2CDDE6:  MOV             R6, R5
2CDDE8:  LDR             R0, [R6]
2CDDEA:  LDR             R5, [R6,#0xC]
2CDDEC:  CBZ             R0, loc_2CDE10
2CDDEE:  MOV             R1, R4
2CDDF0:  BL              sub_2CE1F6
2CDDF4:  VCMPE.F32       S0, S16
2CDDF8:  VMRS            APSR_nzcv, FPSCR
2CDDFC:  BGT             loc_2CDE10
2CDDFE:  LDR             R0, [R6]
2CDE00:  LDRB.W          R0, [R0,#0x33]
2CDE04:  CMP             R0, #0xD
2CDE06:  ITT NE
2CDE08:  LDRNE.W         R1, [R8]; CGame::currArea
2CDE0C:  CMPNE           R1, R0
2CDE0E:  BEQ             loc_2CDE16
2CDE10:  MOV             R0, R6; this
2CDE12:  BLX             j__ZN17CPlantColEntEntry12ReleaseEntryEv; CPlantColEntEntry::ReleaseEntry(void)
2CDE16:  CMP             R5, #0
2CDE18:  BNE             loc_2CDDE6
2CDE1A:  LDR             R0, =(_ZN9CPlantMgr22m_UnusedColEntListHeadE_ptr - 0x2CDE20)
2CDE1C:  ADD             R0, PC; _ZN9CPlantMgr22m_UnusedColEntListHeadE_ptr
2CDE1E:  LDR             R0, [R0]; CPlantMgr::m_UnusedColEntListHead ...
2CDE20:  LDR             R0, [R0]; CPlantMgr::m_UnusedColEntListHead
2CDE22:  CMP             R0, #0
2CDE24:  BEQ             loc_2CDF0E
2CDE26:  VLDR            S0, =-340.0
2CDE2A:  VLDR            S2, [R4]
2CDE2E:  VLDR            S16, =50.0
2CDE32:  VADD.F32        S6, S2, S0
2CDE36:  VLDR            S4, [R4,#4]
2CDE3A:  VLDR            S18, =60.0
2CDE3E:  VADD.F32        S0, S4, S0
2CDE42:  VDIV.F32        S6, S6, S16
2CDE46:  VDIV.F32        S0, S0, S16
2CDE4A:  VADD.F32        S6, S6, S18
2CDE4E:  VADD.F32        S0, S0, S18
2CDE52:  VMOV            R0, S6; x
2CDE56:  VMOV            R5, S0
2CDE5A:  VLDR            S0, =340.0
2CDE5E:  VADD.F32        S20, S2, S0
2CDE62:  VADD.F32        S22, S4, S0
2CDE66:  BLX             floorf
2CDE6A:  VMOV            S24, R0
2CDE6E:  MOV             R0, R5; x
2CDE70:  BLX             floorf
2CDE74:  VDIV.F32        S0, S20, S16
2CDE78:  MOV             R5, R0
2CDE7A:  VADD.F32        S0, S0, S18
2CDE7E:  VMOV            R0, S0; x
2CDE82:  BLX             floorf
2CDE86:  VDIV.F32        S0, S22, S16
2CDE8A:  LDR             R6, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x2CDE90)
2CDE8C:  ADD             R6, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
2CDE8E:  VADD.F32        S0, S0, S18
2CDE92:  VMOV            S16, R0
2CDE96:  VMOV            R1, S0
2CDE9A:  MOV             R0, R1; x
2CDE9C:  BLX             floorf
2CDEA0:  VMOV            S0, R0
2CDEA4:  LDR             R0, [R6]; CWorld::ms_nCurrentScanCode ...
2CDEA6:  VCVT.S32.F32    S4, S24
2CDEAA:  MOVS            R2, #0x77 ; 'w'
2CDEAC:  VCVT.S32.F32    S0, S0
2CDEB0:  LDRH            R0, [R0]; this
2CDEB2:  VCVT.S32.F32    S6, S16
2CDEB6:  VMOV            S2, R5
2CDEBA:  VCVT.S32.F32    S2, S2
2CDEBE:  VMOV            R1, S0
2CDEC2:  VMOV            R5, S2
2CDEC6:  CMP             R1, #0x77 ; 'w'
2CDEC8:  IT GE
2CDECA:  MOVGE           R1, R2
2CDECC:  STR             R1, [SP,#0x70+var_70]
2CDECE:  VMOV            R1, S6
2CDED2:  CMP             R1, #0x77 ; 'w'
2CDED4:  IT LT
2CDED6:  MOVLT           R2, R1
2CDED8:  VMOV            R1, S4
2CDEDC:  STR             R2, [SP,#0x70+var_4C]
2CDEDE:  MOVS            R2, #0
2CDEE0:  CMP             R5, #0
2CDEE2:  IT LE
2CDEE4:  MOVLE           R5, R2
2CDEE6:  CMP             R1, #0
2CDEE8:  IT GT
2CDEEA:  MOVGT           R2, R1
2CDEEC:  MOVW            R1, #0xFFFF
2CDEF0:  CMP             R0, R1
2CDEF2:  STR             R2, [SP,#0x70+var_6C]
2CDEF4:  BEQ             loc_2CDEFA
2CDEF6:  ADDS            R0, #1
2CDEF8:  B               loc_2CDF00
2CDEFA:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
2CDEFE:  MOVS            R0, #1
2CDF00:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x2CDF06)
2CDF02:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
2CDF04:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
2CDF06:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
2CDF08:  LDR             R0, [SP,#0x70+var_70]
2CDF0A:  CMP             R5, R0
2CDF0C:  BLE             loc_2CDF1E
2CDF0E:  MOVS            R0, #1
2CDF10:  ADD             SP, SP, #0x28 ; '('
2CDF12:  VPOP            {D8-D12}
2CDF16:  ADD             SP, SP, #4
2CDF18:  POP.W           {R8-R11}
2CDF1C:  POP             {R4-R7,PC}
2CDF1E:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x2CDF28)
2CDF20:  VLDR            S16, =115600.0
2CDF24:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
2CDF26:  STR             R4, [SP,#0x70+var_5C]
2CDF28:  LDR             R0, [R0]; CWorld::ms_aSectors ...
2CDF2A:  STR             R0, [SP,#0x70+var_54]
2CDF2C:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x2CDF32)
2CDF2E:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
2CDF30:  LDR.W           R11, [R0]; CWorld::ms_nCurrentScanCode ...
2CDF34:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x2CDF3A)
2CDF36:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
2CDF38:  LDR.W           R10, [R0]; CGame::currArea ...
2CDF3C:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2CDF42)
2CDF3E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2CDF40:  LDR.W           R8, [R0]; CModelInfo::ms_modelInfoPtrs ...
2CDF44:  LDR             R0, =(_ZN9CPlantMgr21m_CloseColEntListHeadE_ptr - 0x2CDF4A)
2CDF46:  ADD             R0, PC; _ZN9CPlantMgr21m_CloseColEntListHeadE_ptr
2CDF48:  LDR             R0, [R0]; CPlantMgr::m_CloseColEntListHead ...
2CDF4A:  STR             R0, [SP,#0x70+var_58]
2CDF4C:  LDR             R0, =(_ZN9CPlantMgr22m_UnusedColEntListHeadE_ptr - 0x2CDF52)
2CDF4E:  ADD             R0, PC; _ZN9CPlantMgr22m_UnusedColEntListHeadE_ptr
2CDF50:  LDR             R0, [R0]; CPlantMgr::m_UnusedColEntListHead ...
2CDF52:  STR             R0, [SP,#0x70+var_60]
2CDF54:  LDR             R0, =(_ZN9CPlantMgr22m_UnusedColEntListHeadE_ptr - 0x2CDF5A)
2CDF56:  ADD             R0, PC; _ZN9CPlantMgr22m_UnusedColEntListHeadE_ptr
2CDF58:  LDR             R0, [R0]; CPlantMgr::m_UnusedColEntListHead ...
2CDF5A:  STR             R0, [SP,#0x70+var_64]
2CDF5C:  LDR             R0, [SP,#0x70+var_4C]
2CDF5E:  LDR             R1, [SP,#0x70+var_6C]
2CDF60:  STR             R5, [SP,#0x70+var_68]
2CDF62:  CMP             R1, R0
2CDF64:  BGT             loc_2CE022
2CDF66:  LDR             R1, [SP,#0x70+var_68]
2CDF68:  MOVS            R0, #0x77 ; 'w'
2CDF6A:  CMP             R1, #0x77 ; 'w'
2CDF6C:  IT LT
2CDF6E:  MOVLT           R0, R1
2CDF70:  LDR.W           R9, [SP,#0x70+var_6C]
2CDF74:  RSB.W           R0, R0, R0,LSL#4
2CDF78:  LSLS            R0, R0, #3
2CDF7A:  STR             R0, [SP,#0x70+var_50]
2CDF7C:  CMP.W           R9, #0x77 ; 'w'
2CDF80:  MOV.W           R0, #0x77 ; 'w'
2CDF84:  IT LT
2CDF86:  MOVLT           R0, R9
2CDF88:  LDR             R1, [SP,#0x70+var_50]
2CDF8A:  ADD             R0, R1
2CDF8C:  LDR             R1, [SP,#0x70+var_54]
2CDF8E:  LDR.W           R4, [R1,R0,LSL#3]
2CDF92:  CMP             R4, #0
2CDF94:  BEQ             loc_2CE016
2CDF96:  LDRD.W          R5, R4, [R4]
2CDF9A:  LDRB            R0, [R5,#0x1F]
2CDF9C:  LSLS            R0, R0, #0x1D
2CDF9E:  BMI             loc_2CDF92
2CDFA0:  LDRH            R1, [R5,#0x30]
2CDFA2:  LDRH.W          R0, [R11]; CWorld::ms_nCurrentScanCode
2CDFA6:  CMP             R1, R0
2CDFA8:  BEQ             loc_2CDF92
2CDFAA:  LDRB.W          R1, [R5,#0x33]
2CDFAE:  STRH            R0, [R5,#0x30]
2CDFB0:  CMP             R1, #0xD
2CDFB2:  ITT NE
2CDFB4:  LDRNE.W         R0, [R10]; CGame::currArea
2CDFB8:  CMPNE           R0, R1
2CDFBA:  BNE             loc_2CDF92
2CDFBC:  LDRSH.W         R0, [R5,#0x26]
2CDFC0:  LDR.W           R6, [R8,R0,LSL#2]
2CDFC4:  LDR             R0, [R6]
2CDFC6:  LDR             R1, [R0,#0x14]
2CDFC8:  MOV             R0, R6
2CDFCA:  BLX             R1
2CDFCC:  CMP             R6, #0
2CDFCE:  BEQ             loc_2CDF92
2CDFD0:  CMP             R0, #1
2CDFD2:  BNE             loc_2CDF92
2CDFD4:  LDRB.W          R0, [R6,#0x29]
2CDFD8:  LSLS            R0, R0, #0x1E
2CDFDA:  BPL             loc_2CDF92
2CDFDC:  LDR             R0, [SP,#0x70+var_58]
2CDFDE:  LDR             R0, [R0]
2CDFE0:  CBZ             R0, loc_2CDFEE
2CDFE2:  LDR             R1, [R0]
2CDFE4:  CMP             R1, R5
2CDFE6:  BEQ             loc_2CDF92
2CDFE8:  LDR             R0, [R0,#0xC]
2CDFEA:  CMP             R0, #0
2CDFEC:  BNE             loc_2CDFE2
2CDFEE:  LDR             R1, [SP,#0x70+var_5C]
2CDFF0:  MOV             R0, R5
2CDFF2:  BL              sub_2CE1F6
2CDFF6:  VCMPE.F32       S0, S16
2CDFFA:  VMRS            APSR_nzcv, FPSCR
2CDFFE:  BGT             loc_2CDF92
2CE000:  LDR             R0, [SP,#0x70+var_60]
2CE002:  LDR             R0, [R0]; this
2CE004:  CBZ             R0, loc_2CE032
2CE006:  MOV             R1, R5; CEntity *
2CE008:  BLX             j__ZN17CPlantColEntEntry8AddEntryEP7CEntity; CPlantColEntEntry::AddEntry(CEntity *)
2CE00C:  LDR             R0, [SP,#0x70+var_64]
2CE00E:  LDR             R0, [R0]
2CE010:  CMP             R0, #0
2CE012:  BNE             loc_2CDF92
2CE014:  B               loc_2CE032
2CE016:  LDR             R1, [SP,#0x70+var_4C]
2CE018:  ADD.W           R0, R9, #1
2CE01C:  CMP             R9, R1
2CE01E:  MOV             R9, R0
2CE020:  BLT             loc_2CDF7C
2CE022:  LDR             R3, [SP,#0x70+var_68]
2CE024:  MOVS            R0, #1
2CE026:  LDR             R2, [SP,#0x70+var_70]
2CE028:  ADDS            R1, R3, #1
2CE02A:  CMP             R3, R2
2CE02C:  MOV             R5, R1
2CE02E:  BLT             loc_2CDF5C
2CE030:  B               loc_2CDF10
2CE032:  MOVS            R0, #0
2CE034:  B               loc_2CDF10
