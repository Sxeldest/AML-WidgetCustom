; =========================================================
; Game Engine Function: _ZN11CPopulation10InitialiseEv
; Address            : 0x4CC1C4 - 0x4CC2B4
; =========================================================

4CC1C4:  PUSH            {R4-R7,LR}
4CC1C6:  ADD             R7, SP, #0xC
4CC1C8:  PUSH.W          {R11}
4CC1CC:  LDR             R0, =(_ZN11CPopulation16ms_nNumCivFemaleE_ptr - 0x4CC1D8)
4CC1CE:  VMOV.I32        Q8, #0
4CC1D2:  LDR             R2, =(_ZN11CPopulation30m_bOnlyCreateRandomGangMembersE_ptr - 0x4CC1DE)
4CC1D4:  ADD             R0, PC; _ZN11CPopulation16ms_nNumCivFemaleE_ptr
4CC1D6:  LDR             R3, =(_ZN11CPopulation23m_bDontCreateRandomCopsE_ptr - 0x4CC1E6)
4CC1D8:  LDR             R4, =(_ZN11CPopulation23m_bMoreCarsAndFewerPedsE_ptr - 0x4CC1E8)
4CC1DA:  ADD             R2, PC; _ZN11CPopulation30m_bOnlyCreateRandomGangMembersE_ptr
4CC1DC:  LDR             R1, [R0]; CPopulation::ms_nNumCivFemale ...
4CC1DE:  MOVS            R0, #0; this
4CC1E0:  LDR             R6, =(_ZN11CPopulation23m_AllRandomPedsThisTypeE_ptr - 0x4CC1F0)
4CC1E2:  ADD             R3, PC; _ZN11CPopulation23m_bDontCreateRandomCopsE_ptr
4CC1E4:  ADD             R4, PC; _ZN11CPopulation23m_bMoreCarsAndFewerPedsE_ptr
4CC1E6:  LDR.W           LR, [R2]; CPopulation::m_bOnlyCreateRandomGangMembers ...
4CC1EA:  STR             R0, [R1]; CPopulation::ms_nNumCivFemale
4CC1EC:  ADD             R6, PC; _ZN11CPopulation23m_AllRandomPedsThisTypeE_ptr
4CC1EE:  LDR             R1, =(_ZN11CPopulation14ms_nNumCivMaleE_ptr - 0x4CC1F6)
4CC1F0:  LDR             R2, [R3]; CPopulation::m_bDontCreateRandomCops ...
4CC1F2:  ADD             R1, PC; _ZN11CPopulation14ms_nNumCivMaleE_ptr
4CC1F4:  LDR             R3, [R4]; CPopulation::m_bMoreCarsAndFewerPeds ...
4CC1F6:  LDR             R4, [R6]; CPopulation::m_AllRandomPedsThisType ...
4CC1F8:  MOVS            R6, #5
4CC1FA:  LDR             R1, [R1]; CPopulation::ms_nNumCivMale ...
4CC1FC:  LDR.W           R12, =(_ZN11CPopulation30m_bDontCreateRandomGangMembersE_ptr - 0x4CC208)
4CC200:  LDR             R5, =(_ZN11CPopulation16bInPoliceStationE_ptr - 0x4CC20C)
4CC202:  STR             R0, [R1]; CPopulation::ms_nNumCivMale
4CC204:  ADD             R12, PC; _ZN11CPopulation30m_bDontCreateRandomGangMembersE_ptr
4CC206:  LDR             R1, =(_ZN11CPopulation10ms_nNumCopE_ptr - 0x4CC212)
4CC208:  ADD             R5, PC; _ZN11CPopulation16bInPoliceStationE_ptr
4CC20A:  LDR.W           R12, [R12]; CPopulation::m_bDontCreateRandomGangMembers ...
4CC20E:  ADD             R1, PC; _ZN11CPopulation10ms_nNumCopE_ptr
4CC210:  LDR             R5, [R5]; CPopulation::bInPoliceStation ...
4CC212:  LDR             R1, [R1]; CPopulation::ms_nNumCop ...
4CC214:  STR             R0, [R1]; CPopulation::ms_nNumCop
4CC216:  LDR             R1, =(_ZN11CPopulation16ms_nNumEmergencyE_ptr - 0x4CC21C)
4CC218:  ADD             R1, PC; _ZN11CPopulation16ms_nNumEmergencyE_ptr
4CC21A:  LDR             R1, [R1]; CPopulation::ms_nNumEmergency ...
4CC21C:  STR             R0, [R1]; CPopulation::ms_nNumEmergency
4CC21E:  LDR             R1, =(_ZN11CPopulation25ms_nTotalCarPassengerPedsE_ptr - 0x4CC224)
4CC220:  ADD             R1, PC; _ZN11CPopulation25ms_nTotalCarPassengerPedsE_ptr
4CC222:  LDR             R1, [R1]; CPopulation::ms_nTotalCarPassengerPeds ...
4CC224:  STR             R0, [R1]; CPopulation::ms_nTotalCarPassengerPeds
4CC226:  LDR             R1, =(_ZN11CPopulation16ms_nTotalCivPedsE_ptr - 0x4CC22C)
4CC228:  ADD             R1, PC; _ZN11CPopulation16ms_nTotalCivPedsE_ptr
4CC22A:  LDR             R1, [R1]; CPopulation::ms_nTotalCivPeds ...
4CC22C:  STR             R0, [R1]; CPopulation::ms_nTotalCivPeds
4CC22E:  LDR             R1, =(_ZN11CPopulation17ms_nTotalGangPedsE_ptr - 0x4CC234)
4CC230:  ADD             R1, PC; _ZN11CPopulation17ms_nTotalGangPedsE_ptr
4CC232:  LDR             R1, [R1]; CPopulation::ms_nTotalGangPeds ...
4CC234:  STR             R0, [R1]; CPopulation::ms_nTotalGangPeds
4CC236:  LDR             R1, =(_ZN11CPopulation13ms_nTotalPedsE_ptr - 0x4CC23C)
4CC238:  ADD             R1, PC; _ZN11CPopulation13ms_nTotalPedsE_ptr
4CC23A:  LDR             R1, [R1]; CPopulation::ms_nTotalPeds ...
4CC23C:  STR             R0, [R1]; CPopulation::ms_nTotalPeds
4CC23E:  LDR             R1, =(_ZN11CPopulation20ms_nTotalMissionPedsE_ptr - 0x4CC244)
4CC240:  ADD             R1, PC; _ZN11CPopulation20ms_nTotalMissionPedsE_ptr
4CC242:  LDR             R1, [R1]; CPopulation::ms_nTotalMissionPeds ...
4CC244:  STR             R0, [R1]; CPopulation::ms_nTotalMissionPeds
4CC246:  LDR             R1, =(_ZN11CPopulation24m_CountDownToPedsAtStartE_ptr - 0x4CC24C)
4CC248:  ADD             R1, PC; _ZN11CPopulation24m_CountDownToPedsAtStartE_ptr
4CC24A:  LDR             R1, [R1]; CPopulation::m_CountDownToPedsAtStart ...
4CC24C:  STRB            R6, [R1]; CPopulation::m_CountDownToPedsAtStart
4CC24E:  MOV.W           R6, #0x3F800000
4CC252:  LDR             R1, =(_ZN11CPopulation13m_bIsHospitalE_ptr - 0x4CC258)
4CC254:  ADD             R1, PC; _ZN11CPopulation13m_bIsHospitalE_ptr
4CC256:  LDR             R1, [R1]; CPopulation::m_bIsHospital ...
4CC258:  STRB            R0, [R1]; CPopulation::m_bIsHospital
4CC25A:  LDR             R1, =(_ZN11CPopulation22bZoneChangeHasHappenedE_ptr - 0x4CC260)
4CC25C:  ADD             R1, PC; _ZN11CPopulation22bZoneChangeHasHappenedE_ptr
4CC25E:  LDR             R1, [R1]; CPopulation::bZoneChangeHasHappened ...
4CC260:  STRB            R0, [R1]; CPopulation::bZoneChangeHasHappened
4CC262:  LDR             R1, =(_ZN11CPopulation20PedDensityMultiplierE_ptr - 0x4CC268)
4CC264:  ADD             R1, PC; _ZN11CPopulation20PedDensityMultiplierE_ptr
4CC266:  LDR             R1, [R1]; CPopulation::PedDensityMultiplier ...
4CC268:  STR             R6, [R1]; CPopulation::PedDensityMultiplier
4CC26A:  MOV.W           R6, #0xFFFFFFFF
4CC26E:  LDR             R1, =(_ZN11CPopulation11ms_nNumGangE_ptr - 0x4CC274)
4CC270:  ADD             R1, PC; _ZN11CPopulation11ms_nNumGangE_ptr
4CC272:  LDR             R1, [R1]; CPopulation::ms_nNumGang ...
4CC274:  STRD.W          R0, R0, [R1,#(dword_9F38B0 - 0x9F3890)]
4CC278:  VST1.32         {D16-D17}, [R1]!
4CC27C:  VST1.32         {D16-D17}, [R1]
4CC280:  LDR             R1, =(_ZN11CPopulation20MaxNumberOfPedsInUseE_ptr - 0x4CC28C)
4CC282:  STR             R6, [R4]; CPopulation::m_AllRandomPedsThisType
4CC284:  MOVS            R6, #0x19
4CC286:  LDR             R4, =(_ZN11CPopulation25NumberOfPedsInUseInteriorE_ptr - 0x4CC290)
4CC288:  ADD             R1, PC; _ZN11CPopulation20MaxNumberOfPedsInUseE_ptr
4CC28A:  STRB            R0, [R5]; CPopulation::bInPoliceStation
4CC28C:  ADD             R4, PC; _ZN11CPopulation25NumberOfPedsInUseInteriorE_ptr
4CC28E:  LDR             R1, [R1]; CPopulation::MaxNumberOfPedsInUse ...
4CC290:  STRB.W          R0, [R12]; CPopulation::m_bDontCreateRandomGangMembers
4CC294:  LDR             R4, [R4]; CPopulation::NumberOfPedsInUseInterior ...
4CC296:  STR             R6, [R1]; CPopulation::MaxNumberOfPedsInUse
4CC298:  MOVS            R1, #0x28 ; '('
4CC29A:  STRB.W          R0, [LR]; CPopulation::m_bOnlyCreateRandomGangMembers
4CC29E:  STR             R1, [R4]; CPopulation::NumberOfPedsInUseInterior
4CC2A0:  STRB            R0, [R2]; CPopulation::m_bDontCreateRandomCops
4CC2A2:  STRB            R0, [R3]; CPopulation::m_bMoreCarsAndFewerPeds
4CC2A4:  BLX             j__ZN11CPopulation13LoadPedGroupsEv; CPopulation::LoadPedGroups(void)
4CC2A8:  POP.W           {R11}
4CC2AC:  POP.W           {R4-R7,LR}
4CC2B0:  B.W             sub_19AD3C
