; =========================================================
; Game Engine Function: _ZN8CRestart29FindClosestPoliceRestartPointE7CVectorPS0_Pf
; Address            : 0x324C64 - 0x324E48
; =========================================================

324C64:  PUSH            {R4-R7,LR}
324C66:  ADD             R7, SP, #0xC
324C68:  PUSH.W          {R8-R11}
324C6C:  SUB             SP, SP, #4
324C6E:  VPUSH           {D8-D11}
324C72:  SUB             SP, SP, #0x18
324C74:  MOV             R4, R3
324C76:  LDR             R3, =(_ZN8CRestart16bOverrideRestartE_ptr - 0x324C80)
324C78:  STRD.W          R0, R1, [SP,#0x58+var_50]
324C7C:  ADD             R3, PC; _ZN8CRestart16bOverrideRestartE_ptr
324C7E:  LDR             R6, [R7,#arg_0]
324C80:  STR             R2, [SP,#0x58+var_48]
324C82:  LDR             R3, [R3]; CRestart::bOverrideRestart ...
324C84:  LDRB            R0, [R3]; CRestart::bOverrideRestart
324C86:  CBZ             R0, loc_324CB0
324C88:  LDR             R0, =(_ZN8CRestart16OverridePositionE_ptr - 0x324C90)
324C8A:  LDR             R1, =(_ZN8CRestart15OverrideHeadingE_ptr - 0x324C94)
324C8C:  ADD             R0, PC; _ZN8CRestart16OverridePositionE_ptr
324C8E:  LDR             R2, =(_ZN8CRestart16bOverrideRestartE_ptr - 0x324C98)
324C90:  ADD             R1, PC; _ZN8CRestart15OverrideHeadingE_ptr
324C92:  LDR             R0, [R0]; CRestart::OverridePosition ...
324C94:  ADD             R2, PC; _ZN8CRestart16bOverrideRestartE_ptr
324C96:  LDR             R1, [R1]; CRestart::OverrideHeading ...
324C98:  LDR             R2, [R2]; CRestart::bOverrideRestart ...
324C9A:  VLDR            D16, [R0]
324C9E:  LDR             R0, [R0,#(dword_7B6F08 - 0x7B6F00)]
324CA0:  STR             R0, [R4,#8]
324CA2:  VSTR            D16, [R4]
324CA6:  LDR             R0, [R1]; CRestart::OverrideHeading
324CA8:  STR             R0, [R6]
324CAA:  MOVS            R0, #0
324CAC:  STRB            R0, [R2]; CRestart::bOverrideRestart
324CAE:  B               loc_324E3A
324CB0:  LDR             R0, =(_ZN8CRestart35bOverrideRespawnBasePointForMissionE_ptr - 0x324CB6)
324CB2:  ADD             R0, PC; _ZN8CRestart35bOverrideRespawnBasePointForMissionE_ptr
324CB4:  LDR             R0, [R0]; CRestart::bOverrideRespawnBasePointForMission ...
324CB6:  LDRB            R0, [R0]; CRestart::bOverrideRespawnBasePointForMission
324CB8:  CBZ             R0, loc_324CD6
324CBA:  LDR             R0, =(_ZN8CRestart34OverrideRespawnBasePointForMissionE_ptr - 0x324CC4)
324CBC:  MOVS            R2, #0
324CBE:  LDR             R1, =(_ZN8CRestart35bOverrideRespawnBasePointForMissionE_ptr - 0x324CC6)
324CC0:  ADD             R0, PC; _ZN8CRestart34OverrideRespawnBasePointForMissionE_ptr
324CC2:  ADD             R1, PC; _ZN8CRestart35bOverrideRespawnBasePointForMissionE_ptr
324CC4:  LDR             R0, [R0]; CRestart::OverrideRespawnBasePointForMission ...
324CC6:  LDR             R1, [R1]; CVector *
324CC8:  VLDR            D16, [R0]
324CCC:  LDR             R0, [R0,#(dword_7B6F48 - 0x7B6F40)]
324CCE:  STR             R0, [SP,#0x58+var_48]
324CD0:  STRB            R2, [R1]; CRestart::bOverrideRespawnBasePointForMission
324CD2:  VSTR            D16, [SP,#0x58+var_50]
324CD6:  LDR             R0, =(_ZN8CRestart31ExtraPoliceStationRestartRadiusE_ptr - 0x324CDC)
324CD8:  ADD             R0, PC; _ZN8CRestart31ExtraPoliceStationRestartRadiusE_ptr
324CDA:  LDR             R0, [R0]; CRestart::ExtraPoliceStationRestartRadius ...
324CDC:  VLDR            S0, [R0]
324CE0:  VCMPE.F32       S0, #0.0
324CE4:  VMRS            APSR_nzcv, FPSCR
324CE8:  BLE             loc_324D2E
324CEA:  LDR             R0, =(_ZN8CRestart30ExtraPoliceStationRestartCoorsE_ptr - 0x324CF4)
324CEC:  VLDR            D16, [SP,#0x58+var_50]
324CF0:  ADD             R0, PC; _ZN8CRestart30ExtraPoliceStationRestartCoorsE_ptr
324CF2:  LDR             R0, [R0]; CRestart::ExtraPoliceStationRestartCoors ...
324CF4:  VLDR            D17, [R0]
324CF8:  VSUB.F32        D16, D16, D17
324CFC:  VMUL.F32        D1, D16, D16
324D00:  VADD.F32        S2, S2, S3
324D04:  VSQRT.F32       S2, S2
324D08:  VCMPE.F32       S2, S0
324D0C:  VMRS            APSR_nzcv, FPSCR
324D10:  BGE             loc_324D2E
324D12:  LDR             R0, =(_ZN8CRestart30ExtraPoliceStationRestartCoorsE_ptr - 0x324D1A)
324D14:  LDR             R1, =(_ZN8CRestart32ExtraPoliceStationRestartHeadingE_ptr - 0x324D1C)
324D16:  ADD             R0, PC; _ZN8CRestart30ExtraPoliceStationRestartCoorsE_ptr
324D18:  ADD             R1, PC; _ZN8CRestart32ExtraPoliceStationRestartHeadingE_ptr
324D1A:  LDR             R0, [R0]; CRestart::ExtraPoliceStationRestartCoors ...
324D1C:  LDR             R1, [R1]; CRestart::ExtraPoliceStationRestartHeading ...
324D1E:  VLDR            D16, [R0]
324D22:  LDR             R0, [R0,#(dword_7B6F30 - 0x7B6F28)]
324D24:  STR             R0, [R4,#8]
324D26:  VSTR            D16, [R4]
324D2A:  LDR             R0, [R1]; CRestart::ExtraPoliceStationRestartHeading
324D2C:  B               loc_324E38
324D2E:  ADD             R0, SP, #0x58+var_50; this
324D30:  BLX             j__ZN9CTheZones20GetLevelFromPositionEPK7CVector; CTheZones::GetLevelFromPosition(CVector const*)
324D34:  MOV             R5, R0
324D36:  LDR             R0, =(_ZN8CRestart22NumberOfPoliceRestartsE_ptr - 0x324D3C)
324D38:  ADD             R0, PC; _ZN8CRestart22NumberOfPoliceRestartsE_ptr
324D3A:  LDR             R0, [R0]; CRestart::NumberOfPoliceRestarts ...
324D3C:  LDRH            R0, [R0]; CRestart::NumberOfPoliceRestarts
324D3E:  CMP             R0, #0
324D40:  BEQ             loc_324E3A
324D42:  LDR             R0, =(_ZN8CRestart22PoliceRestartWhenToUseE_ptr - 0x324D52)
324D44:  VMOV.F32        S18, #6.0
324D48:  STR             R4, [SP,#0x58+var_54]
324D4A:  MOVW            R8, #0xFFFF
324D4E:  ADD             R0, PC; _ZN8CRestart22PoliceRestartWhenToUseE_ptr
324D50:  VLDR            S16, =100000.0
324D54:  MOV.W           R9, #0
324D58:  MOV.W           R10, #0
324D5C:  LDR             R4, [R0]; CRestart::PoliceRestartWhenToUse ...
324D5E:  LDR             R0, =(_ZN8CRestart22NumberOfPoliceRestartsE_ptr - 0x324D64)
324D60:  ADD             R0, PC; _ZN8CRestart22NumberOfPoliceRestartsE_ptr
324D62:  LDR             R6, [R0]; CRestart::NumberOfPoliceRestarts ...
324D64:  LDR             R0, =(_ZN8CRestart19PoliceRestartPointsE_ptr - 0x324D6A)
324D66:  ADD             R0, PC; _ZN8CRestart19PoliceRestartPointsE_ptr
324D68:  LDR.W           R11, [R0]; CRestart::PoliceRestartPoints ...
324D6C:  LDR.W           R0, [R4,R9,LSL#2]
324D70:  VMOV            S0, R0
324D74:  MOVS            R0, #(dword_B4+1); this
324D76:  VCVT.F32.S32    S20, S0
324D7A:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
324D7E:  VMOV            S0, R0
324D82:  VCMPE.F32       S0, S20
324D86:  VMRS            APSR_nzcv, FPSCR
324D8A:  BLT             loc_324DFA
324D8C:  ADD.W           R0, R9, R9,LSL#1
324D90:  VLDR            S0, [SP,#0x58+var_50]
324D94:  VLDR            S2, [SP,#0x58+var_50+4]
324D98:  CMP             R5, #0
324D9A:  ADD.W           R0, R11, R0,LSL#2; this
324D9E:  VLDR            S4, [SP,#0x58+var_48]
324DA2:  VLDR            S6, [R0]
324DA6:  VLDR            S8, [R0,#4]
324DAA:  VSUB.F32        S0, S0, S6
324DAE:  VLDR            S10, [R0,#8]
324DB2:  VSUB.F32        S2, S2, S8
324DB6:  VSUB.F32        S4, S4, S10
324DBA:  VMUL.F32        S0, S0, S0
324DBE:  VMUL.F32        S2, S2, S2
324DC2:  VMUL.F32        S4, S4, S4
324DC6:  VADD.F32        S0, S0, S2
324DCA:  VADD.F32        S0, S0, S4
324DCE:  VSQRT.F32       S22, S0
324DD2:  BEQ             loc_324DE6
324DD4:  VMUL.F32        S20, S22, S18
324DD8:  BLX             j__ZN9CTheZones20GetLevelFromPositionEPK7CVector; CTheZones::GetLevelFromPosition(CVector const*)
324DDC:  CMP             R5, R0
324DDE:  IT EQ
324DE0:  VMOVEQ.F32      S20, S22
324DE4:  B               loc_324DEA
324DE6:  VMOV.F32        S20, S22
324DEA:  VCMPE.F32       S20, S16
324DEE:  VMRS            APSR_nzcv, FPSCR
324DF2:  ITT LT
324DF4:  MOVLT           R8, R10
324DF6:  VMOVLT.F32      S16, S20
324DFA:  ADD.W           R10, R10, #1
324DFE:  LDRH            R0, [R6]; CRestart::NumberOfPoliceRestarts
324E00:  UXTH.W          R9, R10
324E04:  CMP             R9, R0
324E06:  BCC             loc_324D6C
324E08:  LDR             R6, [R7,#arg_0]
324E0A:  SXTH.W          R0, R8
324E0E:  LDR             R5, [SP,#0x58+var_54]
324E10:  CMP             R0, #0
324E12:  BLT             loc_324E3A
324E14:  LDR             R1, =(_ZN8CRestart19PoliceRestartPointsE_ptr - 0x324E20)
324E16:  ADD.W           R3, R0, R0,LSL#1
324E1A:  LDR             R2, =(_ZN8CRestart21PoliceRestartHeadingsE_ptr - 0x324E22)
324E1C:  ADD             R1, PC; _ZN8CRestart19PoliceRestartPointsE_ptr
324E1E:  ADD             R2, PC; _ZN8CRestart21PoliceRestartHeadingsE_ptr
324E20:  LDR             R1, [R1]; CRestart::PoliceRestartPoints ...
324E22:  LDR             R2, [R2]; CRestart::PoliceRestartHeadings ...
324E24:  ADD.W           R1, R1, R3,LSL#2
324E28:  VLDR            D16, [R1]
324E2C:  LDR             R1, [R1,#8]
324E2E:  STR             R1, [R5,#8]
324E30:  VSTR            D16, [R5]
324E34:  LDR.W           R0, [R2,R0,LSL#2]
324E38:  STR             R0, [R6]
324E3A:  ADD             SP, SP, #0x18
324E3C:  VPOP            {D8-D11}
324E40:  ADD             SP, SP, #4
324E42:  POP.W           {R8-R11}
324E46:  POP             {R4-R7,PC}
