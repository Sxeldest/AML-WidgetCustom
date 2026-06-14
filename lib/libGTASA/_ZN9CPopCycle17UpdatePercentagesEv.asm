; =========================================================
; Game Engine Function: _ZN9CPopCycle17UpdatePercentagesEv
; Address            : 0x4CAA34 - 0x4CAEA8
; =========================================================

4CAA34:  PUSH            {R4-R7,LR}
4CAA36:  ADD             R7, SP, #0xC
4CAA38:  PUSH.W          {R8}
4CAA3C:  VPUSH           {D8-D15}
4CAA40:  LDR.W           R0, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x4CAA50)
4CAA44:  VMOV.F32        S16, #0.5
4CAA48:  VLDR            S2, =100.0
4CAA4C:  ADD             R0, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
4CAA4E:  VLDR            S6, =0.1
4CAA52:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo ...
4CAA54:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo
4CAA56:  LDRB            R1, [R0,#0xA]
4CAA58:  VMOV            S0, R1
4CAA5C:  LDR.W           R1, =(_ZN9CPopCycle14m_fPercDealersE_ptr - 0x4CAA68)
4CAA60:  VCVT.F32.U32    S0, S0
4CAA64:  ADD             R1, PC; _ZN9CPopCycle14m_fPercDealersE_ptr
4CAA66:  LDR             R1, [R1]; CPopCycle::m_fPercDealers ...
4CAA68:  VDIV.F32        S0, S0, S2
4CAA6C:  VMIN.F32        D0, D0, D3
4CAA70:  VSTR            S0, [R1]
4CAA74:  LDRB            R1, [R0]
4CAA76:  LDRB            R2, [R0,#1]
4CAA78:  LDRB            R3, [R0,#2]
4CAA7A:  ADD             R1, R2
4CAA7C:  LDRB            R5, [R0,#3]
4CAA7E:  ADD             R1, R3
4CAA80:  LDRB            R2, [R0,#4]
4CAA82:  ADD             R1, R5
4CAA84:  LDRB            R3, [R0,#5]
4CAA86:  ADD             R1, R2
4CAA88:  LDRB            R5, [R0,#6]
4CAA8A:  ADD             R1, R3
4CAA8C:  LDRB            R4, [R0,#7]
4CAA8E:  ADD             R1, R5
4CAA90:  LDRB.W          LR, [R0,#8]
4CAA94:  ADD             R1, R4
4CAA96:  LDRB.W          R12, [R0,#9]
4CAA9A:  ADD             R1, LR
4CAA9C:  ADD             R1, R12
4CAA9E:  VMOV            S4, R1
4CAAA2:  LDR.W           R1, =(_ZN9CPopCycle12m_fPercGangsE_ptr - 0x4CAAAE)
4CAAA6:  VCVT.F32.S32    S4, S4
4CAAAA:  ADD             R1, PC; _ZN9CPopCycle12m_fPercGangsE_ptr
4CAAAC:  LDR             R1, [R1]; CPopCycle::m_fPercGangs ...
4CAAAE:  VDIV.F32        S2, S4, S2
4CAAB2:  VMIN.F32        D1, D1, D8
4CAAB6:  VLDR            S4, =0.15
4CAABA:  VCMPE.F32       S2, S4
4CAABE:  VSTR            S2, [R1]
4CAAC2:  VMRS            APSR_nzcv, FPSCR
4CAAC6:  BGE             loc_4CAAD2
4CAAC8:  VLDR            S4, =0.02
4CAACC:  VMAX.F32        D2, D1, D2
4CAAD0:  B               loc_4CAAE2
4CAAD2:  VLDR            S4, =0.3
4CAAD6:  VLDR            S8, =0.03
4CAADA:  VSUB.F32        S4, S4, S2
4CAADE:  VMAX.F32        D2, D2, D4
4CAAE2:  LDR.W           R1, =(_ZN9CPopCycle11m_fPercCopsE_ptr - 0x4CAAEA)
4CAAE6:  ADD             R1, PC; _ZN9CPopCycle11m_fPercCopsE_ptr
4CAAE8:  LDR             R1, [R1]; CPopCycle::m_fPercCops ...
4CAAEA:  VSTR            S4, [R1]
4CAAEE:  LDRH.W          R0, [R0,#0xF]
4CAAF2:  AND.W           R0, R0, #0x1F
4CAAF6:  CMP             R0, #0x11
4CAAF8:  BHI             loc_4CAB32
4CAAFA:  MOVS            R1, #1
4CAAFC:  MOVW            R2, #:lower16:(elf_hash_chain+0x3EA8)
4CAB00:  LSLS            R1, R0
4CAB02:  MOVT            R2, #:upper16:(elf_hash_chain+0x3EA8)
4CAB06:  TST             R1, R2
4CAB08:  BNE             loc_4CAB24
4CAB0A:  MOV             R2, #0x20100
4CAB12:  TST             R1, R2
4CAB14:  BEQ             loc_4CAB1C
4CAB16:  VLDR            S4, =0.0
4CAB1A:  B               loc_4CAB28
4CAB1C:  CMP             R0, #5
4CAB1E:  BNE             loc_4CAB32
4CAB20:  VLDR            S6, =0.05
4CAB24:  VMAX.F32        D2, D2, D3
4CAB28:  LDR             R0, =(_ZN9CPopCycle11m_fPercCopsE_ptr - 0x4CAB2E)
4CAB2A:  ADD             R0, PC; _ZN9CPopCycle11m_fPercCopsE_ptr
4CAB2C:  LDR             R0, [R0]; CPopCycle::m_fPercCops ...
4CAB2E:  VSTR            S4, [R0]
4CAB32:  VADD.F32        S6, S0, S2
4CAB36:  VMOV.F32        S18, #1.0
4CAB3A:  VADD.F32        S6, S6, S4
4CAB3E:  VCMPE.F32       S6, S18
4CAB42:  VMRS            APSR_nzcv, FPSCR
4CAB46:  BLE             loc_4CAB78
4CAB48:  VDIV.F32        S2, S2, S6
4CAB4C:  LDR             R0, =(_ZN9CPopCycle12m_fPercGangsE_ptr - 0x4CAB56)
4CAB4E:  LDR             R1, =(_ZN9CPopCycle14m_fPercDealersE_ptr - 0x4CAB58)
4CAB50:  LDR             R2, =(_ZN9CPopCycle11m_fPercCopsE_ptr - 0x4CAB5A)
4CAB52:  ADD             R0, PC; _ZN9CPopCycle12m_fPercGangsE_ptr
4CAB54:  ADD             R1, PC; _ZN9CPopCycle14m_fPercDealersE_ptr
4CAB56:  ADD             R2, PC; _ZN9CPopCycle11m_fPercCopsE_ptr
4CAB58:  LDR             R0, [R0]; CPopCycle::m_fPercGangs ...
4CAB5A:  LDR             R1, [R1]; CPopCycle::m_fPercDealers ...
4CAB5C:  LDR             R2, [R2]; CPopCycle::m_fPercCops ...
4CAB5E:  VDIV.F32        S0, S0, S6
4CAB62:  VDIV.F32        S4, S4, S6
4CAB66:  VLDR            S20, =0.0
4CAB6A:  VSTR            S2, [R0]
4CAB6E:  VSTR            S0, [R1]
4CAB72:  VSTR            S4, [R2]
4CAB76:  B               loc_4CAB84
4CAB78:  VSUB.F32        S6, S18, S0
4CAB7C:  VSUB.F32        S6, S6, S2
4CAB80:  VSUB.F32        S20, S6, S4
4CAB84:  LDR             R0, =(_ZN9CPopCycle19m_nCurrentTimeIndexE_ptr - 0x4CAB8C)
4CAB86:  LDR             R1, =(_ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr - 0x4CAB90)
4CAB88:  ADD             R0, PC; _ZN9CPopCycle19m_nCurrentTimeIndexE_ptr
4CAB8A:  LDR             R6, =(_ZN8CWeather4RainE_ptr - 0x4CAB96)
4CAB8C:  ADD             R1, PC; _ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr
4CAB8E:  LDR             R2, =(_ZN9CPopCycle18m_nCurrentZoneTypeE_ptr - 0x4CAB9A)
4CAB90:  LDR             R0, [R0]; CPopCycle::m_nCurrentTimeIndex ...
4CAB92:  ADD             R6, PC; _ZN8CWeather4RainE_ptr
4CAB94:  LDR             R1, [R1]; CPopCycle::m_nCurrentTimeOfWeek ...
4CAB96:  ADD             R2, PC; _ZN9CPopCycle18m_nCurrentZoneTypeE_ptr
4CAB98:  LDR             R5, =(_ZN9CPopCycle12m_nPercOtherE_ptr - 0x4CABA0)
4CAB9A:  LDR             R0, [R0]; CPopCycle::m_nCurrentTimeIndex
4CAB9C:  ADD             R5, PC; _ZN9CPopCycle12m_nPercOtherE_ptr
4CAB9E:  LDR             R1, [R1]; CPopCycle::m_nCurrentTimeOfWeek
4CABA0:  LDR             R6, [R6]; CWeather::Rain ...
4CABA2:  LDR             R4, =(_ZN9CPopCycle11m_nPercGangE_ptr - 0x4CABB4)
4CABA4:  ADD.W           R0, R0, R0,LSL#2
4CABA8:  LDR             R2, [R2]; CPopCycle::m_nCurrentZoneType ...
4CABAA:  ADD.W           R1, R1, R1,LSL#2
4CABAE:  LDR             R5, [R5]; CPopCycle::m_nPercOther ...
4CABB0:  ADD             R4, PC; _ZN9CPopCycle11m_nPercGangE_ptr
4CABB2:  VLDR            S6, [R6]
4CABB6:  LDR.W           R12, =(_ZN9CPopCycle11m_nPercCopsE_ptr - 0x4CABD4)
4CABBA:  ADD.W           R6, R5, R0,LSL#3
4CABBE:  LDR.W           LR, =(_ZN9CPopCycle14m_nPercDealersE_ptr - 0x4CABD8)
4CABC2:  VSQRT.F32       S6, S6
4CABC6:  LDR             R2, [R2]; CPopCycle::m_nCurrentZoneType
4CABC8:  ADD.W           R6, R6, R1,LSL#2
4CABCC:  LDR.W           R8, [R4]; CPopCycle::m_nPercGang ...
4CABD0:  ADD             R12, PC; _ZN9CPopCycle11m_nPercCopsE_ptr
4CABD2:  LDR             R4, =(_ZN9CPopCycle12m_fPercOtherE_ptr - 0x4CABE2)
4CABD4:  ADD             LR, PC; _ZN9CPopCycle14m_nPercDealersE_ptr
4CABD6:  LDR.W           R3, [R12]; CPopCycle::m_nPercCops ...
4CABDA:  ADD.W           R5, R8, R0,LSL#3
4CABDE:  ADD             R4, PC; _ZN9CPopCycle12m_fPercOtherE_ptr
4CABE0:  LDRB            R6, [R6,R2]
4CABE2:  LDR.W           R12, [LR]; CPopCycle::m_nPercDealers ...
4CABE6:  ADD.W           R5, R5, R1,LSL#2
4CABEA:  ADD.W           R3, R3, R0,LSL#3
4CABEE:  ADD.W           R0, R12, R0,LSL#3
4CABF2:  LDR             R4, [R4]; CPopCycle::m_fPercOther ...
4CABF4:  ADD.W           R3, R3, R1,LSL#2
4CABF8:  LDRB            R5, [R5,R2]
4CABFA:  ADD.W           R0, R0, R1,LSL#2
4CABFE:  LDRB            R3, [R3,R2]
4CAC00:  VMOV            S8, R6
4CAC04:  VSTR            S20, [R4]
4CAC08:  VMOV            S10, R3
4CAC0C:  VLDR            S30, =0.01
4CAC10:  VCVT.F32.U32    S19, S8
4CAC14:  LDRB            R0, [R0,R2]
4CAC16:  VMOV            S8, R5
4CAC1A:  VCVT.F32.U32    S8, S8
4CAC1E:  VMOV            S12, R0; this
4CAC22:  VCVT.F32.U32    S10, S10
4CAC26:  VCVT.F32.U32    S12, S12
4CAC2A:  VMUL.F32        S22, S20, S19
4CAC2E:  VMUL.F32        S26, S2, S8
4CAC32:  VLDR            S2, =-0.8
4CAC36:  VMUL.F32        S24, S4, S10
4CAC3A:  VMUL.F32        S28, S0, S12
4CAC3E:  VMUL.F32        S0, S6, S2
4CAC42:  VADD.F32        S21, S0, S18
4CAC46:  BLX             j__ZN11CTheScripts18IsPlayerOnAMissionEv; CTheScripts::IsPlayerOnAMission(void)
4CAC4A:  CBZ             R0, loc_4CAC7A
4CAC4C:  MOV.W           R0, #0xFFFFFFFF; int
4CAC50:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4CAC54:  CBZ             R0, loc_4CAC7A
4CAC56:  LDRB.W          R1, [R0,#0x485]
4CAC5A:  LSLS            R1, R1, #0x1F
4CAC5C:  ITT NE
4CAC5E:  LDRNE.W         R0, [R0,#0x590]
4CAC62:  CMPNE           R0, #0
4CAC64:  BEQ             loc_4CAC7A
4CAC66:  LDRSH.W         R0, [R0,#0x26]; this
4CAC6A:  CMP.W           R0, #0x1B6
4CAC6E:  IT NE
4CAC70:  CMPNE.W         R0, #0x1A4
4CAC74:  BNE             loc_4CAC7A
4CAC76:  VMOV.F32        S21, S18
4CAC7A:  VMUL.F32        S22, S22, S30
4CAC7E:  VMUL.F32        S24, S24, S30
4CAC82:  VMUL.F32        S26, S26, S30
4CAC86:  VMUL.F32        S28, S28, S30
4CAC8A:  BLX             j__ZN7CDarkel13FrenzyOnGoingEv; CDarkel::FrenzyOnGoing(void)
4CAC8E:  CMP             R0, #0
4CAC90:  LDR             R0, =(_ZN9CPopCycle19m_nCurrentTimeIndexE_ptr - 0x4CACA2)
4CAC92:  IT NE
4CAC94:  VMOVNE.F32      S21, S18
4CAC98:  LDR             R1, =(_ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr - 0x4CACA4)
4CAC9A:  VMUL.F32        S0, S21, S19
4CAC9E:  ADD             R0, PC; _ZN9CPopCycle19m_nCurrentTimeIndexE_ptr
4CACA0:  ADD             R1, PC; _ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr
4CACA2:  LDR             R2, =(_ZN9CPopCycle18m_nCurrentZoneTypeE_ptr - 0x4CACAC)
4CACA4:  LDR             R0, [R0]; CPopCycle::m_nCurrentTimeIndex ...
4CACA6:  LDR             R1, [R1]; CPopCycle::m_nCurrentTimeOfWeek ...
4CACA8:  ADD             R2, PC; _ZN9CPopCycle18m_nCurrentZoneTypeE_ptr
4CACAA:  LDR             R3, =(_ZN9CPopCycle13m_nMaxNumPedsE_ptr - 0x4CACB2)
4CACAC:  LDR             R2, [R2]; CPopCycle::m_nCurrentZoneType ...
4CACAE:  ADD             R3, PC; _ZN9CPopCycle13m_nMaxNumPedsE_ptr
4CACB0:  LDR             R6, =(_ZN25CCustomBuildingDNPipeline17m_fDNBalanceParamE_ptr - 0x4CACBE)
4CACB2:  VCVT.S32.F32    S0, S0
4CACB6:  LDR             R0, [R0]; CPopCycle::m_nCurrentTimeIndex
4CACB8:  LDR             R3, [R3]; CPopCycle::m_nMaxNumPeds ...
4CACBA:  ADD             R6, PC; _ZN25CCustomBuildingDNPipeline17m_fDNBalanceParamE_ptr
4CACBC:  ADD.W           R0, R0, R0,LSL#2
4CACC0:  LDR             R5, [R6]; CCustomBuildingDNPipeline::m_fDNBalanceParam ...
4CACC2:  ADD.W           R0, R3, R0,LSL#3
4CACC6:  VCVT.F32.S32    S0, S0
4CACCA:  LDR             R1, [R1]; CPopCycle::m_nCurrentTimeOfWeek
4CACCC:  LDR             R2, [R2]; CPopCycle::m_nCurrentZoneType
4CACCE:  ADD.W           R1, R1, R1,LSL#2
4CACD2:  ADD.W           R0, R0, R1,LSL#2; this
4CACD6:  VMUL.F32        S20, S20, S0
4CACDA:  LDRB            R6, [R0,R2]
4CACDC:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
4CACE0:  MOV             R8, R0
4CACE2:  LDR             R0, =(gfLaRiotsLightMult_ptr - 0x4CACEE)
4CACE4:  VLDR            S19, [R5]
4CACE8:  CMP             R6, #0x14
4CACEA:  ADD             R0, PC; gfLaRiotsLightMult_ptr ; this
4CACEC:  MOV             R5, R6
4CACEE:  VMUL.F32        S20, S20, S30
4CACF2:  IT LS
4CACF4:  MOVLS           R5, #0x14
4CACF6:  LDR             R4, [R0]; gfLaRiotsLightMult
4CACF8:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
4CACFC:  VLDR            S0, [R4]
4CAD00:  CMP.W           R8, #0
4CAD04:  IT EQ
4CAD06:  MOVEQ           R5, R6
4CAD08:  CMP             R0, #1
4CAD0A:  BNE             loc_4CAD68
4CAD0C:  VSUB.F32        S2, S18, S19
4CAD10:  VCMPE.F32       S2, S16
4CAD14:  VMRS            APSR_nzcv, FPSCR
4CAD18:  BLE             loc_4CAD68
4CAD1A:  VLDR            S2, =-0.01
4CAD1E:  LDR             R0, =(gfLaRiotsLightMult_ptr - 0x4CAD2C)
4CAD20:  VADD.F32        S0, S0, S2
4CAD24:  VLDR            S2, =0.6
4CAD28:  ADD             R0, PC; gfLaRiotsLightMult_ptr
4CAD2A:  LDR             R0, [R0]; gfLaRiotsLightMult
4CAD2C:  VCMPE.F32       S0, S2
4CAD30:  VSTR            S0, [R0]
4CAD34:  VMRS            APSR_nzcv, FPSCR
4CAD38:  BGE             loc_4CAD90
4CAD3A:  LDR             R0, =(gfLaRiotsLightMult_ptr - 0x4CAD48)
4CAD3C:  MOV             R1, #0x3F19999A
4CAD44:  ADD             R0, PC; gfLaRiotsLightMult_ptr
4CAD46:  B               loc_4CAD8C
4CAD48:  DCFS 100.0
4CAD4C:  DCFS 0.1
4CAD50:  DCFS 0.15
4CAD54:  DCFS 0.02
4CAD58:  DCFS 0.3
4CAD5C:  DCFS 0.03
4CAD60:  DCFS 0.0
4CAD64:  DCFS 0.05
4CAD68:  VADD.F32        S0, S0, S30
4CAD6C:  LDR             R0, =(gfLaRiotsLightMult_ptr - 0x4CAD76)
4CAD6E:  VMOV.F32        S2, #1.0
4CAD72:  ADD             R0, PC; gfLaRiotsLightMult_ptr
4CAD74:  LDR             R0, [R0]; gfLaRiotsLightMult
4CAD76:  VSTR            S0, [R0]
4CAD7A:  VCMPE.F32       S0, S2
4CAD7E:  VMRS            APSR_nzcv, FPSCR
4CAD82:  BLE             loc_4CAD90
4CAD84:  LDR             R0, =(gfLaRiotsLightMult_ptr - 0x4CAD8E)
4CAD86:  MOV.W           R1, #0x3F800000
4CAD8A:  ADD             R0, PC; gfLaRiotsLightMult_ptr
4CAD8C:  LDR             R0, [R0]; gfLaRiotsLightMult
4CAD8E:  STR             R1, [R0]
4CAD90:  LDR             R0, =(_ZN9CPopCycle19m_nCurrentTimeIndexE_ptr - 0x4CAD9E)
4CAD92:  VMOV            S0, R5
4CAD96:  LDR             R1, =(_ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr - 0x4CADA0)
4CAD98:  LDR             R2, =(_ZN9CPopCycle18m_nCurrentZoneTypeE_ptr - 0x4CADA6)
4CAD9A:  ADD             R0, PC; _ZN9CPopCycle19m_nCurrentTimeIndexE_ptr
4CAD9C:  ADD             R1, PC; _ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr
4CAD9E:  LDR.W           R12, =(_ZN9CPopCycle13m_nMaxNumCarsE_ptr - 0x4CADAC)
4CADA2:  ADD             R2, PC; _ZN9CPopCycle18m_nCurrentZoneTypeE_ptr
4CADA4:  LDR             R0, [R0]; CPopCycle::m_nCurrentTimeIndex ...
4CADA6:  LDR             R1, [R1]; CPopCycle::m_nCurrentTimeOfWeek ...
4CADA8:  ADD             R12, PC; _ZN9CPopCycle13m_nMaxNumCarsE_ptr
4CADAA:  LDR             R2, [R2]; CPopCycle::m_nCurrentZoneType ...
4CADAC:  LDR             R0, [R0]; CPopCycle::m_nCurrentTimeIndex
4CADAE:  LDR.W           LR, [R1]; CPopCycle::m_nCurrentTimeOfWeek
4CADB2:  LDR.W           R1, [R12]; CPopCycle::m_nMaxNumCars ...
4CADB6:  LDR.W           R12, [R2]; CPopCycle::m_nCurrentZoneType
4CADBA:  VCVT.F32.S32    S0, S0
4CADBE:  ADD.W           R0, R0, R0,LSL#2
4CADC2:  LDR             R4, =(_ZN9CPopCycle15m_NumOther_PedsE_ptr - 0x4CADD4)
4CADC4:  LDR             R3, =(_ZN9CPopCycle17m_NumDealers_PedsE_ptr - 0x4CADDC)
4CADC6:  ADD.W           R0, R1, R0,LSL#3
4CADCA:  ADD.W           R1, LR, LR,LSL#2
4CADCE:  LDR             R6, =(_ZN9CPopCycle14m_NumCops_PedsE_ptr - 0x4CADDE)
4CADD0:  ADD             R4, PC; _ZN9CPopCycle15m_NumOther_PedsE_ptr
4CADD2:  ADD.W           R0, R0, R1,LSL#2
4CADD6:  LDR             R2, =(_ZN9CPopCycle15m_NumGangs_PedsE_ptr - 0x4CADE4)
4CADD8:  ADD             R3, PC; _ZN9CPopCycle17m_NumDealers_PedsE_ptr
4CADDA:  ADD             R6, PC; _ZN9CPopCycle14m_NumCops_PedsE_ptr
4CADDC:  VMUL.F32        S2, S26, S0
4CADE0:  ADD             R2, PC; _ZN9CPopCycle15m_NumGangs_PedsE_ptr
4CADE2:  VMUL.F32        S4, S28, S0
4CADE6:  LDR             R4, [R4]; CPopCycle::m_NumOther_Peds ...
4CADE8:  VMUL.F32        S6, S24, S0
4CADEC:  LDRB.W          R0, [R0,R12]
4CADF0:  VMUL.F32        S0, S20, S0
4CADF4:  LDR             R3, [R3]; CPopCycle::m_NumDealers_Peds ...
4CADF6:  LDR             R6, [R6]; CPopCycle::m_NumCops_Peds ...
4CADF8:  LDR             R2, [R2]; CPopCycle::m_NumGangs_Peds ...
4CADFA:  LDR             R1, =(_ZN9CPopCycle15m_NumGangs_CarsE_ptr - 0x4CAE08)
4CADFC:  VSTR            S4, [R3]
4CAE00:  VSTR            S2, [R2]
4CAE04:  ADD             R1, PC; _ZN9CPopCycle15m_NumGangs_CarsE_ptr
4CAE06:  VSTR            S0, [R4]
4CAE0A:  VMOV            S0, R0
4CAE0E:  VSTR            S6, [R6]
4CAE12:  VCVT.F32.U32    S0, S0
4CAE16:  LDR             R0, =(_ZN9CPopCycle17m_NumDealers_CarsE_ptr - 0x4CAE20)
4CAE18:  LDR             R2, =(_ZN9CPopCycle14m_NumCops_CarsE_ptr - 0x4CAE22)
4CAE1A:  LDR             R3, =(_ZN9CPopCycle15m_NumOther_CarsE_ptr - 0x4CAE26)
4CAE1C:  ADD             R0, PC; _ZN9CPopCycle17m_NumDealers_CarsE_ptr
4CAE1E:  ADD             R2, PC; _ZN9CPopCycle14m_NumCops_CarsE_ptr
4CAE20:  LDR             R1, [R1]; CPopCycle::m_NumGangs_Cars ...
4CAE22:  ADD             R3, PC; _ZN9CPopCycle15m_NumOther_CarsE_ptr
4CAE24:  LDR             R0, [R0]; this
4CAE26:  LDR             R2, [R2]; CPopCycle::m_NumCops_Cars ...
4CAE28:  LDR             R3, [R3]; CPopCycle::m_NumOther_Cars ...
4CAE2A:  VMUL.F32        S2, S28, S0
4CAE2E:  VMUL.F32        S4, S26, S0
4CAE32:  VMUL.F32        S6, S24, S0
4CAE36:  VMUL.F32        S0, S22, S0
4CAE3A:  VSTR            S2, [R0]
4CAE3E:  VSTR            S4, [R1]
4CAE42:  VSTR            S6, [R2]
4CAE46:  VSTR            S0, [R3]
4CAE4A:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
4CAE4E:  CMP             R0, #1
4CAE50:  BNE             loc_4CAE9E
4CAE52:  LDR             R0, =(_ZN9CPopCycle17m_NumDealers_CarsE_ptr - 0x4CAE60)
4CAE54:  VMOV.F32        S0, #0.75
4CAE58:  LDR             R1, =(_ZN9CPopCycle15m_NumGangs_CarsE_ptr - 0x4CAE64)
4CAE5A:  LDR             R2, =(_ZN9CPopCycle14m_NumCops_CarsE_ptr - 0x4CAE66)
4CAE5C:  ADD             R0, PC; _ZN9CPopCycle17m_NumDealers_CarsE_ptr
4CAE5E:  LDR             R3, =(_ZN9CPopCycle15m_NumOther_CarsE_ptr - 0x4CAE6A)
4CAE60:  ADD             R1, PC; _ZN9CPopCycle15m_NumGangs_CarsE_ptr
4CAE62:  ADD             R2, PC; _ZN9CPopCycle14m_NumCops_CarsE_ptr
4CAE64:  LDR             R0, [R0]; CPopCycle::m_NumDealers_Cars ...
4CAE66:  ADD             R3, PC; _ZN9CPopCycle15m_NumOther_CarsE_ptr
4CAE68:  LDR             R1, [R1]; CPopCycle::m_NumGangs_Cars ...
4CAE6A:  LDR             R2, [R2]; CPopCycle::m_NumCops_Cars ...
4CAE6C:  LDR             R3, [R3]; CPopCycle::m_NumOther_Cars ...
4CAE6E:  VLDR            S2, [R0]
4CAE72:  VLDR            S4, [R1]
4CAE76:  VLDR            S6, [R2]
4CAE7A:  VMUL.F32        S2, S2, S0
4CAE7E:  VLDR            S8, [R3]
4CAE82:  VMUL.F32        S4, S4, S0
4CAE86:  VMUL.F32        S6, S6, S0
4CAE8A:  VMUL.F32        S0, S8, S0
4CAE8E:  VSTR            S2, [R0]
4CAE92:  VSTR            S4, [R1]
4CAE96:  VSTR            S6, [R2]
4CAE9A:  VSTR            S0, [R3]
4CAE9E:  VPOP            {D8-D15}
4CAEA2:  POP.W           {R8}
4CAEA6:  POP             {R4-R7,PC}
