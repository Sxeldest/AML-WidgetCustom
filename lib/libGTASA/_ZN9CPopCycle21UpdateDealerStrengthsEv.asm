; =========================================================
; Game Engine Function: _ZN9CPopCycle21UpdateDealerStrengthsEv
; Address            : 0x4CAF68 - 0x4CB034
; =========================================================

4CAF68:  PUSH            {R4-R7,LR}
4CAF6A:  ADD             R7, SP, #0xC
4CAF6C:  PUSH.W          {R8}
4CAF70:  VPUSH           {D8-D9}
4CAF74:  LDR             R0, =(_ZN9CGangWars15bGangWarsActiveE_ptr - 0x4CAF7A)
4CAF76:  ADD             R0, PC; _ZN9CGangWars15bGangWarsActiveE_ptr
4CAF78:  LDR             R0, [R0]; CGangWars::bGangWarsActive ...
4CAF7A:  LDRB            R0, [R0]; CGangWars::bGangWarsActive
4CAF7C:  CMP             R0, #0
4CAF7E:  BEQ             loc_4CB02A
4CAF80:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4CAF90)
4CAF82:  MOVW            R2, #0xB273
4CAF86:  LDR             R1, =(_ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x4CAF92)
4CAF88:  MOVT            R2, #0x45E7
4CAF8C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4CAF8E:  ADD             R1, PC; _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr
4CAF90:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4CAF92:  LDR             R1, [R1]; CTimer::m_snPreviousTimeInMilliseconds ...
4CAF94:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4CAF96:  LDR             R1, [R1]; CTimer::m_snPreviousTimeInMilliseconds
4CAF98:  UMULL.W         R0, R3, R0, R2
4CAF9C:  UMULL.W         R0, R1, R1, R2
4CAFA0:  LSRS            R0, R3, #0xE
4CAFA2:  CMP.W           R0, R1,LSR#14
4CAFA6:  BEQ             loc_4CB02A
4CAFA8:  LDR             R0, =(_ZN9CTheZones22TotalNumberOfZoneInfosE_ptr - 0x4CAFAE)
4CAFAA:  ADD             R0, PC; _ZN9CTheZones22TotalNumberOfZoneInfosE_ptr
4CAFAC:  LDR             R0, [R0]; CTheZones::TotalNumberOfZoneInfos ...
4CAFAE:  LDRH            R0, [R0]; CTheZones::TotalNumberOfZoneInfos
4CAFB0:  CBZ             R0, loc_4CB02A
4CAFB2:  LDR             R0, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x4CAFC2)
4CAFB4:  ADR.W           R8, dword_4CB050
4CAFB8:  VLDR            S16, =4.6566e-10
4CAFBC:  MOVS            R5, #0
4CAFBE:  ADD             R0, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
4CAFC0:  VLDR            S18, =0.0
4CAFC4:  LDR             R0, [R0]; CTheZones::ZoneInfoArray ...
4CAFC6:  ADD.W           R4, R0, #0xA
4CAFCA:  LDR             R0, =(_ZN9CTheZones22TotalNumberOfZoneInfosE_ptr - 0x4CAFD0)
4CAFCC:  ADD             R0, PC; _ZN9CTheZones22TotalNumberOfZoneInfosE_ptr
4CAFCE:  LDR             R6, [R0]; CTheZones::TotalNumberOfZoneInfos ...
4CAFD0:  LDRB.W          R0, [R4,#-9]; CTheZones::ZoneInfoArray
4CAFD4:  CMP             R0, #0xA
4CAFD6:  ITT LS
4CAFD8:  LDRBLS.W        R0, [R4,#-0xA]; CTheZones::ZoneInfoArray
4CAFDC:  CMPLS           R0, #0xA
4CAFDE:  BHI             loc_4CAFE8
4CAFE0:  LDRB.W          R0, [R4,#-8]; CTheZones::ZoneInfoArray
4CAFE4:  CMP             R0, #0xB
4CAFE6:  BCC             loc_4CB020
4CAFE8:  BLX             rand
4CAFEC:  VMOV            S0, R0
4CAFF0:  VCVT.F32.S32    S0, S0
4CAFF4:  LDRB            R0, [R4]
4CAFF6:  CMP             R0, #0xE
4CAFF8:  MOV             R1, R0
4CAFFA:  IT CS
4CAFFC:  MOVCS           R1, #0xE
4CAFFE:  CMP             R0, #0xE
4CB000:  BHI             loc_4CB020
4CB002:  VMUL.F32        S0, S0, S16
4CB006:  ADD.W           R1, R8, R1,LSL#2
4CB00A:  VLDR            S2, [R1]
4CB00E:  VADD.F32        S0, S0, S18
4CB012:  VCMPE.F32       S0, S2
4CB016:  VMRS            APSR_nzcv, FPSCR
4CB01A:  ITT LT
4CB01C:  ADDLT           R0, #1
4CB01E:  STRBLT          R0, [R4]
4CB020:  LDRH            R0, [R6]; CTheZones::TotalNumberOfZoneInfos
4CB022:  ADDS            R5, #1
4CB024:  ADDS            R4, #0x11
4CB026:  CMP             R5, R0
4CB028:  BLT             loc_4CAFD0
4CB02A:  VPOP            {D8-D9}
4CB02E:  POP.W           {R8}
4CB032:  POP             {R4-R7,PC}
