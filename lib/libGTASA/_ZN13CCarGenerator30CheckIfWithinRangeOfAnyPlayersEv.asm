; =========================================================
; Game Engine Function: _ZN13CCarGenerator30CheckIfWithinRangeOfAnyPlayersEv
; Address            : 0x56DFF8 - 0x56E1F0
; =========================================================

56DFF8:  PUSH            {R4,R6,R7,LR}
56DFFA:  ADD             R7, SP, #8
56DFFC:  VPUSH           {D8-D11}
56E000:  SUB             SP, SP, #0x10
56E002:  MOV             R4, R0
56E004:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x56E00A)
56E006:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
56E008:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
56E00A:  LDR             R0, [R0]; int
56E00C:  BLX             j__Z23FindPlayerCentreOfWorldi; FindPlayerCentreOfWorld(int)
56E010:  LDRSH.W         R3, [R4,#8]
56E014:  VMOV.F32        S20, #0.125
56E018:  LDRSH.W         R1, [R4,#4]
56E01C:  LDRSH.W         R2, [R4,#6]
56E020:  VMOV            S0, R3
56E024:  VLDR            S8, =50.0
56E028:  VMOV            S4, R1
56E02C:  VCVT.F32.S32    S0, S0
56E030:  VMOV            S2, R2
56E034:  VCVT.F32.S32    S2, S2
56E038:  VCVT.F32.S32    S6, S4
56E03C:  VLDR            S4, [R0,#8]
56E040:  VMUL.F32        S0, S0, S20
56E044:  VSUB.F32        S4, S4, S0
56E048:  VABS.F32        S4, S4
56E04C:  VCMPE.F32       S4, S8
56E050:  VMRS            APSR_nzcv, FPSCR
56E054:  BGT             loc_56E14C
56E056:  VMUL.F32        S4, S2, S20
56E05A:  VLDR            S10, [R0,#4]
56E05E:  VMUL.F32        S2, S6, S20
56E062:  VLDR            S8, [R0]
56E066:  LDRSH.W         R0, [R4]
56E06A:  CMP             R0, #1
56E06C:  VSUB.F32        S18, S10, S4
56E070:  VSUB.F32        S16, S8, S2
56E074:  VMUL.F32        S6, S18, S18
56E078:  VMUL.F32        S8, S16, S16
56E07C:  VADD.F32        S6, S8, S6
56E080:  VSQRT.F32       S22, S6
56E084:  BLT             loc_56E114
56E086:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x56E08C)
56E088:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
56E08A:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
56E08C:  LDR.W           R0, [R1,R0,LSL#2]
56E090:  LDR             R0, [R0,#0x54]
56E092:  CMP             R0, #5
56E094:  BNE             loc_56E114
56E096:  LDR             R0, =(TheCamera_ptr - 0x56E0A0)
56E098:  VLDR            S6, =240.0
56E09C:  ADD             R0, PC; TheCamera_ptr
56E09E:  LDR             R0, [R0]; TheCamera
56E0A0:  VLDR            S8, [R0,#0xF0]
56E0A4:  VMUL.F32        S6, S8, S6
56E0A8:  VCMPE.F32       S22, S6
56E0AC:  VMRS            APSR_nzcv, FPSCR
56E0B0:  BGE             loc_56E114
56E0B2:  LDR             R0, =(TheCamera_ptr - 0x56E0C0)
56E0B4:  ADD             R1, SP, #0x38+var_34; CVector *
56E0B6:  MOVS            R2, #0; float
56E0B8:  VSTR            S4, [SP,#0x38+var_30]
56E0BC:  ADD             R0, PC; TheCamera_ptr
56E0BE:  VSTR            S2, [SP,#0x38+var_34]
56E0C2:  VSTR            S0, [SP,#0x38+var_2C]
56E0C6:  LDR             R0, [R0]; TheCamera ; this
56E0C8:  BLX             j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
56E0CC:  CBZ             R0, loc_56E114
56E0CE:  LDRSH.W         R0, [R4,#4]
56E0D2:  MOVS            R3, #0
56E0D4:  LDRSH.W         R1, [R4,#6]
56E0D8:  LDRSH.W         R2, [R4,#8]
56E0DC:  VMOV            S0, R0
56E0E0:  VMOV            S2, R1
56E0E4:  VMOV            S4, R2
56E0E8:  VCVT.F32.S32    S0, S0
56E0EC:  VCVT.F32.S32    S2, S2
56E0F0:  VCVT.F32.S32    S4, S4
56E0F4:  VMUL.F32        S0, S0, S20
56E0F8:  VMUL.F32        S2, S2, S20
56E0FC:  VMUL.F32        S4, S4, S20
56E100:  VMOV            R0, S0
56E104:  VMOV            R1, S2
56E108:  VMOV            R2, S4
56E10C:  BLX             j__ZN10COcclusion18IsPositionOccludedE7CVectorf; COcclusion::IsPositionOccluded(CVector,float)
56E110:  CMP             R0, #0
56E112:  BEQ             loc_56E1DC
56E114:  LDR             R0, =(TheCamera_ptr - 0x56E11E)
56E116:  VLDR            S0, =160.0
56E11A:  ADD             R0, PC; TheCamera_ptr
56E11C:  LDR             R0, [R0]; TheCamera
56E11E:  VLDR            S2, [R0,#0xF0]
56E122:  VMUL.F32        S0, S2, S0
56E126:  VCMPE.F32       S22, S0
56E12A:  VMRS            APSR_nzcv, FPSCR
56E12E:  BGE             loc_56E13E
56E130:  LDR             R0, =(_ZN17CTheCarGenerators34GenerateEvenIfPlayerIsCloseCounterE_ptr - 0x56E136)
56E132:  ADD             R0, PC; _ZN17CTheCarGenerators34GenerateEvenIfPlayerIsCloseCounterE_ptr
56E134:  LDR             R0, [R0]; CTheCarGenerators::GenerateEvenIfPlayerIsCloseCounter ...
56E136:  LDRB            R0, [R0]; CTheCarGenerators::GenerateEvenIfPlayerIsCloseCounter
56E138:  CBZ             R0, loc_56E158
56E13A:  MOVS            R4, #1
56E13C:  B               loc_56E14E
56E13E:  LDRB            R0, [R4,#0xD]
56E140:  TST.W           R0, #1
56E144:  ITT NE
56E146:  ANDNE.W         R0, R0, #0xFE
56E14A:  STRBNE          R0, [R4,#0xD]
56E14C:  MOVS            R4, #0
56E14E:  MOV             R0, R4
56E150:  ADD             SP, SP, #0x10
56E152:  VPOP            {D8-D11}
56E156:  POP             {R4,R6,R7,PC}
56E158:  LDRB            R0, [R4,#0xD]
56E15A:  TST.W           R0, #1
56E15E:  BNE             loc_56E14C
56E160:  LDRSH.W         R1, [R4,#8]
56E164:  VMOV            S2, R1
56E168:  LDR             R1, =(_ZN5CGame8currAreaE_ptr - 0x56E172)
56E16A:  VCVT.F32.S32    S2, S2
56E16E:  ADD             R1, PC; _ZN5CGame8currAreaE_ptr
56E170:  LDR             R1, [R1]; CGame::currArea ...
56E172:  LDR             R1, [R1]; CGame::currArea
56E174:  VMUL.F32        S2, S2, S20
56E178:  CBNZ            R1, loc_56E188
56E17A:  VLDR            S4, =950.0
56E17E:  VCMPE.F32       S2, S4
56E182:  VMRS            APSR_nzcv, FPSCR
56E186:  BGE             loc_56E14C
56E188:  CBZ             R1, loc_56E198
56E18A:  VLDR            S4, =950.0
56E18E:  VCMPE.F32       S2, S4
56E192:  VMRS            APSR_nzcv, FPSCR
56E196:  BLT             loc_56E14C
56E198:  VMOV.F32        S2, #-20.0
56E19C:  MOVS            R4, #0
56E19E:  VADD.F32        S0, S0, S2
56E1A2:  VCMPE.F32       S22, S0
56E1A6:  VMRS            APSR_nzcv, FPSCR
56E1AA:  BGE             loc_56E1B2
56E1AC:  ANDS.W          R0, R0, #2
56E1B0:  BEQ             loc_56E14E
56E1B2:  MOV.W           R0, #0xFFFFFFFF; int
56E1B6:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
56E1BA:  VLDR            S0, [R0]
56E1BE:  VLDR            S2, [R0,#4]
56E1C2:  VMUL.F32        S0, S16, S0
56E1C6:  VMUL.F32        S2, S18, S2
56E1CA:  VADD.F32        S0, S0, S2
56E1CE:  VCMPE.F32       S0, #0.0
56E1D2:  VMRS            APSR_nzcv, FPSCR
56E1D6:  IT LE
56E1D8:  MOVLE           R4, #1
56E1DA:  B               loc_56E14E
56E1DC:  LDR             R0, =(TheCamera_ptr - 0x56E1E6)
56E1DE:  VLDR            S0, =160.0
56E1E2:  ADD             R0, PC; TheCamera_ptr
56E1E4:  LDR             R0, [R0]; TheCamera
56E1E6:  VLDR            S2, [R0,#0xF0]
56E1EA:  VMUL.F32        S0, S2, S0
56E1EE:  B               loc_56E130
