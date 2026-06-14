; =========================================================
; Game Engine Function: _ZN11CPopulation12ManageObjectEP7CObjectRK7CVector
; Address            : 0x4CDE94 - 0x4CE09E
; =========================================================

4CDE94:  PUSH            {R4,R5,R7,LR}
4CDE96:  ADD             R7, SP, #8
4CDE98:  MOV             R5, R1
4CDE9A:  MOV             R4, R0
4CDE9C:  BLX             j__ZN7CObject12CanBeDeletedEv; CObject::CanBeDeleted(void)
4CDEA0:  CMP             R0, #0
4CDEA2:  BEQ.W           locret_4CE09C
4CDEA6:  LDR             R0, [R4,#0x14]
4CDEA8:  VLDR            S2, [R5]
4CDEAC:  ADD.W           R1, R0, #0x30 ; '0'
4CDEB0:  CMP             R0, #0
4CDEB2:  VLDR            S6, [R5,#4]
4CDEB6:  VLDR            S4, [R5,#8]
4CDEBA:  IT EQ
4CDEBC:  ADDEQ           R1, R4, #4
4CDEBE:  VLDR            S0, [R1]
4CDEC2:  VLDR            S8, [R1,#4]
4CDEC6:  VSUB.F32        S0, S0, S2
4CDECA:  VLDR            S10, [R1,#8]
4CDECE:  VSUB.F32        S8, S8, S6
4CDED2:  LDRB.W          R0, [R4,#0x140]
4CDED6:  VSUB.F32        S10, S10, S4
4CDEDA:  CMP             R0, #3
4CDEDC:  VMUL.F32        S0, S0, S0
4CDEE0:  VMUL.F32        S8, S8, S8
4CDEE4:  VMUL.F32        S10, S10, S10
4CDEE8:  VADD.F32        S0, S0, S8
4CDEEC:  VADD.F32        S0, S0, S10
4CDEF0:  VSQRT.F32       S0, S0
4CDEF4:  BNE             loc_4CDF4C
4CDEF6:  LDR             R0, =(MI_ROADWORKBARRIER1_ptr - 0x4CDEFC)
4CDEF8:  ADD             R0, PC; MI_ROADWORKBARRIER1_ptr
4CDEFA:  LDR             R1, [R0]; MI_ROADWORKBARRIER1
4CDEFC:  LDRSH.W         R0, [R4,#0x26]
4CDF00:  LDRH            R1, [R1]
4CDF02:  CMP             R0, R1
4CDF04:  BEQ             loc_4CDF2A
4CDF06:  LDR             R1, =(MI_ROADBLOCKFUCKEDCAR1_ptr - 0x4CDF0C)
4CDF08:  ADD             R1, PC; MI_ROADBLOCKFUCKEDCAR1_ptr
4CDF0A:  LDR             R1, [R1]; MI_ROADBLOCKFUCKEDCAR1
4CDF0C:  LDRH            R1, [R1]
4CDF0E:  CMP             R0, R1
4CDF10:  BEQ             loc_4CDF2A
4CDF12:  LDR             R1, =(MI_ROADBLOCKFUCKEDCAR2_ptr - 0x4CDF18)
4CDF14:  ADD             R1, PC; MI_ROADBLOCKFUCKEDCAR2_ptr
4CDF16:  LDR             R1, [R1]; MI_ROADBLOCKFUCKEDCAR2
4CDF18:  LDRH            R1, [R1]
4CDF1A:  CMP             R0, R1
4CDF1C:  BEQ             loc_4CDF2A
4CDF1E:  LDR             R1, =(MI_BEACHBALL_ptr - 0x4CDF24)
4CDF20:  ADD             R1, PC; MI_BEACHBALL_ptr
4CDF22:  LDR             R1, [R1]; MI_BEACHBALL
4CDF24:  LDRH            R1, [R1]; CEntity *
4CDF26:  CMP             R0, R1
4CDF28:  BNE             loc_4CDFFA
4CDF2A:  VLDR            S2, =120.0
4CDF2E:  VCMPE.F32       S0, S2
4CDF32:  VMRS            APSR_nzcv, FPSCR
4CDF36:  BLE.W           locret_4CE09C
4CDF3A:  MOV             R0, R4; this
4CDF3C:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
4CDF40:  LDR             R0, [R4]
4CDF42:  LDR             R1, [R0,#4]
4CDF44:  MOV             R0, R4
4CDF46:  POP.W           {R4,R5,R7,LR}
4CDF4A:  BX              R1
4CDF4C:  LDR.W           R0, [R4,#0x178]
4CDF50:  CBZ             R0, loc_4CDF90
4CDF52:  LDR             R1, [R0,#0x14]
4CDF54:  ADD.W           R2, R1, #0x30 ; '0'
4CDF58:  CMP             R1, #0
4CDF5A:  IT EQ
4CDF5C:  ADDEQ           R2, R0, #4
4CDF5E:  VLDR            S8, [R2]
4CDF62:  VLDR            S10, [R2,#4]
4CDF66:  VSUB.F32        S2, S8, S2
4CDF6A:  VLDR            S12, [R2,#8]
4CDF6E:  VSUB.F32        S6, S10, S6
4CDF72:  VSUB.F32        S4, S12, S4
4CDF76:  VMUL.F32        S2, S2, S2
4CDF7A:  VMUL.F32        S6, S6, S6
4CDF7E:  VMUL.F32        S4, S4, S4
4CDF82:  VADD.F32        S2, S2, S6
4CDF86:  VADD.F32        S2, S2, S4
4CDF8A:  VSQRT.F32       S2, S2
4CDF8E:  B               loc_4CDF94
4CDF90:  VLDR            S2, =100000.0
4CDF94:  LDR             R0, =(MI_SAMSITE_ptr - 0x4CDF9A)
4CDF96:  ADD             R0, PC; MI_SAMSITE_ptr
4CDF98:  LDR             R1, [R0]; MI_SAMSITE
4CDF9A:  LDRSH.W         R0, [R4,#0x26]
4CDF9E:  LDRH            R1, [R1]
4CDFA0:  CMP             R1, R0
4CDFA2:  BNE             loc_4CDFAA
4CDFA4:  VLDR            S4, =750.0
4CDFA8:  B               loc_4CDFBE
4CDFAA:  LDR             R2, =(MI_SAMSITE2_ptr - 0x4CDFB2)
4CDFAC:  ADR             R3, dword_4CE0B0
4CDFAE:  ADD             R2, PC; MI_SAMSITE2_ptr
4CDFB0:  LDR             R2, [R2]; MI_SAMSITE2
4CDFB2:  LDRH            R2, [R2]
4CDFB4:  CMP             R2, R0
4CDFB6:  IT EQ
4CDFB8:  ADDEQ           R3, #4
4CDFBA:  VLDR            S4, [R3]
4CDFBE:  VCMPE.F32       S0, S4
4CDFC2:  VMRS            APSR_nzcv, FPSCR
4CDFC6:  IT LE
4CDFC8:  POPLE           {R4,R5,R7,PC}
4CDFCA:  CMP             R1, R0
4CDFCC:  BNE             loc_4CDFD4
4CDFCE:  VLDR            S0, =750.0
4CDFD2:  B               loc_4CDFE8
4CDFD4:  LDR             R1, =(MI_SAMSITE2_ptr - 0x4CDFDC)
4CDFD6:  ADR             R2, dword_4CE0B0
4CDFD8:  ADD             R1, PC; MI_SAMSITE2_ptr
4CDFDA:  LDR             R1, [R1]; MI_SAMSITE2
4CDFDC:  LDRH            R1, [R1]; CObject *
4CDFDE:  CMP             R1, R0
4CDFE0:  IT EQ
4CDFE2:  ADDEQ           R2, #4
4CDFE4:  VLDR            S0, [R2]
4CDFE8:  VCMPE.F32       S2, S0
4CDFEC:  VMRS            APSR_nzcv, FPSCR
4CDFF0:  BLE             locret_4CE09C
4CDFF2:  MOV             R0, R4; this
4CDFF4:  POP.W           {R4,R5,R7,LR}
4CDFF8:  B               _ZN11CPopulation20ConvertToDummyObjectEP7CObject; CPopulation::ConvertToDummyObject(CObject *)
4CDFFA:  LDR             R1, =(MI_BEACHTOWEL01_ptr - 0x4CE000)
4CDFFC:  ADD             R1, PC; MI_BEACHTOWEL01_ptr
4CDFFE:  LDR             R1, [R1]; MI_BEACHTOWEL01
4CE000:  LDRH            R1, [R1]
4CE002:  CMP             R0, R1
4CE004:  BCC             loc_4CE012
4CE006:  LDR             R1, =(MI_BEACHTOWEL04_ptr - 0x4CE00C)
4CE008:  ADD             R1, PC; MI_BEACHTOWEL04_ptr
4CE00A:  LDR             R1, [R1]; MI_BEACHTOWEL04
4CE00C:  LDRH            R1, [R1]
4CE00E:  CMP             R0, R1
4CE010:  BLS             loc_4CE072
4CE012:  VLDR            S2, =75.5
4CE016:  VCMPE.F32       S0, S2
4CE01A:  VMRS            APSR_nzcv, FPSCR
4CE01E:  BGT.W           loc_4CDF3A
4CE022:  VMOV.F32        S2, #25.0
4CE026:  VCMPE.F32       S0, S2
4CE02A:  VMRS            APSR_nzcv, FPSCR
4CE02E:  BLE             loc_4CE03C
4CE030:  MOV             R0, R4; this
4CE032:  BLX             j__ZN7CEntity13GetIsOnScreenEv; CEntity::GetIsOnScreen(void)
4CE036:  CMP             R0, #1
4CE038:  BNE.W           loc_4CDF3A
4CE03C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4CE046)
4CE03E:  LDR.W           R1, [R4,#0x154]
4CE042:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4CE044:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4CE046:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4CE048:  CMP             R0, R1
4CE04A:  BHI.W           loc_4CDF3A
4CE04E:  LDR             R0, [R4,#0x18]
4CE050:  CBZ             R0, locret_4CE09C
4CE052:  LDRB            R1, [R0]
4CE054:  CMP             R1, #2
4CE056:  BNE             locret_4CE09C
4CE058:  LDRB.W          R1, [R4,#0x146]
4CE05C:  LSLS            R1, R1, #0x19
4CE05E:  BPL             locret_4CE09C
4CE060:  BLX             j__ZN18CVisibilityPlugins13GetClumpAlphaEP7RpClump; CVisibilityPlugins::GetClumpAlpha(RpClump *)
4CE064:  CMP             R0, #0
4CE066:  BEQ.W           loc_4CDF3A
4CE06A:  MOV             R0, R4; this
4CE06C:  BLX             j__ZN7CEntity9IsVisibleEv; CEntity::IsVisible(void)
4CE070:  B               loc_4CE096
4CE072:  VLDR            S2, =85.5
4CE076:  VCMPE.F32       S0, S2
4CE07A:  VMRS            APSR_nzcv, FPSCR
4CE07E:  BGT.W           loc_4CDF3A
4CE082:  VLDR            S2, =35.0
4CE086:  VCMPE.F32       S0, S2
4CE08A:  VMRS            APSR_nzcv, FPSCR
4CE08E:  BLE             locret_4CE09C
4CE090:  MOV             R0, R4; this
4CE092:  BLX             j__ZN7CEntity13GetIsOnScreenEv; CEntity::GetIsOnScreen(void)
4CE096:  CMP             R0, #0
4CE098:  BEQ.W           loc_4CDF3A
4CE09C:  POP             {R4,R5,R7,PC}
