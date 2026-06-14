; =========================================================
; Game Engine Function: _ZN9CTheZones24SetCurrentZoneAsUnlockedEv
; Address            : 0x42CFA0 - 0x42D114
; =========================================================

42CFA0:  PUSH            {R7,LR}
42CFA2:  MOV             R7, SP
42CFA4:  SUB             SP, SP, #0x10
42CFA6:  ADD             R0, SP, #0x18+var_14; int
42CFA8:  MOV.W           R1, #0xFFFFFFFF
42CFAC:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
42CFB0:  LDR             R0, =(_ZN9CTheZones21TotalNumberOfMapZonesE_ptr - 0x42CFB6)
42CFB2:  ADD             R0, PC; _ZN9CTheZones21TotalNumberOfMapZonesE_ptr
42CFB4:  LDR             R0, [R0]; CTheZones::TotalNumberOfMapZones ...
42CFB6:  LDRH            R1, [R0]; CTheZones::TotalNumberOfMapZones
42CFB8:  CMP             R1, #2
42CFBA:  BCC             loc_42D06A
42CFBC:  LDR             R0, =(_ZN9CTheZones12MapZoneArrayE_ptr - 0x42CFC6)
42CFBE:  MOVS            R2, #1
42CFC0:  LDR             R3, =(_ZN9CTheZones12MapZoneArrayE_ptr - 0x42CFCC)
42CFC2:  ADD             R0, PC; _ZN9CTheZones12MapZoneArrayE_ptr
42CFC4:  VLDR            S0, [SP,#0x18+var_14]
42CFC8:  ADD             R3, PC; _ZN9CTheZones12MapZoneArrayE_ptr
42CFCA:  VLDR            S2, [SP,#0x18+var_10]
42CFCE:  LDR             R0, [R0]; CTheZones::MapZoneArray ...
42CFD0:  LDR.W           R12, [R3]; CTheZones::MapZoneArray ...
42CFD4:  VLDR            S4, [SP,#0x18+var_C]
42CFD8:  ADDS            R0, #0x20 ; ' '
42CFDA:  LDRSH.W         R3, [R0,#0x10]
42CFDE:  VMOV            S6, R3
42CFE2:  VCVT.F32.S32    S6, S6
42CFE6:  VCMPE.F32       S0, S6
42CFEA:  VMRS            APSR_nzcv, FPSCR
42CFEE:  BLT             loc_42D05E
42CFF0:  LDRSH.W         R3, [R0,#0x16]
42CFF4:  VMOV            S6, R3
42CFF8:  VCVT.F32.S32    S6, S6
42CFFC:  VCMPE.F32       S0, S6
42D000:  VMRS            APSR_nzcv, FPSCR
42D004:  BGT             loc_42D05E
42D006:  LDRSH.W         R3, [R0,#0x12]
42D00A:  VMOV            S6, R3
42D00E:  VCVT.F32.S32    S6, S6
42D012:  VCMPE.F32       S2, S6
42D016:  VMRS            APSR_nzcv, FPSCR
42D01A:  BLT             loc_42D05E
42D01C:  LDRSH.W         R3, [R0,#0x18]
42D020:  VMOV            S6, R3
42D024:  VCVT.F32.S32    S6, S6
42D028:  VCMPE.F32       S2, S6
42D02C:  VMRS            APSR_nzcv, FPSCR
42D030:  BGT             loc_42D05E
42D032:  LDRSH.W         R3, [R0,#0x14]
42D036:  VMOV            S6, R3
42D03A:  VCVT.F32.S32    S6, S6
42D03E:  VCMPE.F32       S4, S6
42D042:  VMRS            APSR_nzcv, FPSCR
42D046:  BLT             loc_42D05E
42D048:  LDRSH.W         R3, [R0,#0x1A]
42D04C:  VMOV            S6, R3
42D050:  VCVT.F32.S32    S6, S6
42D054:  VCMPE.F32       S4, S6
42D058:  VMRS            APSR_nzcv, FPSCR
42D05C:  BLE             loc_42D070
42D05E:  ADDS            R2, #1
42D060:  ADDS            R0, #0x20 ; ' '
42D062:  CMP             R2, R1
42D064:  BCC             loc_42CFDA
42D066:  MOV             R0, R12
42D068:  B               loc_42D070
42D06A:  LDR             R0, =(_ZN9CTheZones12MapZoneArrayE_ptr - 0x42D070)
42D06C:  ADD             R0, PC; _ZN9CTheZones12MapZoneArrayE_ptr
42D06E:  LDR             R0, [R0]; CTheZones::MapZoneArray ...
42D070:  LDR             R3, =(_ZN11CTheScripts18bPlayerIsOffTheMapE_ptr - 0x42D078)
42D072:  LDR             R1, =(_ZN5CGame8currAreaE_ptr - 0x42D07C)
42D074:  ADD             R3, PC; _ZN11CTheScripts18bPlayerIsOffTheMapE_ptr
42D076:  LDR             R2, =(_ZN9CTheZones11m_CurrLevelE_ptr - 0x42D082)
42D078:  ADD             R1, PC; _ZN5CGame8currAreaE_ptr
42D07A:  LDRB            R0, [R0,#0x1F]
42D07C:  LDR             R3, [R3]; CTheScripts::bPlayerIsOffTheMap ...
42D07E:  ADD             R2, PC; _ZN9CTheZones11m_CurrLevelE_ptr
42D080:  LDR             R1, [R1]; CGame::currArea ...
42D082:  LDR             R2, [R2]; CTheZones::m_CurrLevel ...
42D084:  LDRB            R3, [R3]; CTheScripts::bPlayerIsOffTheMap
42D086:  LDR             R1, [R1]; CGame::currArea
42D088:  CMP             R3, #0
42D08A:  STR             R0, [R2]; CTheZones::m_CurrLevel
42D08C:  IT EQ
42D08E:  CMPEQ           R1, #0
42D090:  BNE             loc_42D0F0
42D092:  VLDR            S0, [SP,#0x18+var_14]
42D096:  VLDR            S6, =2999.0
42D09A:  VLDR            S8, =-2999.0
42D09E:  VMIN.F32        D16, D0, D3
42D0A2:  VLDR            S4, =3000.0
42D0A6:  VLDR            S2, [SP,#0x18+var_10]
42D0AA:  LDR             R0, =(_ZN9CTheZones12ZonesVisitedE_ptr - 0x42D0B4)
42D0AC:  VMAX.F32        D0, D16, D4
42D0B0:  ADD             R0, PC; _ZN9CTheZones12ZonesVisitedE_ptr
42D0B2:  VMIN.F32        D16, D1, D3
42D0B6:  VLDR            S2, =600.0
42D0BA:  LDR             R1, [R0]; CTheZones::ZonesVisited ...
42D0BC:  VADD.F32        S0, S0, S4
42D0C0:  VMAX.F32        D3, D16, D4
42D0C4:  VADD.F32        S4, S6, S4
42D0C8:  VDIV.F32        S0, S0, S2
42D0CC:  VCVT.U32.F32    S0, S0
42D0D0:  VDIV.F32        S2, S4, S2
42D0D4:  VMOV            R0, S0
42D0D8:  VCVT.U32.F32    S2, S2
42D0DC:  ADD.W           R0, R0, R0,LSL#2
42D0E0:  ADD.W           R2, R1, R0,LSL#1
42D0E4:  VMOV            R1, S2
42D0E8:  RSB.W           R1, R1, #9
42D0EC:  LDRB            R2, [R2,R1]
42D0EE:  CBZ             R2, loc_42D0F4
42D0F0:  ADD             SP, SP, #0x10
42D0F2:  POP             {R7,PC}
42D0F4:  LDR             R3, =(_ZN9CTheZones12ZonesVisitedE_ptr - 0x42D0FE)
42D0F6:  UXTB            R1, R1
42D0F8:  LDR             R2, =(_ZN9CTheZones13ZonesRevealedE_ptr - 0x42D100)
42D0FA:  ADD             R3, PC; _ZN9CTheZones12ZonesVisitedE_ptr
42D0FC:  ADD             R2, PC; _ZN9CTheZones13ZonesRevealedE_ptr
42D0FE:  LDR             R3, [R3]; CTheZones::ZonesVisited ...
42D100:  LDR             R2, [R2]; CTheZones::ZonesRevealed ...
42D102:  ADD.W           R0, R3, R0,LSL#1
42D106:  MOVS            R3, #1
42D108:  STRB            R3, [R0,R1]
42D10A:  LDR             R0, [R2]; CTheZones::ZonesRevealed
42D10C:  ADDS            R0, #1
42D10E:  STR             R0, [R2]; CTheZones::ZonesRevealed
42D110:  ADD             SP, SP, #0x10
42D112:  POP             {R7,PC}
