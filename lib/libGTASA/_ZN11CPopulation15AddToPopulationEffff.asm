; =========================================================
; Game Engine Function: _ZN11CPopulation15AddToPopulationEffff
; Address            : 0x4CCA98 - 0x4CDA1A
; =========================================================

4CCA98:  PUSH            {R4-R7,LR}
4CCA9A:  ADD             R7, SP, #0xC
4CCA9C:  PUSH.W          {R8-R11}
4CCAA0:  SUB             SP, SP, #4
4CCAA2:  VPUSH           {D8-D15}
4CCAA6:  SUB             SP, SP, #0x110; float
4CCAA8:  MOV             R4, R0
4CCAAA:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x4CCAB8)
4CCAAE:  MOV             R5, R1
4CCAB0:  LDR.W           R1, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x4CCABC)
4CCAB4:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
4CCAB6:  MOV             R9, R2
4CCAB8:  ADD             R1, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
4CCABA:  MOV.W           R2, #0xFFFFFFFF
4CCABE:  LDR             R0, [R0]; this
4CCAC0:  MOV             R11, R3
4CCAC2:  LDR             R6, [R1]; CCheat::m_aCheatsActive ...
4CCAC4:  MOVW            R1, #0xFFFF
4CCAC8:  STR             R2, [SP,#0x170+var_AC]
4CCACA:  STR             R2, [SP,#0x170+var_B0]
4CCACC:  STRH.W          R1, [SP,#0x170+var_C0]
4CCAD0:  STRH.W          R1, [SP,#0x170+var_C4]
4CCAD4:  LDR.W           R8, [R0]; CWorld::PlayerInFocus
4CCAD8:  BLX             j__ZN9CGangWars19DontCreateCiviliansEv; CGangWars::DontCreateCivilians(void)
4CCADC:  LDRB.W          R1, [R6,#(byte_796846 - 0x7967F4)]
4CCAE0:  MOVS            R3, #0
4CCAE2:  CMP             R1, #0
4CCAE4:  IT EQ
4CCAE6:  CMPEQ           R0, #0
4CCAE8:  BNE.W           loc_4CD018
4CCAEC:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x4CCAF8)
4CCAF0:  MOV.W           R1, #0x194
4CCAF4:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
4CCAF6:  LDR             R0, [R0]; CWorld::Players ...
4CCAF8:  SMLABB.W        R10, R8, R1, R0
4CCAFC:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x4CCB04)
4CCB00:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
4CCB02:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
4CCB04:  LDR             R0, [R0]; int
4CCB06:  BLX             j__Z23FindPlayerCentreOfWorldi; FindPlayerCentreOfWorld(int)
4CCB0A:  LDR.W           R1, =(dword_9F513C - 0x4CCB16)
4CCB0E:  VLDR            S16, [R0]
4CCB12:  ADD             R1, PC; dword_9F513C
4CCB14:  VLDR            S18, [R0,#4]
4CCB18:  VLDR            S26, [R0,#8]
4CCB1C:  LDR             R2, [R1]
4CCB1E:  ADDS            R0, R2, #1
4CCB20:  STR             R0, [R1]
4CCB22:  TST.W           R0, #1
4CCB26:  BNE             loc_4CCB64
4CCB28:  MOV.W           R0, #0xFFFFFFFF; int
4CCB2C:  MOVS            R1, #0; bool
4CCB2E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
4CCB32:  CBZ             R0, loc_4CCB64
4CCB34:  MOV.W           R0, #0xFFFFFFFF; int
4CCB38:  MOVS            R1, #0; bool
4CCB3A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
4CCB3E:  VLDR            S20, [R0,#0x48]
4CCB42:  MOV.W           R0, #0xFFFFFFFF; int
4CCB46:  MOVS            R1, #0; bool
4CCB48:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
4CCB4C:  VMOV.F32        S0, #1.5
4CCB50:  VLDR            S2, [R0,#0x4C]
4CCB54:  VMUL.F32        S2, S2, S0
4CCB58:  VMUL.F32        S0, S20, S0
4CCB5C:  VADD.F32        S18, S18, S2
4CCB60:  VADD.F32        S16, S16, S0
4CCB64:  LDR.W           R0, [R10]
4CCB68:  VMOV            S22, R5
4CCB6C:  VMOV            S24, R4
4CCB70:  LDR.W           R0, [R0,#0x444]
4CCB74:  LDR             R0, [R0]
4CCB76:  LDR             R1, [R0,#0x2C]
4CCB78:  STRD.W          R11, R9, [SP,#0x170+var_E8]
4CCB7C:  CMP             R1, #3
4CCB7E:  BLT             loc_4CCBA8
4CCB80:  LDR.W           R1, =(_ZN11CPopulation10ms_nNumCopE_ptr - 0x4CCB8A)
4CCB84:  LDRB            R0, [R0,#0x19]; this
4CCB86:  ADD             R1, PC; _ZN11CPopulation10ms_nNumCopE_ptr
4CCB88:  LDR             R1, [R1]; CPopulation::ms_nNumCop ...
4CCB8A:  LDR             R1, [R1]; CPopulation::ms_nNumCop
4CCB8C:  CMP             R1, R0
4CCB8E:  BGE             loc_4CCBA8
4CCB90:  BLX             j__ZN9CGangWars22GangWarFightingGoingOnEv; CGangWars::GangWarFightingGoingOn(void)
4CCB94:  CMP             R0, #0
4CCB96:  ITTT EQ
4CCB98:  LDREQ.W         R0, [R10]
4CCB9C:  LDRBEQ.W        R1, [R0,#0x485]
4CCBA0:  MOVSEQ.W        R1, R1,LSL#31
4CCBA4:  BEQ.W           loc_4CCE22
4CCBA8:  MOVS            R0, #0
4CCBAA:  LDR.W           R1, =(_ZN11CPopulation10ms_nNumCopE_ptr - 0x4CCBBA)
4CCBAE:  LDR.W           R2, =(_ZN14MobileSettings8settingsE_ptr - 0x4CCBBE)
4CCBB2:  LDR.W           R3, =(_ZN11CPopulation20PedDensityMultiplierE_ptr - 0x4CCBC4)
4CCBB6:  ADD             R1, PC; _ZN11CPopulation10ms_nNumCopE_ptr
4CCBB8:  STR             R0, [SP,#0x170+var_EC]
4CCBBA:  ADD             R2, PC; _ZN14MobileSettings8settingsE_ptr
4CCBBC:  LDR.W           R0, =(_ZN11CPopulation20MaxNumberOfPedsInUseE_ptr - 0x4CCBC8)
4CCBC0:  ADD             R3, PC; _ZN11CPopulation20PedDensityMultiplierE_ptr
4CCBC2:  LDR             R5, [R1]; CPopulation::ms_nNumCop ...
4CCBC4:  ADD             R0, PC; _ZN11CPopulation20MaxNumberOfPedsInUseE_ptr ; this
4CCBC6:  LDR.W           R10, [R2]; MobileSettings::settings ...
4CCBCA:  LDR.W           R8, [R3]; CPopulation::PedDensityMultiplier ...
4CCBCE:  LDR.W           R9, [R0]; CPopulation::MaxNumberOfPedsInUse ...
4CCBD2:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
4CCBD6:  MOV             R4, R0
4CCBD8:  LDR.W           R0, [R10,#(dword_6E03FC - 0x6E03F4)]; this
4CCBDC:  LDR.W           R11, [R5]; CPopulation::ms_nNumCop
4CCBE0:  MOVS            R5, #0x19
4CCBE2:  CMP             R0, #3
4CCBE4:  VLDR            S28, [R8]
4CCBE8:  IT LT
4CCBEA:  MOVLT           R5, #0x11
4CCBEC:  STR.W           R5, [R9]; CPopulation::MaxNumberOfPedsInUse
4CCBF0:  BLX             j__ZN7CDarkel13FrenzyOnGoingEv; CDarkel::FrenzyOnGoing(void)
4CCBF4:  LDR.W           R6, =(_ZN9CPopCycle15m_NumGangs_PedsE_ptr - 0x4CCC04)
4CCBF8:  VMOV.F32        S20, #1.0
4CCBFC:  LDR.W           R1, =(_ZN9CPopCycle14m_NumCops_PedsE_ptr - 0x4CCC0E)
4CCC00:  ADD             R6, PC; _ZN9CPopCycle15m_NumGangs_PedsE_ptr
4CCC02:  LDR.W           R3, =(_ZN11CPopulation25NumberOfPedsInUseInteriorE_ptr - 0x4CCC12)
4CCC06:  LDR.W           R0, =(_ZN5CGame8currAreaE_ptr - 0x4CCC18)
4CCC0A:  ADD             R1, PC; _ZN9CPopCycle14m_NumCops_PedsE_ptr
4CCC0C:  LDR             R6, [R6]; CPopCycle::m_NumGangs_Peds ...
4CCC0E:  ADD             R3, PC; _ZN11CPopulation25NumberOfPedsInUseInteriorE_ptr
4CCC10:  LDR.W           R2, =(_ZN9CPopCycle15m_NumOther_PedsE_ptr - 0x4CCC20)
4CCC14:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
4CCC16:  LDR             R1, [R1]; CPopCycle::m_NumCops_Peds ...
4CCC18:  VLDR            S0, [R6]
4CCC1C:  ADD             R2, PC; _ZN9CPopCycle15m_NumOther_PedsE_ptr
4CCC1E:  LDR.W           R6, =(_ZN9CPopCycle17m_NumDealers_PedsE_ptr - 0x4CCC28)
4CCC22:  LDR             R3, [R3]; CPopulation::NumberOfPedsInUseInterior ...
4CCC24:  ADD             R6, PC; _ZN9CPopCycle17m_NumDealers_PedsE_ptr
4CCC26:  LDR             R2, [R2]; CPopCycle::m_NumOther_Peds ...
4CCC28:  LDR             R0, [R0]; this
4CCC2A:  LDR             R6, [R6]; CPopCycle::m_NumDealers_Peds ...
4CCC2C:  VLDR            S4, [R1]
4CCC30:  VLDR            S30, [R8]
4CCC34:  VLDR            S2, [R6]
4CCC38:  LDR             R6, [R0]; CGame::currArea
4CCC3A:  VADD.F32        S0, S2, S0
4CCC3E:  VLDR            S2, [R3]
4CCC42:  VLDR            S17, [R2]
4CCC46:  VCVT.F32.S32    S19, S2
4CCC4A:  VADD.F32        S21, S0, S4
4CCC4E:  BLX             j__ZN10CCullZones9FewerPedsEv; CCullZones::FewerPeds(void)
4CCC52:  VLDR            S0, =0.6
4CCC56:  CMP             R0, #0
4CCC58:  VMOV.F32        S2, S20
4CCC5C:  LDR.W           R0, =(_ZN11CPopulation13ms_nTotalPedsE_ptr - 0x4CCC72)
4CCC60:  IT NE
4CCC62:  VMOVNE.F32      S2, S0
4CCC66:  VMOV            S0, R5
4CCC6A:  VADD.F32        S4, S21, S17
4CCC6E:  ADD             R0, PC; _ZN11CPopulation13ms_nTotalPedsE_ptr
4CCC70:  VCVT.F32.S32    S0, S0
4CCC74:  LDR.W           R1, =(_ZN11CPopulation13m_bIsHospitalE_ptr - 0x4CCC82)
4CCC78:  VMUL.F32        S2, S30, S2
4CCC7C:  LDR             R0, [R0]; CPopulation::ms_nTotalPeds ...
4CCC7E:  ADD             R1, PC; _ZN11CPopulation13m_bIsHospitalE_ptr
4CCC80:  CMP             R6, #0
4CCC82:  MOV.W           R9, #0
4CCC86:  MOV.W           R3, #0
4CCC8A:  LDR             R1, [R1]; CPopulation::m_bIsHospital ...
4CCC8C:  VMIN.F32        D0, D2, D0
4CCC90:  IT EQ
4CCC92:  VMOVEQ.F32      S19, S0
4CCC96:  VLDR            S0, =0.42
4CCC9A:  VMUL.F32        S4, S19, S2
4CCC9E:  VLDR            S2, [R0]
4CCCA2:  LDRB            R0, [R1]; CPopulation::m_bIsHospital
4CCCA4:  MOVS            R1, #0
4CCCA6:  VCVT.F32.S32    S2, S2
4CCCAA:  CMP             R0, #0
4CCCAC:  MOV.W           R0, #0
4CCCB0:  VMUL.F32        S0, S4, S0
4CCCB4:  IT EQ
4CCCB6:  VMOVEQ.F32      S0, S4
4CCCBA:  VLDR            S4, =0.1
4CCCBE:  VCMPE.F32       S0, S2
4CCCC2:  VMRS            APSR_nzcv, FPSCR
4CCCC6:  VCMPE.F32       S28, S4
4CCCCA:  IT GT
4CCCCC:  MOVGT.W         R9, #1
4CCCD0:  VMRS            APSR_nzcv, FPSCR
4CCCD4:  IT GT
4CCCD6:  MOVGT           R0, #1
4CCCD8:  CMP.W           R11, #1
4CCCDC:  AND.W           R0, R0, R4
4CCCE0:  IT LT
4CCCE2:  MOVLT           R1, #1
4CCCE4:  ANDS            R0, R1
4CCCE6:  LDR             R1, [SP,#0x170+var_EC]
4CCCE8:  ORRS            R0, R1
4CCCEA:  LDRD.W          R2, R1, [SP,#0x170+var_E8]
4CCCEE:  BNE             loc_4CCCFC
4CCCF0:  VCMPE.F32       S0, S2
4CCCF4:  VMRS            APSR_nzcv, FPSCR
4CCCF8:  BLE.W           loc_4CD018
4CCCFC:  VMOV            S28, R2
4CCD00:  CMP             R0, #1
4CCD02:  VMOV            S30, R1
4CCD06:  BNE             loc_4CCD30
4CCD08:  MOVS            R0, #6
4CCD0A:  MOV.W           R10, #1
4CCD0E:  STR             R0, [SP,#0x170+var_A4]
4CCD10:  MOVS            R0, #0
4CCD12:  MOV.W           R11, #0xFFFFFFFF
4CCD16:  MOV.W           R8, #0xFFFFFFFF
4CCD1A:  STR             R0, [SP,#0x170+var_A8]
4CCD1C:  MOV.W           R0, #0xFFFFFFFF; int
4CCD20:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
4CCD24:  LDR             R1, [R0,#0x2C]
4CCD26:  MOVS            R0, #0
4CCD28:  CMP             R1, #0
4CCD2A:  IT GT
4CCD2C:  MOVGT           R0, #1
4CCD2E:  B               loc_4CCF14
4CCD30:  VLDR            S0, =950.0
4CCD34:  MOVS            R2, #0
4CCD36:  ADD             R0, SP, #0x170+var_A4
4CCD38:  ADD             R1, SP, #0x170+var_A8
4CCD3A:  VCMPE.F32       S26, S0
4CCD3E:  VMRS            APSR_nzcv, FPSCR
4CCD42:  IT GT
4CCD44:  MOVGT           R2, #1
4CCD46:  MOV             R3, R2
4CCD48:  BLX             j__ZN9CPopCycle14FindNewPedTypeEP8ePedTypePibb; CPopCycle::FindNewPedType(ePedType *,int *,bool,bool)
4CCD4C:  CMP             R0, #1
4CCD4E:  BNE.W           loc_4CD016
4CCD52:  LDR             R0, [SP,#0x170+var_A4]
4CCD54:  ORR.W           R0, R0, #1
4CCD58:  CMP             R0, #5
4CCD5A:  BNE             loc_4CCDB8
4CCD5C:  BLX             rand
4CCD60:  VMOV            S0, R0
4CCD64:  VLDR            S2, =4.6566e-10
4CCD68:  VCVT.F32.S32    S0, S0
4CCD6C:  VMUL.F32        S0, S0, S2
4CCD70:  VLDR            S2, =0.0
4CCD74:  VADD.F32        S0, S0, S2
4CCD78:  VLDR            S2, =0.9
4CCD7C:  VCMPE.F32       S0, S2
4CCD80:  VMRS            APSR_nzcv, FPSCR
4CCD84:  BLE             loc_4CCDB8
4CCD86:  ADD             R0, SP, #0x170+var_AC; this
4CCD88:  ADD             R1, SP, #0x170+var_B0; int *
4CCD8A:  BLX             j__ZN11CPopulation31ChooseCivilianCoupleOccupationsERiS0_; CPopulation::ChooseCivilianCoupleOccupations(int &,int &)
4CCD8E:  LDR.W           R11, [SP,#0x170+var_AC]
4CCD92:  ADDS.W          R0, R11, #1
4CCD96:  BEQ.W           loc_4CD016
4CCD9A:  LDR.W           R8, [SP,#0x170+var_B0]
4CCD9E:  ADDS.W          R0, R8, #1
4CCDA2:  BEQ.W           loc_4CD016
4CCDA6:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CCDAE)
4CCDAA:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CCDAC:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4CCDAE:  LDR.W           R0, [R0,R11,LSL#2]
4CCDB2:  LDR             R0, [R0,#0x40]
4CCDB4:  STR             R0, [SP,#0x170+var_A4]
4CCDB6:  B               loc_4CCDC0
4CCDB8:  MOV.W           R8, #0xFFFFFFFF
4CCDBC:  MOV.W           R11, #0xFFFFFFFF
4CCDC0:  LDR.W           R0, =(_ZN11CPopulation23m_AllRandomPedsThisTypeE_ptr - 0x4CCDC8)
4CCDC4:  ADD             R0, PC; _ZN11CPopulation23m_AllRandomPedsThisTypeE_ptr
4CCDC6:  LDR             R0, [R0]; CPopulation::m_AllRandomPedsThisType ...
4CCDC8:  LDR             R0, [R0]; CPopulation::m_AllRandomPedsThisType
4CCDCA:  CMP             R0, #0
4CCDCC:  ITE GT
4CCDCE:  STRGT           R0, [SP,#0x170+var_A4]
4CCDD0:  LDRLE           R0, [SP,#0x170+var_A4]
4CCDD2:  SUBS            R1, R0, #7
4CCDD4:  CMP             R1, #9
4CCDD6:  BHI.W           loc_4CCEE8
4CCDDA:  LDR.W           R4, =(_ZN15CPedGroupPlacer14ms_maxGangSizeE_ptr - 0x4CCDE6)
4CCDDE:  LDR.W           R5, =(_ZN15CPedGroupPlacer14ms_minGangSizeE_ptr - 0x4CCDE8)
4CCDE2:  ADD             R4, PC; _ZN15CPedGroupPlacer14ms_maxGangSizeE_ptr
4CCDE4:  ADD             R5, PC; _ZN15CPedGroupPlacer14ms_minGangSizeE_ptr
4CCDE6:  BLX             rand
4CCDEA:  UXTH            R0, R0
4CCDEC:  LDR             R1, [R4]; CPedGroupPlacer::ms_maxGangSize ...
4CCDEE:  VMOV            S0, R0
4CCDF2:  LDR             R0, [R5]; CPedGroupPlacer::ms_minGangSize ...
4CCDF4:  VLDR            S2, =0.000015259
4CCDF8:  VCVT.F32.S32    S0, S0
4CCDFC:  LDR             R2, [R0]; CPedGroupPlacer::ms_minGangSize
4CCDFE:  LDR             R0, [R1]; CPedGroupPlacer::ms_maxGangSize
4CCE00:  SUBS            R0, R0, R2
4CCE02:  VMUL.F32        S0, S0, S2
4CCE06:  VMOV            S2, R0
4CCE0A:  VCVT.F32.S32    S2, S2
4CCE0E:  VMUL.F32        S0, S0, S2
4CCE12:  VCVT.S32.F32    S0, S0
4CCE16:  LDR             R0, [SP,#0x170+var_A4]
4CCE18:  VMOV            R1, S0
4CCE1C:  ADD.W           R10, R2, R1
4CCE20:  B               loc_4CCEEC
4CCE22:  LDR.W           R1, =(_ZN8CCarCtrl18NumLawEnforcerCarsE_ptr - 0x4CCE2E)
4CCE26:  LDR.W           R0, [R0,#0x444]
4CCE2A:  ADD             R1, PC; _ZN8CCarCtrl18NumLawEnforcerCarsE_ptr
4CCE2C:  LDR             R1, [R1]; CCarCtrl::NumLawEnforcerCars ...
4CCE2E:  LDR             R2, [R0]
4CCE30:  LDR             R0, [R1]; CCarCtrl::NumLawEnforcerCars
4CCE32:  LDRB            R1, [R2,#0x1A]
4CCE34:  CMP             R0, R1
4CCE36:  BGE             loc_4CCEC2
4CCE38:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x4CCE48)
4CCE3C:  MOV.W           R2, #0x194
4CCE40:  LDR.W           R3, =(_ZN8CCarCtrl13NumRandomCarsE_ptr - 0x4CCE4A)
4CCE44:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
4CCE46:  ADD             R3, PC; _ZN8CCarCtrl13NumRandomCarsE_ptr
4CCE48:  LDR             R1, [R1]; CWorld::Players ...
4CCE4A:  SMLABB.W        R1, R8, R2, R1
4CCE4E:  LDR.W           R2, =(_ZN8CCarCtrl20CarDensityMultiplierE_ptr - 0x4CCE56)
4CCE52:  ADD             R2, PC; _ZN8CCarCtrl20CarDensityMultiplierE_ptr
4CCE54:  LDRH.W          R1, [R1,#0x130]
4CCE58:  VMOV            S0, R1
4CCE5C:  LDR             R1, [R2]; CCarCtrl::CarDensityMultiplier ...
4CCE5E:  LDR             R2, [R3]; CCarCtrl::NumRandomCars ...
4CCE60:  VCVT.F32.U32    S0, S0
4CCE64:  VLDR            S2, [R1]
4CCE68:  LDR             R1, [R2]; CCarCtrl::NumRandomCars
4CCE6A:  VMOV            S4, R1
4CCE6E:  VCVT.F32.S32    S4, S4
4CCE72:  VMUL.F32        S0, S2, S0
4CCE76:  VCMPE.F32       S0, S4
4CCE7A:  VMRS            APSR_nzcv, FPSCR
4CCE7E:  BLE             loc_4CCEC2
4CCE80:  LDR.W           R6, =(_ZN8CCarCtrl14NumMissionCarsE_ptr - 0x4CCE8E)
4CCE84:  ADD             R0, R1
4CCE86:  LDR.W           R5, =(_ZN8CCarCtrl13NumParkedCarsE_ptr - 0x4CCE98)
4CCE8A:  ADD             R6, PC; _ZN8CCarCtrl14NumMissionCarsE_ptr
4CCE8C:  LDR.W           R4, =(_ZN8CCarCtrl19NumAmbulancesOnDutyE_ptr - 0x4CCE9E)
4CCE90:  LDR.W           R2, =(_ZN8CCarCtrl19NumFireTrucksOnDutyE_ptr - 0x4CCEA2)
4CCE94:  ADD             R5, PC; _ZN8CCarCtrl13NumParkedCarsE_ptr
4CCE96:  LDR.W           R3, =(_ZN8CCarCtrl20MaxNumberOfCarsInUseE_ptr - 0x4CCEA6)
4CCE9A:  ADD             R4, PC; _ZN8CCarCtrl19NumAmbulancesOnDutyE_ptr
4CCE9C:  LDR             R6, [R6]; CCarCtrl::NumMissionCars ...
4CCE9E:  ADD             R2, PC; _ZN8CCarCtrl19NumFireTrucksOnDutyE_ptr
4CCEA0:  LDR             R5, [R5]; CCarCtrl::NumParkedCars ...
4CCEA2:  ADD             R3, PC; _ZN8CCarCtrl20MaxNumberOfCarsInUseE_ptr
4CCEA4:  LDR             R4, [R4]; CCarCtrl::NumAmbulancesOnDuty ...
4CCEA6:  LDR             R2, [R2]; CCarCtrl::NumFireTrucksOnDuty ...
4CCEA8:  LDR             R6, [R6]; CCarCtrl::NumMissionCars
4CCEAA:  LDR             R3, [R3]; CCarCtrl::MaxNumberOfCarsInUse ...
4CCEAC:  LDR             R1, [R5]; CCarCtrl::NumParkedCars
4CCEAE:  ADD             R0, R6
4CCEB0:  LDR             R5, [R4]; CCarCtrl::NumAmbulancesOnDuty
4CCEB2:  ADD             R0, R1
4CCEB4:  LDR             R2, [R2]; CCarCtrl::NumFireTrucksOnDuty
4CCEB6:  ADD             R0, R5
4CCEB8:  LDR             R3, [R3]; CCarCtrl::MaxNumberOfCarsInUse
4CCEBA:  ADD             R0, R2; this
4CCEBC:  CMP             R0, R3
4CCEBE:  BLT.W           loc_4CCBA8
4CCEC2:  BLX             j__ZN11CPopulation25PedCreationDistMultiplierEv; CPopulation::PedCreationDistMultiplier(void)
4CCEC6:  MOV             R4, R0
4CCEC8:  BLX             j__ZN11CPopulation25PedCreationDistMultiplierEv; CPopulation::PedCreationDistMultiplier(void)
4CCECC:  VMOV            S6, R0
4CCED0:  VLDR            S4, =50.5
4CCED4:  VLDR            S0, =42.5
4CCED8:  VMOV            S2, R4
4CCEDC:  VMUL.F32        S22, S6, S4
4CCEE0:  MOVS            R0, #1
4CCEE2:  VMUL.F32        S24, S2, S0
4CCEE6:  B               loc_4CCBAA
4CCEE8:  MOV.W           R10, #1
4CCEEC:  SUBS            R1, R0, #7
4CCEEE:  CMP             R1, #9
4CCEF0:  BHI             loc_4CCF0C
4CCEF2:  VMOV.F32        S0, #30.0
4CCEF6:  VLDR            S2, =0.0
4CCEFA:  VADD.F32        S28, S28, S2
4CCEFE:  VADD.F32        S30, S30, S2
4CCF02:  VADD.F32        S22, S22, S0
4CCF06:  VADD.F32        S24, S24, S0
4CCF0A:  B               loc_4CCF12
4CCF0C:  CMP             R0, #6
4CCF0E:  BEQ.W           loc_4CCD1C
4CCF12:  MOVS            R0, #0
4CCF14:  VMOV            R1, S16; int
4CCF18:  LDR.W           R6, =(ThePaths_ptr - 0x4CCF34)
4CCF1C:  VMOV            R2, S18; int
4CCF20:  MOVS            R5, #0
4CCF22:  VMOV            R3, S24; int
4CCF26:  STRD.W          R0, R5, [SP,#0x170+var_154]; int
4CCF2A:  ADD             R0, SP, #0x170+var_C8
4CCF2C:  STR             R0, [SP,#0x170+var_158]; int
4CCF2E:  ADD             R0, SP, #0x170+var_C4
4CCF30:  ADD             R6, PC; ThePaths_ptr
4CCF32:  STR             R0, [SP,#0x170+var_15C]; int
4CCF34:  ADD             R0, SP, #0x170+var_C0
4CCF36:  STR             R0, [SP,#0x170+var_160]; int
4CCF38:  LDR             R0, [R6]; ThePaths ; int
4CCF3A:  ADD             R6, SP, #0x170+var_BC
4CCF3C:  STR             R6, [SP,#0x170+var_164]; unsigned __int8
4CCF3E:  VSTR            S22, [SP,#0x170+var_170]
4CCF42:  VSTR            S30, [SP,#0x170+var_16C]
4CCF46:  VSTR            S28, [SP,#0x170+var_168]
4CCF4A:  BLX             j__ZN9CPathFind24GeneratePedCreationCoorsEffffffP7CVectorP12CNodeAddressS3_PfbP7CMatrix; CPathFind::GeneratePedCreationCoors(float,float,float,float,float,float,CVector *,CNodeAddress *,CNodeAddress *,float *,bool,CMatrix *)
4CCF4E:  CMP             R0, #0
4CCF50:  BEQ             loc_4CD016
4CCF52:  LDR.W           R0, =(ThePaths_ptr - 0x4CCF5E)
4CCF56:  LDRD.W          R1, R2, [SP,#0x170+var_C4]
4CCF5A:  ADD             R0, PC; ThePaths_ptr
4CCF5C:  UXTH            R5, R2
4CCF5E:  LDR             R0, [R0]; ThePaths
4CCF60:  LSRS            R4, R1, #0x10
4CCF62:  LSLS            R4, R4, #3
4CCF64:  UXTH            R3, R1
4CCF66:  ADDW            R0, R0, #0x804
4CCF6A:  SUB.W           R4, R4, R1,LSR#16
4CCF6E:  LDR.W           R3, [R0,R3,LSL#2]
4CCF72:  LDR.W           R5, [R0,R5,LSL#2]
4CCF76:  ADD.W           R3, R3, R4,LSL#2
4CCF7A:  LSRS            R4, R2, #0x10
4CCF7C:  LSLS            R4, R4, #3
4CCF7E:  LDRB            R3, [R3,#0x1A]
4CCF80:  SUB.W           R4, R4, R2,LSR#16
4CCF84:  AND.W           R3, R3, #0xF
4CCF88:  ADD.W           R5, R5, R4,LSL#2
4CCF8C:  LDRB            R5, [R5,#0x1A]
4CCF8E:  AND.W           R5, R5, #0xF
4CCF92:  CMP             R5, R3
4CCF94:  IT CC
4CCF96:  MOVCC           R1, R2
4CCF98:  UXTH            R2, R1
4CCF9A:  LDR.W           R0, [R0,R2,LSL#2]
4CCF9E:  LSRS            R2, R1, #0x10
4CCFA0:  LSLS            R2, R2, #3
4CCFA2:  SUB.W           R1, R2, R1,LSR#16
4CCFA6:  ADD.W           R0, R0, R1,LSL#2
4CCFAA:  LDRB            R0, [R0,#0x1A]
4CCFAC:  AND.W           R4, R0, #0xF
4CCFB0:  BLX             rand
4CCFB4:  AND.W           R0, R0, #0xF
4CCFB8:  CMP             R0, R4
4CCFBA:  BHI             loc_4CD016
4CCFBC:  LDRD.W          R4, R5, [SP,#0x170+var_C4]
4CCFC0:  BLX             rand
4CCFC4:  LDR.W           R1, =(ThePaths_ptr - 0x4CCFD2)
4CCFC8:  ADDS            R2, R6, #4
4CCFCA:  STR             R2, [SP,#0x170+var_E4]
4CCFCC:  UXTH            R3, R0
4CCFCE:  ADD             R1, PC; ThePaths_ptr
4CCFD0:  STRD.W          R6, R2, [SP,#0x170+var_170]
4CCFD4:  MOV             R2, R4
4CCFD6:  LDR             R1, [R1]; ThePaths
4CCFD8:  MOV             R0, R1
4CCFDA:  MOV             R1, R5
4CCFDC:  BLX             j__ZN9CPathFind28TakeWidthIntoAccountForCoorsE12CNodeAddressS0_tPfS1_; CPathFind::TakeWidthIntoAccountForCoors(CNodeAddress,CNodeAddress,ushort,float *,float *)
4CCFE0:  LDR             R1, [SP,#0x170+var_A4]
4CCFE2:  SUBS            R0, R1, #7
4CCFE4:  CMP             R0, #9
4CCFE6:  BHI             loc_4CCFF8
4CCFE8:  MOVS            R0, #5
4CCFEA:  ADD             R3, SP, #0x170+var_BC
4CCFEC:  STR             R0, [SP,#0x170+var_170]
4CCFEE:  ADD             R0, SP, #0x170+var_90
4CCFF0:  MOV             R2, R10
4CCFF2:  BLX             j__ZNK15CPedGroupPlacer10PlaceGroupE8ePedTypeiRK7CVectori; CPedGroupPlacer::PlaceGroup(ePedType,int,CVector const&,int)
4CCFF6:  B               loc_4CD016
4CCFF8:  ORR.W           R0, R8, R11
4CCFFC:  CMP.W           R0, #0xFFFFFFFF
4CD000:  BLE             loc_4CD05C
4CD002:  ADD             R2, SP, #0x170+var_BC
4CD004:  MOV             R3, R8
4CD006:  LDM             R2, {R0-R2}
4CD008:  STMEA.W         SP, {R0-R2}
4CD00C:  MOVS            R0, #4
4CD00E:  MOV             R1, R11
4CD010:  MOVS            R2, #5
4CD012:  BLX             j__ZN11CPopulation11PlaceCoupleE8ePedTypeiS0_i7CVector; CPopulation::PlaceCouple(ePedType,int,ePedType,int,CVector)
4CD016:  MOV             R3, R9
4CD018:  MOV             R0, R3
4CD01A:  ADD             SP, SP, #0x110
4CD01C:  VPOP            {D8-D15}
4CD020:  ADD             SP, SP, #4
4CD022:  POP.W           {R8-R11}
4CD026:  POP             {R4-R7,PC}
4CD028:  DCFS 0.6
4CD02C:  DCFS 0.42
4CD030:  DCFS 0.1
4CD034:  DCFS 950.0
4CD038:  DCFS 4.6566e-10
4CD03C:  DCFS 0.0
4CD040:  DCFS 0.9
4CD044:  DCFS 0.000015259
4CD048:  DCFS 50.5
4CD04C:  DCFS 42.5
4CD050:  DCFS 0.7
4CD054:  DCFS 2400.0
4CD058:  DCFS 2540.0
4CD05C:  LDR.W           R0, =(_ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr - 0x4CD06E)
4CD060:  VMOV.F32        S26, #2.0
4CD064:  VMOV.F32        S23, #-2.0
4CD068:  ADD             R4, SP, #0x170+var_90
4CD06A:  ADD             R0, PC; _ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr
4CD06C:  VMOV.F32        S29, #0.75
4CD070:  VLDR            S24, =0.7
4CD074:  ADD.W           R11, SP, #0x170+var_BC
4CD078:  LDR             R0, [R0]; CTaskComplexWander::ms_fTargetRadius ...
4CD07A:  MOVS            R5, #1
4CD07C:  VLDR            S28, =42.5
4CD080:  MOVS            R6, #0
4CD082:  VLDR            S30, =2400.0
4CD086:  ADD.W           R1, R4, #0x10
4CD08A:  VLDR            S22, [R0]
4CD08E:  LDR.W           R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x4CD09A)
4CD092:  VLDR            S17, =2540.0
4CD096:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
4CD098:  VLDR            S25, =0.0
4CD09C:  VLDR            S31, =4.6566e-10
4CD0A0:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
4CD0A2:  STR             R0, [SP,#0x170+var_124]
4CD0A4:  LDR.W           R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x4CD0B4)
4CD0A8:  STR.W           R9, [SP,#0x170+var_118]
4CD0AC:  MOV.W           R9, #0
4CD0B0:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
4CD0B2:  STR             R1, [SP,#0x170+var_148]
4CD0B4:  STR.W           R10, [SP,#0x170+var_F0]
4CD0B8:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
4CD0BA:  STR             R0, [SP,#0x170+var_130]
4CD0BC:  LDR.W           R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x4CD0C4)
4CD0C0:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
4CD0C2:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
4CD0C4:  STR             R0, [SP,#0x170+var_128]
4CD0C6:  LDR.W           R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x4CD0CE)
4CD0CA:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
4CD0CC:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
4CD0CE:  STR             R0, [SP,#0x170+var_134]
4CD0D0:  LDR.W           R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x4CD0D8)
4CD0D4:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
4CD0D6:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
4CD0D8:  STR             R0, [SP,#0x170+var_13C]
4CD0DA:  LDR.W           R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x4CD0E2)
4CD0DE:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
4CD0E0:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
4CD0E2:  STR             R0, [SP,#0x170+var_12C]
4CD0E4:  LDR.W           R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x4CD0EC)
4CD0E8:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
4CD0EA:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
4CD0EC:  STR             R0, [SP,#0x170+var_138]
4CD0EE:  LDR.W           R0, =(TheCamera_ptr - 0x4CD0F6)
4CD0F2:  ADD             R0, PC; TheCamera_ptr
4CD0F4:  LDR             R0, [R0]; TheCamera
4CD0F6:  STR             R0, [SP,#0x170+var_E8]
4CD0F8:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CD100)
4CD0FC:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CD0FE:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4CD100:  STR             R0, [SP,#0x170+var_EC]
4CD102:  LDR.W           R0, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x4CD10A)
4CD106:  ADD             R0, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
4CD108:  LDR             R0, [R0]; CClock::ms_nGameClockHours ...
4CD10A:  STR             R0, [SP,#0x170+var_104]
4CD10C:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CD114)
4CD110:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CD112:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4CD114:  STR             R0, [SP,#0x170+var_F4]
4CD116:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x4CD11E)
4CD11A:  ADD             R0, PC; g_surfaceInfos_ptr
4CD11C:  LDR             R0, [R0]; g_surfaceInfos
4CD11E:  STR             R0, [SP,#0x170+var_11C]
4CD120:  LDR.W           R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x4CD128)
4CD124:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
4CD126:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
4CD128:  STR             R0, [SP,#0x170+var_144]
4CD12A:  LDR.W           R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x4CD132)
4CD12E:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
4CD130:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
4CD132:  STR             R0, [SP,#0x170+var_120]
4CD134:  LDR.W           R0, =(MI_TELLY_ptr - 0x4CD13C)
4CD138:  ADD             R0, PC; MI_TELLY_ptr
4CD13A:  LDR             R0, [R0]; MI_TELLY
4CD13C:  STR             R0, [SP,#0x170+var_140]
4CD13E:  LDR.W           R0, =(_ZTV26CTaskComplexWanderCriminal_ptr - 0x4CD146)
4CD142:  ADD             R0, PC; _ZTV26CTaskComplexWanderCriminal_ptr
4CD144:  LDR             R0, [R0]; `vtable for'CTaskComplexWanderCriminal ...
4CD146:  ADDS            R0, #8
4CD148:  STR             R0, [SP,#0x170+var_110]
4CD14A:  LDR.W           R0, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x4CD152)
4CD14E:  ADD             R0, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
4CD150:  LDR             R0, [R0]; CTheScripts::ScriptsForBrains ...
4CD152:  STR             R0, [SP,#0x170+var_10C]
4CD154:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x4CD15C)
4CD158:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
4CD15A:  LDR             R0, [R0]; CPools::ms_pPedPool ...
4CD15C:  STR             R0, [SP,#0x170+var_108]
4CD15E:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CD166)
4CD162:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CD164:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4CD166:  STR             R0, [SP,#0x170+var_F8]
4CD168:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x4CD170)
4CD16C:  ADD             R0, PC; g_surfaceInfos_ptr
4CD16E:  LDR             R0, [R0]; g_surfaceInfos
4CD170:  STR             R0, [SP,#0x170+var_114]
4CD172:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CD17A)
4CD176:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CD178:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4CD17A:  STR             R0, [SP,#0x170+var_100]
4CD17C:  B.W             loc_4CDA0C
4CD180:  LDRD.W          R0, R1, [SP,#0x170+var_A8]
4CD184:  CMP             R1, #6
4CD186:  BNE             loc_4CD1B0
4CD188:  CMP             R0, #2
4CD18A:  BEQ             loc_4CD1BE
4CD18C:  CMP             R0, #5
4CD18E:  BEQ             loc_4CD1DA
4CD190:  CMP             R0, #4
4CD192:  BNE             loc_4CD220
4CD194:  LDR             R0, [SP,#0x170+var_12C]
4CD196:  MOVW            R1, #0x1668
4CD19A:  LDRB            R0, [R0,R1]
4CD19C:  CMP             R0, #1
4CD19E:  BNE.W           loc_4CDA14
4CD1A2:  MOVS            R0, #0x1D
4CD1A4:  MOVS            R1, #1
4CD1A6:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4CD1AA:  LDR             R0, [R0,#0xC]
4CD1AC:  LDR             R1, [SP,#0x170+var_138]
4CD1AE:  B               loc_4CD210
4CD1B0:  LDR             R1, [SP,#0x170+var_100]
4CD1B2:  LDR.W           R0, [R1,R0,LSL#2]
4CD1B6:  LDR             R0, [R0,#0x34]
4CD1B8:  CBNZ            R0, loc_4CD220
4CD1BA:  B.W             loc_4CDA14
4CD1BE:  LDR             R0, [SP,#0x170+var_124]
4CD1C0:  MOVW            R1, #0x1654
4CD1C4:  LDRB            R0, [R0,R1]
4CD1C6:  CMP             R0, #1
4CD1C8:  BNE.W           loc_4CDA14
4CD1CC:  MOVS            R0, #0x1C
4CD1CE:  MOVS            R1, #1
4CD1D0:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4CD1D4:  LDR             R0, [R0,#0xC]
4CD1D6:  LDR             R1, [SP,#0x170+var_130]
4CD1D8:  B               loc_4CD210
4CD1DA:  LDR             R0, [SP,#0x170+var_128]
4CD1DC:  MOVW            R1, #0x167C
4CD1E0:  LDRB            R0, [R0,R1]
4CD1E2:  CMP             R0, #1
4CD1E4:  BNE.W           loc_4CDA14
4CD1E8:  MOVS            R0, #0x1D
4CD1EA:  MOVS            R1, #1
4CD1EC:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4CD1F0:  LDR             R0, [R0,#0xC]
4CD1F2:  LDR             R1, [SP,#0x170+var_134]
4CD1F4:  ADD.W           R0, R0, R0,LSL#2
4CD1F8:  ADD.W           R0, R1, R0,LSL#2
4CD1FC:  LDRB            R0, [R0,#0x10]
4CD1FE:  CMP             R0, #1
4CD200:  BNE.W           loc_4CDA14
4CD204:  MOVS            R0, #0x10
4CD206:  MOVS            R1, #1
4CD208:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4CD20C:  LDR             R0, [R0,#0xC]
4CD20E:  LDR             R1, [SP,#0x170+var_13C]
4CD210:  ADD.W           R0, R0, R0,LSL#2
4CD214:  ADD.W           R0, R1, R0,LSL#2
4CD218:  LDRB            R0, [R0,#0x10]
4CD21A:  CMP             R0, #1
4CD21C:  BNE.W           loc_4CDA14
4CD220:  VLDR            S0, [SP,#0x170+var_B4]
4CD224:  VADD.F32        S0, S0, S24
4CD228:  VSTR            S0, [SP,#0x170+var_B4]
4CD22C:  BLX             rand
4CD230:  CMP.W           R9, #0
4CD234:  BEQ             loc_4CD2CC
4CD236:  VMOV            S0, R8
4CD23A:  VCVT.F32.S32    S27, S0
4CD23E:  VADD.F32        S19, S27, S20
4CD242:  BLX             rand
4CD246:  VMOV            S0, R0
4CD24A:  VMUL.F32        S27, S27, S29
4CD24E:  VMUL.F32        S2, S19, S29
4CD252:  VCVT.F32.S32    S0, S0
4CD256:  VSUB.F32        S21, S2, S27
4CD25A:  VMUL.F32        S19, S0, S31
4CD25E:  BLX             rand
4CD262:  VMOV            S0, R0
4CD266:  VMUL.F32        S2, S21, S19
4CD26A:  VCVT.F32.S32    S0, S0
4CD26E:  VADD.F32        S19, S27, S2
4CD272:  VMUL.F32        S0, S0, S31
4CD276:  VMUL.F32        S0, S21, S0
4CD27A:  VNEG.F32        S21, S19
4CD27E:  VADD.F32        S27, S27, S0
4CD282:  BLX             rand
4CD286:  MOV             R6, R0
4CD288:  BLX             rand
4CD28C:  LDR.W           R1, [R9,#0x14]
4CD290:  TST.W           R6, #1
4CD294:  IT EQ
4CD296:  VMOVEQ.F32      S21, S19
4CD29A:  VNEG.F32        S0, S27
4CD29E:  ADD.W           R2, R1, #0x30 ; '0'
4CD2A2:  CMP             R1, #0
4CD2A4:  IT EQ
4CD2A6:  ADDEQ.W         R2, R9, #4
4CD2AA:  TST.W           R0, #1
4CD2AE:  VLDR            S2, [R2]
4CD2B2:  VLDR            S4, [R2,#4]
4CD2B6:  IT EQ
4CD2B8:  VMOVEQ.F32      S0, S27
4CD2BC:  VADD.F32        S2, S2, S21
4CD2C0:  VADD.F32        S0, S0, S4
4CD2C4:  VSTR            S2, [SP,#0x170+var_BC]
4CD2C8:  VSTR            S0, [SP,#0x170+var_B8]
4CD2CC:  MOVS            R1, #0
4CD2CE:  MOV             R0, R11; this
4CD2D0:  MOVT            R1, #0xBF80; CVector *
4CD2D4:  MOV.W           R2, #0xFFFFFFFF; float
4CD2D8:  MOVS            R3, #0; int
4CD2DA:  STRD.W          R5, R5, [SP,#0x170+var_170]; CEntity **
4CD2DE:  STR             R5, [SP,#0x170+var_168]; unsigned __int8
4CD2E0:  BLX             j__ZN13CPedPlacement21IsPositionClearForPedERK7CVectorfiPP7CEntityhhh; CPedPlacement::IsPositionClearForPed(CVector const&,float,int,CEntity **,uchar,uchar,uchar)
4CD2E4:  CMP             R0, #1
4CD2E6:  BNE.W           loc_4CDA14
4CD2EA:  ADD.W           R6, R8, #1
4CD2EE:  CMP             R6, R10
4CD2F0:  BGE             loc_4CD32C
4CD2F2:  VLDR            S0, [SP,#0x170+var_B4]
4CD2F6:  MOVS            R3, #0
4CD2F8:  LDRD.W          R0, R1, [SP,#0x170+var_BC]; float
4CD2FC:  VADD.F32        S0, S0, S26
4CD300:  STR             R3, [SP,#0x170+var_170]; float
4CD302:  SUB.W           R3, R7, #-var_C9; float
4CD306:  VMOV            R2, S0; float
4CD30A:  BLX             j__ZN6CWorld21FindGroundZFor3DCoordEfffPbPP7CEntity; CWorld::FindGroundZFor3DCoord(float,float,float,bool *,CEntity **)
4CD30E:  LDRB.W          R1, [R7,#var_C9]
4CD312:  CMP             R1, #0
4CD314:  BEQ.W           loc_4CDA14
4CD318:  VMOV            S0, R0
4CD31C:  VLDR            S2, [SP,#0x170+var_B4]
4CD320:  VADD.F32        S0, S0, S24
4CD324:  VMAX.F32        D0, D1, D0
4CD328:  VSTR            S0, [SP,#0x170+var_B4]
4CD32C:  LDR             R0, [SP,#0x170+var_E8]; this
4CD32E:  MOV             R1, R11; CVector *
4CD330:  MOV.W           R2, #0x40000000; float
4CD334:  BLX             j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
4CD338:  CMP             R0, #1
4CD33A:  BNE             loc_4CD378
4CD33C:  VLDR            S0, [SP,#0x170+var_BC]
4CD340:  VLDR            S2, [SP,#0x170+var_B8]
4CD344:  VSUB.F32        S0, S0, S16
4CD348:  VSUB.F32        S2, S2, S18
4CD34C:  VMUL.F32        S0, S0, S0
4CD350:  VMUL.F32        S2, S2, S2
4CD354:  VADD.F32        S0, S0, S2
4CD358:  VSQRT.F32       S19, S0
4CD35C:  BLX             j__ZN11CPopulation25PedCreationDistMultiplierEv; CPopulation::PedCreationDistMultiplier(void)
4CD360:  VMOV            S0, R0
4CD364:  VMUL.F32        S0, S0, S28
4CD368:  VCMPE.F32       S19, S0
4CD36C:  VMRS            APSR_nzcv, FPSCR
4CD370:  BGE             loc_4CD378
4CD372:  MOV.W           R10, #0
4CD376:  B               loc_4CD3F4
4CD378:  LDR             R0, [SP,#0x170+var_A8]
4CD37A:  LDR             R1, [SP,#0x170+var_F8]
4CD37C:  LDR.W           R0, [R1,R0,LSL#2]
4CD380:  LDR             R0, [R0,#0x44]
4CD382:  CMP             R0, #0x28 ; '('
4CD384:  BNE             loc_4CD3F0
4CD386:  VLDR            S4, [SP,#0x170+var_B4]
4CD38A:  ADD             R0, SP, #0x170+var_A0; CVector *
4CD38C:  VLDR            S0, [SP,#0x170+var_BC]
4CD390:  ADD             R3, SP, #0x170+var_E0; int
4CD392:  VADD.F32        S6, S4, S23
4CD396:  VLDR            S2, [SP,#0x170+var_B8]
4CD39A:  VADD.F32        S0, S0, S25
4CD39E:  MOV.W           R10, #0
4CD3A2:  VADD.F32        S2, S2, S25
4CD3A6:  MOV             R2, R4; int
4CD3A8:  VADD.F32        S4, S4, S26
4CD3AC:  STR.W           R10, [SP,#0x170+var_E0]
4CD3B0:  VMOV            R1, S6; int
4CD3B4:  VSTR            S0, [SP,#0x170+var_A0]
4CD3B8:  VSTR            S2, [SP,#0x170+var_A0+4]
4CD3BC:  VSTR            S4, [SP,#0x170+var_98]
4CD3C0:  STRD.W          R5, R10, [SP,#0x170+var_170]; int
4CD3C4:  STRD.W          R10, R10, [SP,#0x170+var_168]; int
4CD3C8:  STRD.W          R10, R10, [SP,#0x170+var_160]; int
4CD3CC:  STR.W           R10, [SP,#0x170+var_158]; int
4CD3D0:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
4CD3D4:  LDR             R0, [SP,#0x170+var_E0]
4CD3D6:  CBZ             R0, loc_4CD3F4
4CD3D8:  LDRB.W          R1, [SP,#0x170+var_6D]; unsigned int
4CD3DC:  LDR             R0, [SP,#0x170+var_114]; this
4CD3DE:  BLX             j__ZN14SurfaceInfos_c11IsSkateableEj; SurfaceInfos_c::IsSkateable(uint)
4CD3E2:  MOV             R10, R0
4CD3E4:  CMP.W           R10, #0
4CD3E8:  IT NE
4CD3EA:  MOVNE.W         R10, #1
4CD3EE:  B               loc_4CD3F4
4CD3F0:  MOV.W           R10, #1
4CD3F4:  LDR             R1, [SP,#0x170+var_A8]
4CD3F6:  LDR             R0, [SP,#0x170+var_EC]
4CD3F8:  LDR.W           R0, [R0,R1,LSL#2]
4CD3FC:  LDR             R0, [R0,#0x44]
4CD3FE:  BIC.W           R0, R0, #1
4CD402:  CMP             R0, #0x26 ; '&'
4CD404:  BNE             loc_4CD414
4CD406:  LDR             R0, [SP,#0x170+var_104]
4CD408:  LDRB            R0, [R0]
4CD40A:  SUBS            R0, #8
4CD40C:  UXTB            R0, R0
4CD40E:  CMP             R0, #0xB
4CD410:  BHI.W           loc_4CDA14
4CD414:  LDR             R0, [SP,#0x170+var_A4]
4CD416:  CMP             R0, #0x11
4CD418:  IT EQ
4CD41A:  EORSEQ.W        R2, R10, #1
4CD41E:  BNE             loc_4CD4D2
4CD420:  LDR             R2, [SP,#0x170+var_108]
4CD422:  LDR.W           R12, [R2]
4CD426:  LDR.W           R3, [R12,#8]
4CD42A:  CMP             R3, #0
4CD42C:  BEQ             loc_4CD4D2
4CD42E:  LDR             R2, [SP,#0x170+var_E4]
4CD430:  STR             R6, [SP,#0x170+var_FC]
4CD432:  LDR.W           LR, [R12,#4]
4CD436:  VLDR            S0, [SP,#0x170+var_BC]
4CD43A:  VLDR            D16, [R2]
4CD43E:  VLDR            S2, =1.0e7
4CD442:  MOVW            R2, #0x7CC
4CD446:  MUL.W           R6, R3, R2
4CD44A:  SUBS            R3, #1
4CD44C:  SUBW            R5, R6, #0x7CC
4CD450:  LDRSB.W         R6, [LR,R3]
4CD454:  CMP             R6, #0
4CD456:  BLT             loc_4CD4A2
4CD458:  LDR.W           R6, [R12]
4CD45C:  ADDS            R6, R6, R5
4CD45E:  BEQ             loc_4CD4A2
4CD460:  LDR.W           R2, [R6,#0x59C]
4CD464:  CMP             R2, #0x11
4CD466:  BNE             loc_4CD4A2
4CD468:  LDR             R2, [R6,#0x14]
4CD46A:  ADD.W           R4, R2, #0x30 ; '0'
4CD46E:  CMP             R2, #0
4CD470:  IT EQ
4CD472:  ADDEQ           R4, R6, #4
4CD474:  VLDR            S4, [R4]
4CD478:  VLDR            D17, [R4,#4]
4CD47C:  VSUB.F32        S4, S0, S4
4CD480:  VSUB.F32        D17, D16, D17
4CD484:  VMUL.F32        D3, D17, D17
4CD488:  VMUL.F32        S4, S4, S4
4CD48C:  VADD.F32        S4, S4, S6
4CD490:  VADD.F32        S4, S4, S7
4CD494:  VSQRT.F32       S4, S4
4CD498:  VCMPE.F32       S4, S2
4CD49C:  VMRS            APSR_nzcv, FPSCR
4CD4A0:  BLT             loc_4CD4AE
4CD4A2:  SUBS            R3, #1
4CD4A4:  SUBW            R5, R5, #0x7CC
4CD4A8:  ADDS            R2, R3, #1
4CD4AA:  BNE             loc_4CD450
4CD4AC:  B               loc_4CD4B8
4CD4AE:  VMOV.F32        S2, S4
4CD4B2:  CMP             R3, #0
4CD4B4:  BNE             loc_4CD442
4CD4B6:  B               loc_4CD4BC
4CD4B8:  VMOV.F32        S4, S2
4CD4BC:  VMOV.F32        S0, #20.0
4CD4C0:  LDR             R6, [SP,#0x170+var_FC]
4CD4C2:  ADD             R4, SP, #0x170+var_90
4CD4C4:  MOVS            R5, #1
4CD4C6:  VCMPE.F32       S4, S0
4CD4CA:  VMRS            APSR_nzcv, FPSCR
4CD4CE:  BLT.W           loc_4CDA14
4CD4D2:  SUBS            R2, R0, #7
4CD4D4:  CMP             R2, #0xA
4CD4D6:  MOV.W           R2, #0
4CD4DA:  IT CC
4CD4DC:  MOVCC           R2, #1
4CD4DE:  CMP             R0, #8
4CD4E0:  BEQ             loc_4CD528
4CD4E2:  AND.W           R2, R2, R10
4CD4E6:  CMP             R2, #1
4CD4E8:  BNE             loc_4CD528
4CD4EA:  VLDR            S0, [SP,#0x170+var_BC]
4CD4EE:  VCMPE.F32       S0, S30
4CD4F2:  VMRS            APSR_nzcv, FPSCR
4CD4F6:  BLE             loc_4CD528
4CD4F8:  VCMPE.F32       S0, S17
4CD4FC:  VMRS            APSR_nzcv, FPSCR
4CD500:  BGE             loc_4CD528
4CD502:  VLDR            S0, [SP,#0x170+var_B8]
4CD506:  VLDR            S2, =-1730.0
4CD50A:  LDR.W           R10, [SP,#0x170+var_F0]
4CD50E:  VCMPE.F32       S0, S2
4CD512:  VMRS            APSR_nzcv, FPSCR
4CD516:  BLE             loc_4CD534
4CD518:  VLDR            S2, =-1625.0
4CD51C:  VCMPE.F32       S0, S2
4CD520:  VMRS            APSR_nzcv, FPSCR
4CD524:  BGE             loc_4CD534
4CD526:  B               loc_4CDA14
4CD528:  CMP.W           R10, #1
4CD52C:  LDR.W           R10, [SP,#0x170+var_F0]
4CD530:  BNE.W           loc_4CDA14
4CD534:  MOV             R2, R11
4CD536:  MOVS            R3, #1
4CD538:  BLX             j__ZN11CPopulation6AddPedE8ePedTypejRK7CVectorb; CPopulation::AddPed(ePedType,uint,CVector const&,bool)
4CD53C:  MOV             R11, R0
4CD53E:  LDR             R0, [SP,#0x170+var_A8]
4CD540:  LDR             R1, [SP,#0x170+var_F4]
4CD542:  LDR.W           R0, [R1,R0,LSL#2]
4CD546:  LDR             R0, [R0,#0x44]
4CD548:  BIC.W           R0, R0, #1; this
4CD54C:  CMP             R0, #0x26 ; '&'
4CD54E:  BNE.W           loc_4CD71C
4CD552:  BLX             rand
4CD556:  TST.W           R0, #3
4CD55A:  BEQ.W           loc_4CD71C
4CD55E:  VLDR            S4, [SP,#0x170+var_B4]
4CD562:  MOVS            R0, #0
4CD564:  VLDR            S0, [SP,#0x170+var_BC]
4CD568:  ADD             R3, SP, #0x170+var_E0; int
4CD56A:  VADD.F32        S6, S4, S23
4CD56E:  VLDR            S2, [SP,#0x170+var_B8]
4CD572:  VADD.F32        S0, S0, S25
4CD576:  STR             R0, [SP,#0x170+var_E0]
4CD578:  VADD.F32        S2, S2, S25
4CD57C:  MOV             R2, R4; int
4CD57E:  VADD.F32        S4, S4, S26
4CD582:  VMOV            R1, S6; int
4CD586:  VSTR            S0, [SP,#0x170+var_A0]
4CD58A:  VSTR            S2, [SP,#0x170+var_A0+4]
4CD58E:  VSTR            S4, [SP,#0x170+var_98]
4CD592:  STRD.W          R5, R0, [SP,#0x170+var_170]; int
4CD596:  STRD.W          R0, R0, [SP,#0x170+var_168]; int
4CD59A:  STRD.W          R0, R0, [SP,#0x170+var_160]; int
4CD59E:  STR             R0, [SP,#0x170+var_158]; int
4CD5A0:  ADD             R0, SP, #0x170+var_A0; CVector *
4CD5A2:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
4CD5A6:  LDR             R0, [SP,#0x170+var_E0]
4CD5A8:  CMP             R0, #0
4CD5AA:  BEQ.W           loc_4CD71C
4CD5AE:  LDRB.W          R1, [SP,#0x170+var_6D]; unsigned int
4CD5B2:  LDR             R0, [SP,#0x170+var_11C]; this
4CD5B4:  BLX             j__ZN14SurfaceInfos_c7IsBeachEj; SurfaceInfos_c::IsBeach(uint)
4CD5B8:  CBNZ            R0, loc_4CD5D2
4CD5BA:  LDRB.W          R0, [SP,#0x170+var_6D]
4CD5BE:  CMP             R0, #0x22 ; '"'
4CD5C0:  IT NE
4CD5C2:  CMPNE           R0, #0xA0
4CD5C4:  BEQ             loc_4CD5D2
4CD5C6:  LDR             R0, [SP,#0x170+var_144]
4CD5C8:  LDRB.W          R0, [R0,#0x31]; this
4CD5CC:  CMP             R0, #0
4CD5CE:  BEQ.W           loc_4CD71C
4CD5D2:  BLX             j__ZN20CTaskComplexSunbathe11CanSunbatheEv; CTaskComplexSunbathe::CanSunbathe(void)
4CD5D6:  LDR             R1, [SP,#0x170+var_120]
4CD5D8:  LDRB.W          R1, [R1,#0x31]
4CD5DC:  CMP             R1, #0
4CD5DE:  IT EQ
4CD5E0:  CMPEQ           R0, #0
4CD5E2:  BEQ.W           loc_4CD71C
4CD5E6:  MOVS            R0, #0
4CD5E8:  MOVS            R1, #0
4CD5EA:  STRD.W          R0, R0, [SP,#0x170+var_A0]
4CD5EE:  ADD             R0, SP, #0x170+var_BC; this
4CD5F0:  ADD             R3, SP, #0x170+var_A0; int
4CD5F2:  MOVS            R4, #(stderr+1)
4CD5F4:  MOVT            R1, #0x4040; CVector *
4CD5F8:  MOVS            R2, #2; float
4CD5FA:  STRD.W          R4, R4, [SP,#0x170+var_170]; CEntity **
4CD5FE:  STR             R4, [SP,#0x170+var_168]; int
4CD600:  BLX             j__ZN13CPedPlacement21IsPositionClearForPedERK7CVectorfiPP7CEntityhhh; CPedPlacement::IsPositionClearForPed(CVector const&,float,int,CEntity **,uchar,uchar,uchar)
4CD604:  CMP             R0, #1
4CD606:  BNE             loc_4CD63C
4CD608:  LDRD.W          R0, R1, [SP,#0x170+var_A0]
4CD60C:  MOVS            R2, #0
4CD60E:  CMP             R0, R11
4CD610:  IT EQ
4CD612:  MOVEQ           R2, #1
4CD614:  CMP             R0, #0
4CD616:  MOV.W           R0, #0
4CD61A:  IT EQ
4CD61C:  MOVEQ           R0, #1
4CD61E:  CMP             R1, R11
4CD620:  ORR.W           R0, R0, R2
4CD624:  MOV.W           R2, #0
4CD628:  IT EQ
4CD62A:  MOVEQ           R2, #1
4CD62C:  CMP             R1, #0
4CD62E:  MOV.W           R1, #0
4CD632:  IT EQ
4CD634:  MOVEQ           R1, #1
4CD636:  ORRS            R1, R2
4CD638:  AND.W           R4, R1, R0
4CD63C:  CMP             R4, #0
4CD63E:  ADD             R4, SP, #0x170+var_90
4CD640:  BEQ             loc_4CD71C
4CD642:  LDR.W           R0, [R11,#0x14]
4CD646:  VMOV.F32        S6, #10.0
4CD64A:  MOV             R2, R4; int
4CD64C:  LDRB.W          R4, [SP,#0x170+var_6D]
4CD650:  ADD.W           R1, R0, #0x30 ; '0'
4CD654:  CMP             R0, #0
4CD656:  IT EQ
4CD658:  ADDEQ.W         R1, R11, #4
4CD65C:  ADD             R3, SP, #0x170+var_D0; int
4CD65E:  VLDR            D16, [R1]
4CD662:  LDR             R0, [R1,#8]
4CD664:  MOVS            R1, #0
4CD666:  STR             R0, [SP,#0x170+var_98]
4CD668:  MOVS            R0, #0
4CD66A:  VSTR            D16, [SP,#0x170+var_A0]
4CD66E:  MOVT            R1, #0xC120; int
4CD672:  VLDR            S0, [SP,#0x170+var_A0]
4CD676:  VLDR            S2, [SP,#0x170+var_A0+4]
4CD67A:  VLDR            S4, [SP,#0x170+var_98]
4CD67E:  VADD.F32        S0, S0, S25
4CD682:  VADD.F32        S2, S2, S25
4CD686:  STR             R5, [SP,#0x170+var_170]; int
4CD688:  VADD.F32        S4, S4, S6
4CD68C:  VSTR            S0, [SP,#0x170+var_E0]
4CD690:  VSTR            S2, [SP,#0x170+var_E0+4]
4CD694:  VSTR            S4, [SP,#0x170+var_D8]
4CD698:  STRD.W          R0, R0, [SP,#0x170+var_16C]; int
4CD69C:  STRD.W          R0, R5, [SP,#0x170+var_164]; int
4CD6A0:  STRD.W          R0, R0, [SP,#0x170+var_15C]; int
4CD6A4:  ADD             R0, SP, #0x170+var_E0; CVector *
4CD6A6:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
4CD6AA:  CMP             R0, #1
4CD6AC:  BNE.W           loc_4CDA08
4CD6B0:  VLDR            S0, [SP,#0x170+var_80]
4CD6B4:  VLDR            S2, [SP,#0x170+var_7C]
4CD6B8:  VMUL.F32        S0, S0, S25
4CD6BC:  VLDR            S4, [SP,#0x170+var_78]
4CD6C0:  VMUL.F32        S2, S2, S25
4CD6C4:  VADD.F32        S0, S0, S2
4CD6C8:  VLDR            S2, =0.95
4CD6CC:  VADD.F32        S0, S4, S0
4CD6D0:  VCMPE.F32       S0, S2
4CD6D4:  VMRS            APSR_nzcv, FPSCR
4CD6D8:  BLE.W           loc_4CDA08
4CD6DC:  BLX             rand
4CD6E0:  VMOV            S0, R0
4CD6E4:  VLDR            S2, =6.2832
4CD6E8:  ADD.W           R1, R11, #0x560
4CD6EC:  VCVT.F32.S32    S0, S0
4CD6F0:  LDR.W           R0, [R11,#0x14]; this
4CD6F4:  CMP             R0, #0
4CD6F6:  VMUL.F32        S0, S0, S31
4CD6FA:  VADD.F32        S0, S0, S25
4CD6FE:  VMUL.F32        S27, S0, S2
4CD702:  VSTR            S27, [R1]
4CD706:  ADDW            R1, R11, #0x55C
4CD70A:  VSTR            S27, [R1]
4CD70E:  BEQ.W           loc_4CD85E
4CD712:  VMOV            R1, S27; x
4CD716:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
4CD71A:  B               loc_4CD862
4CD71C:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
4CD720:  CMP             R0, #1
4CD722:  BNE             loc_4CD792
4CD724:  BLX             rand
4CD728:  TST.W           R0, #3
4CD72C:  BEQ             loc_4CD7D4
4CD72E:  MOVS            R0, #dword_38; this
4CD730:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4CD734:  MOV             R5, R4
4CD736:  MOV             R4, R0
4CD738:  BLX             rand
4CD73C:  UXTH            R0, R0
4CD73E:  VLDR            S2, =0.000015259
4CD742:  VMOV            S0, R0
4CD746:  MOVS            R1, #6; int
4CD748:  MOVS            R3, #1; bool
4CD74A:  VCVT.F32.S32    S0, S0
4CD74E:  VMUL.F32        S0, S0, S2
4CD752:  VMOV.F32        S2, #8.0
4CD756:  VMUL.F32        S0, S0, S2
4CD75A:  VCVT.S32.F32    S0, S0
4CD75E:  VSTR            S22, [SP,#0x170+var_170]
4CD762:  VMOV            R0, S0
4CD766:  UXTB            R2, R0; unsigned __int8
4CD768:  MOV             R0, R4; this
4CD76A:  BLX             j__ZN18CTaskComplexWanderC2Eihbf; CTaskComplexWander::CTaskComplexWander(int,uchar,bool,float)
4CD76E:  MOVS            R0, #0
4CD770:  MOV             R1, R4; CTask *
4CD772:  STRH            R0, [R4,#0x30]
4CD774:  MOVS            R2, #4; int
4CD776:  STR             R0, [R4,#0x34]
4CD778:  MOVS            R3, #0; bool
4CD77A:  STRD.W          R0, R0, [R4,#0x28]
4CD77E:  LDR             R0, [SP,#0x170+var_110]
4CD780:  STR             R0, [R4]
4CD782:  MOV             R4, R5
4CD784:  LDR.W           R0, [R11,#0x440]
4CD788:  MOVS            R5, #1
4CD78A:  ADDS            R0, #4; this
4CD78C:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
4CD790:  B               loc_4CD79E
4CD792:  LDR             R0, [SP,#0x170+var_10C]
4CD794:  MOV             R1, R11
4CD796:  MOVS            R2, #0
4CD798:  MOVS            R3, #0
4CD79A:  BLX             j__ZN17CScriptsForBrains27CheckIfNewEntityNeedsScriptEP7CEntityaP13CPedGenerator; CScriptsForBrains::CheckIfNewEntityNeedsScript(CEntity *,signed char,CPedGenerator *)
4CD79E:  LDR.W           R0, [R11,#0x18]
4CD7A2:  MOVS            R1, #0
4CD7A4:  BLX             j__ZN18CVisibilityPlugins13SetClumpAlphaEP7RpClumpi; CVisibilityPlugins::SetClumpAlpha(RpClump *,int)
4CD7A8:  CMP.W           R8, #0
4CD7AC:  IT EQ
4CD7AE:  MOVEQ           R9, R11
4CD7B0:  ADD.W           R11, SP, #0x170+var_BC
4CD7B4:  CMP.W           R10, #1
4CD7B8:  BGT.W           loc_4CDA0C
4CD7BC:  B               loc_4CDA14
4CD7BE:  ALIGN 0x10
4CD7C0:  DCFS 1.0e7
4CD7C4:  DCFS -1730.0
4CD7C8:  DCFS -1625.0
4CD7CC:  DCD _ZN6CWorld13PlayerInFocusE_ptr - 0x4CCAB8
4CD7D0:  DCD _ZN6CCheat15m_aCheatsActiveE_ptr - 0x4CCABC
4CD7D4:  LDR             R0, [SP,#0x170+var_A4]
4CD7D6:  CMP             R0, #6
4CD7D8:  BEQ             loc_4CD79E
4CD7DA:  MOV.W           R0, #(elf_hash_bucket+0x88); this
4CD7DE:  BLX             j__ZN7CObjectnwEj; CObject::operator new(uint)
4CD7E2:  STR             R6, [SP,#0x170+var_FC]
4CD7E4:  MOV             R6, R0
4CD7E6:  LDR             R0, [SP,#0x170+var_140]
4CD7E8:  MOVS            R2, #1; bool
4CD7EA:  LDRH            R1, [R0]; int
4CD7EC:  MOV             R0, R6; this
4CD7EE:  BLX             j__ZN7CObjectC2Eib; CObject::CObject(int,bool)
4CD7F2:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
4CD7F6:  MOV             R0, R11; this
4CD7F8:  LDR.W           R4, [R11,#0x440]
4CD7FC:  BLX             j__ZN18CTaskComplexWander22GetWanderTaskByPedTypeERK4CPed; CTaskComplexWander::GetWanderTaskByPedType(CPed const&)
4CD800:  MOV             R1, R0; CTask *
4CD802:  ADDS            R0, R4, #4; this
4CD804:  MOVS            R2, #4; int
4CD806:  MOVS            R3, #0; bool
4CD808:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
4CD80C:  MOVW            R0, #0x6666
4CD810:  MOVS            R5, #0
4CD812:  MOVT            R0, #0x3EE6
4CD816:  STR             R0, [SP,#0x170+var_8C]
4CD818:  MOV             R0, #0x3EB33333
4CD820:  STR             R5, [SP,#0x170+var_90]
4CD822:  STR             R0, [SP,#0x170+var_88]
4CD824:  MOVS            R0, #off_3C; this
4CD826:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4CD82A:  MOV             R4, R0
4CD82C:  MOVS            R0, #1
4CD82E:  STR             R0, [SP,#0x170+var_170]
4CD830:  MOV.W           R0, #0x13E
4CD834:  STR             R0, [SP,#0x170+var_16C]
4CD836:  MOVS            R0, #0x51 ; 'Q'
4CD838:  ADD             R2, SP, #0x170+var_90
4CD83A:  STRD.W          R0, R5, [SP,#0x170+var_168]
4CD83E:  MOV             R1, R6
4CD840:  MOV             R0, R4
4CD842:  MOVS            R3, #1
4CD844:  MOVS            R5, #1
4CD846:  LDR             R6, [SP,#0x170+var_FC]
4CD848:  BLX             j__ZN21CTaskSimpleHoldEntityC2EP7CEntityPK7CVectorhh11AnimationId12AssocGroupIdb; CTaskSimpleHoldEntity::CTaskSimpleHoldEntity(CEntity *,CVector const*,uchar,uchar,AnimationId,AssocGroupId,bool)
4CD84C:  LDR.W           R0, [R11,#0x440]
4CD850:  MOV             R1, R4; CTask *
4CD852:  MOVS            R2, #4; int
4CD854:  ADD             R4, SP, #0x170+var_90
4CD856:  ADDS            R0, #4; this
4CD858:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
4CD85C:  B               loc_4CD79E
4CD85E:  VSTR            S27, [R11,#0x10]
4CD862:  CMP             R4, #0xA0
4CD864:  STR             R6, [SP,#0x170+var_FC]
4CD866:  BEQ             loc_4CD894
4CD868:  VLDR            S0, [SP,#0x170+var_88]
4CD86C:  ADD             R0, SP, #0x170+var_A0
4CD86E:  VLDR            S2, =0.04
4CD872:  MOVS            R1, #0xB
4CD874:  VADD.F32        S0, S0, S2
4CD878:  VSTR            S0, [SP,#0x170+var_98]
4CD87C:  BLX             j__ZN11CWaterLevel14CreateBeachToyERK7CVector9eBeachToy; CWaterLevel::CreateBeachToy(CVector const&,eBeachToy)
4CD880:  MOV             R5, R0
4CD882:  CBZ             R5, loc_4CD894
4CD884:  LDR             R0, [R5,#0x14]; this
4CD886:  CBZ             R0, loc_4CD89A
4CD888:  VMOV            R1, S27; x
4CD88C:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
4CD890:  LDR             R0, [R5,#0x14]
4CD892:  B               loc_4CD8A0
4CD894:  MOVS            R0, #0
4CD896:  STR             R0, [SP,#0x170+var_14C]
4CD898:  B               loc_4CD9D6
4CD89A:  MOVS            R0, #0
4CD89C:  VSTR            S27, [R5,#0x10]
4CD8A0:  LDR             R1, [SP,#0x170+var_148]
4CD8A2:  ADD             R4, SP, #0x170+var_E0
4CD8A4:  VLDR            D16, [R1]
4CD8A8:  LDR             R1, [R1,#8]
4CD8AA:  STR             R1, [R0,#0x28]
4CD8AC:  VSTR            D16, [R0,#0x20]
4CD8B0:  LDR             R0, [R5,#0x14]
4CD8B2:  ADD.W           R1, R0, #0x20 ; ' '; CVector *
4CD8B6:  ADD.W           R2, R0, #0x10
4CD8BA:  MOV             R0, R4; CVector *
4CD8BC:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
4CD8C0:  LDR             R0, [R5,#0x14]
4CD8C2:  VLDR            D16, [SP,#0x170+var_E0]
4CD8C6:  LDR             R1, [SP,#0x170+var_D8]
4CD8C8:  STR             R1, [R0,#8]
4CD8CA:  VSTR            D16, [R0]
4CD8CE:  MOV             R0, R4; CVector *
4CD8D0:  LDR             R2, [R5,#0x14]
4CD8D2:  ADD.W           R1, R2, #0x20 ; ' '; CVector *
4CD8D6:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
4CD8DA:  LDR             R0, [R5,#0x14]
4CD8DC:  VLDR            D16, [SP,#0x170+var_E0]
4CD8E0:  LDR             R1, [SP,#0x170+var_D8]
4CD8E2:  STR             R1, [R0,#0x18]
4CD8E4:  VSTR            D16, [R0,#0x10]
4CD8E8:  LDR             R0, [R5,#0x18]
4CD8EA:  CBZ             R0, loc_4CD900
4CD8EC:  LDR             R1, [R0,#4]
4CD8EE:  LDR             R0, [R5,#0x14]
4CD8F0:  ADDS            R1, #0x10
4CD8F2:  CBZ             R0, loc_4CD8FA
4CD8F4:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
4CD8F8:  B               loc_4CD900
4CD8FA:  ADDS            R0, R5, #4
4CD8FC:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
4CD900:  MOV             R0, R5; this
4CD902:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
4CD906:  BLX             rand
4CD90A:  TST.W           R0, #3
4CD90E:  STR             R5, [SP,#0x170+var_14C]
4CD910:  BNE             loc_4CD9D6
4CD912:  VLDR            D16, [SP,#0x170+var_A0]
4CD916:  LDR             R0, [SP,#0x170+var_98]
4CD918:  STR             R0, [SP,#0x170+var_D8]
4CD91A:  VSTR            D16, [SP,#0x170+var_E0]
4CD91E:  LDR             R4, [R5,#0x14]
4CD920:  BLX             rand
4CD924:  VMOV            S0, R0
4CD928:  VMOV.F32        S2, #-0.5
4CD92C:  VCVT.F32.S32    S0, S0
4CD930:  VLDR            S4, [R4,#4]
4CD934:  VLDR            S6, [R4,#8]
4CD938:  VLDR            S8, [SP,#0x170+var_E0+4]
4CD93C:  VLDR            S10, [SP,#0x170+var_D8]
4CD940:  VMUL.F32        S0, S0, S31
4CD944:  VADD.F32        S0, S0, S2
4CD948:  VLDR            S2, [R4]
4CD94C:  VMUL.F32        S4, S4, S0
4CD950:  VMUL.F32        S2, S2, S0
4CD954:  VMUL.F32        S0, S6, S0
4CD958:  VLDR            S6, [SP,#0x170+var_E0]
4CD95C:  VADD.F32        S4, S4, S8
4CD960:  VADD.F32        S2, S2, S6
4CD964:  VADD.F32        S0, S0, S10
4CD968:  VSTR            S2, [SP,#0x170+var_E0]
4CD96C:  VSTR            S4, [SP,#0x170+var_E0+4]
4CD970:  VSTR            S0, [SP,#0x170+var_D8]
4CD974:  LDR             R4, [R5,#0x14]
4CD976:  BLX             rand
4CD97A:  VMOV            S0, R0
4CD97E:  ADD             R0, SP, #0x170+var_E0
4CD980:  VMOV.F32        S2, #-1.0
4CD984:  MOVS            R1, #6
4CD986:  VCVT.F32.S32    S0, S0
4CD98A:  VLDR            S4, [R4,#0x14]
4CD98E:  VLDR            S6, [R4,#0x18]
4CD992:  VLDR            S8, [SP,#0x170+var_E0+4]
4CD996:  VLDR            S10, [SP,#0x170+var_D8]
4CD99A:  VMUL.F32        S0, S0, S31
4CD99E:  VADD.F32        S0, S0, S0
4CD9A2:  VADD.F32        S0, S0, S2
4CD9A6:  VLDR            S2, [R4,#0x10]
4CD9AA:  VMUL.F32        S4, S4, S0
4CD9AE:  VMUL.F32        S2, S2, S0
4CD9B2:  VMUL.F32        S0, S6, S0
4CD9B6:  VLDR            S6, [SP,#0x170+var_E0]
4CD9BA:  VADD.F32        S4, S4, S8
4CD9BE:  VADD.F32        S2, S6, S2
4CD9C2:  VADD.F32        S0, S0, S10
4CD9C6:  VSTR            S2, [SP,#0x170+var_E0]
4CD9CA:  VSTR            S4, [SP,#0x170+var_E0+4]
4CD9CE:  VSTR            S0, [SP,#0x170+var_D8]
4CD9D2:  BLX             j__ZN11CWaterLevel14CreateBeachToyERK7CVector9eBeachToy; CWaterLevel::CreateBeachToy(CVector const&,eBeachToy)
4CD9D6:  BLX             rand
4CD9DA:  MOV             R4, R0
4CD9DC:  MOVS            R0, #dword_38; this
4CD9DE:  LDR.W           R5, [R11,#0x440]
4CD9E2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4CD9E6:  TST.W           R4, #3
4CD9EA:  LDR             R1, [SP,#0x170+var_14C]; CObject *
4CD9EC:  ITE EQ
4CD9EE:  MOVEQ           R2, #1
4CD9F0:  MOVNE           R2, #0; bool
4CD9F2:  MOV             R6, R0
4CD9F4:  BLX             j__ZN20CTaskComplexSunbatheC2EP7CObjectb; CTaskComplexSunbathe::CTaskComplexSunbathe(CObject *,bool)
4CD9F8:  ADDS            R0, R5, #4; this
4CD9FA:  MOV             R1, R6; CTask *
4CD9FC:  MOVS            R2, #3; int
4CD9FE:  MOVS            R3, #0; bool
4CDA00:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
4CDA04:  LDR             R6, [SP,#0x170+var_FC]
4CDA06:  MOVS            R5, #1
4CDA08:  ADD             R4, SP, #0x170+var_90
4CDA0A:  B               loc_4CD79E
4CDA0C:  MOV             R8, R6
4CDA0E:  CMP             R8, R10
4CDA10:  BLT.W           loc_4CD180
4CDA14:  LDR             R3, [SP,#0x170+var_118]
4CDA16:  B.W             loc_4CD018
