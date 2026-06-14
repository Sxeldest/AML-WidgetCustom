; =========================================================
; Game Engine Function: _ZN5CBike20ProcessControlInputsEh
; Address            : 0x5665B0 - 0x566A52
; =========================================================

5665B0:  PUSH            {R4-R7,LR}
5665B2:  ADD             R7, SP, #0xC
5665B4:  PUSH.W          {R8,R9,R11}
5665B8:  VPUSH           {D8-D10}
5665BC:  SUB             SP, SP, #0x68; float
5665BE:  MOV             R4, R0
5665C0:  MOV             R8, R1
5665C2:  LDR             R0, [R4,#0x14]
5665C4:  LDR.W           R1, [R4,#0x650]
5665C8:  VLDR            S0, [R0,#0x18]
5665CC:  VLDR            S2, [R1,#0x30]
5665D0:  VSUB.F32        S0, S2, S0
5665D4:  VLDR            S2, =0.36
5665D8:  VCMPE.F32       S0, S2
5665DC:  VMRS            APSR_nzcv, FPSCR
5665E0:  BLE             loc_566656
5665E2:  ADDW            R0, R4, #0x744
5665E6:  VLDR            S0, [R0]
5665EA:  VCMP.F32        S0, #0.0
5665EE:  VMRS            APSR_nzcv, FPSCR
5665F2:  BNE             loc_56662A
5665F4:  ADD.W           R0, R4, #0x748
5665F8:  VLDR            S0, [R0]
5665FC:  VCMP.F32        S0, #0.0
566600:  VMRS            APSR_nzcv, FPSCR
566604:  BNE             loc_56662A
566606:  ADDW            R0, R4, #0x74C
56660A:  VLDR            S0, [R0]
56660E:  VCMP.F32        S0, #0.0
566612:  VMRS            APSR_nzcv, FPSCR
566616:  BNE             loc_56662A
566618:  ADD.W           R0, R4, #0x750
56661C:  VLDR            S0, [R0]
566620:  VCMP.F32        S0, #0.0
566624:  VMRS            APSR_nzcv, FPSCR
566628:  BEQ             loc_566708
56662A:  MOVS            R0, #0
56662C:  MOV.W           R1, #0x3F800000
566630:  STRD.W          R0, R0, [SP,#0x98+var_78]
566634:  MOVS            R2, #0x36 ; '6'
566636:  STR             R1, [SP,#0x98+var_70]
566638:  MOVS            R1, #1
56663A:  STRD.W          R0, R0, [SP,#0x98+var_98]
56663E:  ADD             R3, SP, #0x98+var_78
566640:  STRD.W          R2, R1, [SP,#0x98+var_90]
566644:  ADD.W           R2, R4, #0x48 ; 'H'
566648:  STRD.W          R0, R0, [SP,#0x98+var_88]
56664C:  STRD.W          R1, R0, [SP,#0x98+var_80]
566650:  ADD             R0, SP, #0x98+var_6C
566652:  MOV             R1, R4
566654:  B               loc_5666D6
566656:  LDRB.W          R0, [R4,#0x42F]
56665A:  LSLS            R0, R0, #0x19
56665C:  BPL             loc_566708
56665E:  VLDR            S0, [R4,#0x48]
566662:  ADD             R6, SP, #0x98+var_78
566664:  VLDR            S2, [R4,#0x4C]
566668:  VLDR            S4, [R4,#0x50]
56666C:  VNEG.F32        S0, S0
566670:  VNEG.F32        S2, S2
566674:  MOV             R0, R6; this
566676:  VNEG.F32        S4, S4
56667A:  VSTR            S2, [SP,#0x98+var_74]
56667E:  VSTR            S0, [SP,#0x98+var_78]
566682:  VSTR            S4, [SP,#0x98+var_70]
566686:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
56668A:  VLDR            S0, [R4,#0x48]
56668E:  MOVS            R0, #0
566690:  VLDR            S2, [R4,#0x4C]
566694:  MOVS            R1, #0x35 ; '5'
566696:  VMUL.F32        S0, S0, S0
56669A:  VLDR            S4, [R4,#0x50]
56669E:  VMUL.F32        S2, S2, S2
5666A2:  VLDR            S6, [R4,#0x90]
5666A6:  VMUL.F32        S4, S4, S4
5666AA:  STRD.W          R0, R1, [SP,#0x98+var_94]; float
5666AE:  STRD.W          R0, R0, [SP,#0x98+var_8C]; int
5666B2:  ADD.W           R2, R4, #0x48 ; 'H'; int
5666B6:  STRD.W          R0, R0, [SP,#0x98+var_84]; int
5666BA:  MOV             R1, R4; this
5666BC:  STR             R0, [SP,#0x98+var_7C]; int
5666BE:  ADD             R0, SP, #0x98+var_6C; int
5666C0:  MOV             R3, R6; int
5666C2:  VADD.F32        S0, S0, S2
5666C6:  VADD.F32        S0, S0, S4
5666CA:  VSQRT.F32       S0, S0
5666CE:  VMUL.F32        S0, S6, S0
5666D2:  VSTR            S0, [SP,#0x98+var_98]
5666D6:  BLX             j__ZN18CEventKnockOffBikeC2EP8CVehicleRK7CVectorS4_ff11eWeaponTypeaiP4CPedbb; CEventKnockOffBike::CEventKnockOffBike(CVehicle *,CVector const&,CVector const&,float,float,eWeaponType,signed char,int,CPed *,bool,bool)
5666DA:  LDR.W           R0, [R4,#0x464]
5666DE:  CBZ             R0, loc_5666EE
5666E0:  LDR.W           R0, [R0,#0x440]
5666E4:  ADD             R1, SP, #0x98+var_6C; CEvent *
5666E6:  MOVS            R2, #0; bool
5666E8:  ADDS            R0, #0x68 ; 'h'; this
5666EA:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
5666EE:  LDR.W           R0, [R4,#0x468]
5666F2:  CBZ             R0, loc_566702
5666F4:  LDR.W           R0, [R0,#0x440]
5666F8:  ADD             R1, SP, #0x98+var_6C; CEvent *
5666FA:  MOVS            R2, #0; bool
5666FC:  ADDS            R0, #0x68 ; 'h'; this
5666FE:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
566702:  ADD             R0, SP, #0x98+var_6C; this
566704:  BLX             j__ZN18CEventKnockOffBikeD2Ev; CEventKnockOffBike::~CEventKnockOffBike()
566708:  LDR             R0, [R4,#0x14]
56670A:  VLDR            S0, [R4,#0x48]
56670E:  VLDR            S2, [R4,#0x4C]
566712:  VLDR            S6, [R0,#0x10]
566716:  VLDR            S8, [R0,#0x14]
56671A:  VMUL.F32        S0, S0, S6
56671E:  VLDR            S10, [R0,#0x18]
566722:  VMUL.F32        S2, S2, S8
566726:  VLDR            S4, [R4,#0x50]
56672A:  MOV             R0, R8; this
56672C:  VMUL.F32        S4, S4, S10
566730:  VADD.F32        S0, S0, S2
566734:  VADD.F32        S16, S0, S4
566738:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
56673C:  BLX             j__ZN4CPad14GetExitVehicleEv; CPad::GetExitVehicle(void)
566740:  CBZ             R0, loc_566748
566742:  MOVS            R1, #0
566744:  MOVS            R0, #0x20 ; ' '
566746:  B               loc_56675E
566748:  MOV             R0, R8; this
56674A:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
56674E:  BLX             j__ZN4CPad12GetHandBrakeEv; CPad::GetHandBrake(void)
566752:  CMP             R0, #0
566754:  MOV.W           R1, #0
566758:  IT NE
56675A:  MOVNE           R0, #1
56675C:  LSLS            R0, R0, #5
56675E:  LDR.W           R2, [R4,#0x42C]
566762:  LDR.W           R3, [R4,#0x430]
566766:  BIC.W           R2, R2, #0x20 ; ' '
56676A:  ORRS            R0, R2
56676C:  STR.W           R0, [R4,#0x42C]
566770:  MOV             R0, R8; this
566772:  ORRS            R1, R3; int
566774:  STR.W           R1, [R4,#0x430]
566778:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
56677C:  BLX             j__ZN4CPad20GetSteeringLeftRightEv; CPad::GetSteeringLeftRight(void)
566780:  NEGS            R0, R0
566782:  VLDR            S18, =0.0078125
566786:  ADDW            R9, R4, #0x59C
56678A:  VLDR            S20, =0.2
56678E:  VMOV            S0, R0
566792:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5667A0)
566794:  VCVT.F32.S32    S0, S0
566798:  VLDR            S2, [R9]
56679C:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
56679E:  LDR             R5, [R0]; CTimer::ms_fTimeStep ...
5667A0:  MOV             R0, R8; this
5667A2:  VLDR            S4, [R5]
5667A6:  VMUL.F32        S0, S0, S18
5667AA:  VSUB.F32        S0, S0, S2
5667AE:  VMUL.F32        S0, S0, S20
5667B2:  VMUL.F32        S0, S4, S0
5667B6:  VADD.F32        S0, S2, S0
5667BA:  VSTR            S0, [R9]
5667BE:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5667C2:  BLX             j__ZN4CPad17GetSteeringUpDownEv; CPad::GetSteeringUpDown(void)
5667C6:  NEGS            R0, R0
5667C8:  ADDW            R6, R4, #0x664
5667CC:  VMOV            S0, R0
5667D0:  MOV             R0, R4; this
5667D2:  VCVT.F32.S32    S0, S0
5667D6:  VLDR            S2, [R6]
5667DA:  VLDR            S4, [R5]
5667DE:  VMUL.F32        S0, S0, S18
5667E2:  VSUB.F32        S0, S0, S2
5667E6:  VMUL.F32        S0, S0, S20
5667EA:  VMUL.F32        S0, S4, S0
5667EE:  VADD.F32        S0, S2, S0
5667F2:  VSTR            S0, [R6]
5667F6:  BLX             j__ZN8CVehicle17GetNewSteeringAmtEv; CVehicle::GetNewSteeringAmt(void)
5667FA:  VMOV.F32        S0, #-1.0
5667FE:  VLDR            S2, [R9]
566802:  VMOV            S4, R0
566806:  VLDR            S6, [R6]
56680A:  VMOV.F32        S8, #1.0
56680E:  MOV             R0, R8; this
566810:  VADD.F32        S2, S4, S2
566814:  VMAX.F32        D16, D3, D0
566818:  VMIN.F32        D2, D16, D4
56681C:  VMAX.F32        D16, D1, D0
566820:  VMIN.F32        D0, D16, D4
566824:  VSTR            S4, [R6]
566828:  VSTR            S0, [R9]
56682C:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
566830:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
566834:  MOV             R6, R0
566836:  MOV             R0, R8; this
566838:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
56683C:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
566840:  SUBS            R0, R6, R0
566842:  VLDR            S18, =255.0
566846:  VLDR            S2, =0.01
56684A:  ADDW            R6, R4, #0x42C
56684E:  VMOV            S0, R0
566852:  VCVT.F32.S32    S0, S0
566856:  VDIV.F32        S20, S0, S18
56685A:  VABS.F32        S0, S16
56685E:  VCMPE.F32       S0, S2
566862:  VMRS            APSR_nzcv, FPSCR
566866:  BGE             loc_56689C
566868:  MOV             R0, R8; this
56686A:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
56686E:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
566872:  CMP             R0, #0x97
566874:  BLT             loc_56688C
566876:  MOV             R0, R8; this
566878:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
56687C:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
566880:  CMP             R0, #0x97
566882:  BLT             loc_56688C
566884:  LDR.W           R0, [R4,#0x5A4]
566888:  CMP             R0, #0xA
56688A:  BNE             loc_5668E8
56688C:  MOVS            R0, #0
56688E:  STR.W           R0, [R4,#0x4A4]
566892:  ADD.W           R0, R4, #0x4A0
566896:  VSTR            S20, [R0]
56689A:  B               loc_56692A
56689C:  VCMPE.F32       S16, #0.0
5668A0:  ADD.W           R0, R4, #0x4A0
5668A4:  VMRS            APSR_nzcv, FPSCR
5668A8:  BGE             loc_5668C2
5668AA:  VCMPE.F32       S20, #0.0
5668AE:  VMRS            APSR_nzcv, FPSCR
5668B2:  BLT             loc_5668CC
5668B4:  MOVS            R1, #0
5668B6:  STR             R1, [R0]
5668B8:  ADDW            R0, R4, #0x4A4
5668BC:  VSTR            S20, [R0]
5668C0:  B               loc_56692A
5668C2:  VCMPE.F32       S20, #0.0
5668C6:  VMRS            APSR_nzcv, FPSCR
5668CA:  BLT             loc_5668D8
5668CC:  VSTR            S20, [R0]
5668D0:  MOVS            R0, #0
5668D2:  STR.W           R0, [R4,#0x4A4]
5668D6:  B               loc_56692A
5668D8:  VNEG.F32        S0, S20
5668DC:  MOVS            R1, #0
5668DE:  STR             R1, [R0]
5668E0:  B               loc_566922
5668E2:  ALIGN 4
5668E4:  DCFS 0.36
5668E8:  MOV             R0, R8; this
5668EA:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5668EE:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
5668F2:  VMOV            S0, R0
5668F6:  ADD.W           R0, R4, #0x4A0
5668FA:  VCVT.F32.S32    S0, S0
5668FE:  VDIV.F32        S0, S0, S18
566902:  VSTR            S0, [R0]
566906:  MOV             R0, R8; this
566908:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
56690C:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
566910:  VMOV            S0, R0
566914:  MOVS            R0, #1
566916:  VCVT.F32.S32    S0, S0
56691A:  STRH.W          R0, [R4,#0x7BC]
56691E:  VDIV.F32        S0, S0, S18
566922:  ADDW            R0, R4, #0x4A4
566926:  VSTR            S0, [R0]
56692A:  LDRSB.W         R0, [R4,#0x428]
56692E:  CMP             R0, #0
566930:  BLT             loc_56693C
566932:  LDR             R1, =(_ZN17CVehicleRecording9bUseCarAIE_ptr - 0x566938)
566934:  ADD             R1, PC; _ZN17CVehicleRecording9bUseCarAIE_ptr
566936:  LDR             R1, [R1]; CVehicleRecording::bUseCarAI ...
566938:  LDRB            R0, [R1,R0]
56693A:  CBZ             R0, loc_566964
56693C:  LDR.W           R0, [R4,#0x388]
566940:  VLDR            S0, =3.1416
566944:  VLDR            S2, [R0,#0xA0]
566948:  ADD.W           R0, R4, #0x498
56694C:  VMUL.F32        S0, S2, S0
566950:  VLDR            S2, =180.0
566954:  VDIV.F32        S0, S0, S2
566958:  VLDR            S2, [R9]
56695C:  VMUL.F32        S0, S2, S0
566960:  VSTR            S0, [R0]
566964:  LDR             R0, [R6]
566966:  TST.W           R0, #0x1000
56696A:  BEQ             loc_5669BE
56696C:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x566978)
56696E:  BIC.W           R0, R0, #0x20 ; ' '
566972:  LDR             R1, [R6,#4]
566974:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
566976:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
566978:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
56697A:  UBFX.W          R3, R2, #0xC, #2
56697E:  CMP             R3, #2
566980:  ITT LS
566982:  MOVLS.W         R3, #0x3F800000
566986:  STRLS.W         R3, [R4,#0x4A0]
56698A:  MOVS            R3, #6
56698C:  ADD.W           R3, R3, R2,LSR#10
566990:  AND.W           R3, R3, #0xC
566994:  CMP             R3, #0xB
566996:  ITT LS
566998:  MOVLS           R3, #0
56699A:  STRLS.W         R3, [R4,#0x4A4]
56699E:  STRD.W          R0, R1, [R6]
5669A2:  ADD.W           R0, R4, #0x498
5669A6:  LSLS            R1, R2, #0x14
5669A8:  ADR             R1, dword_566A78
5669AA:  VLDR            S0, [R0]
5669AE:  IT MI
5669B0:  ADDMI           R1, #4; int
5669B2:  VLDR            S2, [R1]
5669B6:  VADD.F32        S0, S0, S2
5669BA:  VSTR            S0, [R0]
5669BE:  MOVS            R0, #0; this
5669C0:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5669C4:  LDRH.W          R0, [R0,#0x110]
5669C8:  CBZ             R0, loc_566A46
5669CA:  LDR             R0, =(_ZN10CGameLogic9SkipStateE_ptr - 0x5669D0)
5669CC:  ADD             R0, PC; _ZN10CGameLogic9SkipStateE_ptr
5669CE:  LDR             R0, [R0]; CGameLogic::SkipState ...
5669D0:  LDR             R0, [R0]; CGameLogic::SkipState
5669D2:  CMP             R0, #2
5669D4:  BEQ             loc_566A46
5669D6:  LDR             R1, [R6]
5669D8:  MOV.W           R0, #0x3F800000
5669DC:  ORR.W           R1, R1, #0x20 ; ' '
5669E0:  STR             R1, [R6]
5669E2:  MOVS            R1, #0
5669E4:  STR.W           R1, [R4,#0x4A0]
5669E8:  STR.W           R0, [R4,#0x4A4]
5669EC:  MOV.W           R0, #0xFFFFFFFF; int
5669F0:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
5669F4:  BLX             j__ZN10CPlayerPed25KeepAreaAroundPlayerClearEv; CPlayerPed::KeepAreaAroundPlayerClear(void)
5669F8:  VLDR            S0, [R4,#0x48]
5669FC:  VLDR            S4, [R4,#0x4C]
566A00:  VMUL.F32        S8, S0, S0
566A04:  VLDR            S2, [R4,#0x50]
566A08:  VMUL.F32        S6, S4, S4
566A0C:  VMUL.F32        S10, S2, S2
566A10:  VADD.F32        S6, S8, S6
566A14:  VLDR            S8, =0.28
566A18:  VADD.F32        S6, S6, S10
566A1C:  VSQRT.F32       S6, S6
566A20:  VCMPE.F32       S6, S8
566A24:  VMRS            APSR_nzcv, FPSCR
566A28:  BLE             loc_566A46
566A2A:  VDIV.F32        S6, S8, S6
566A2E:  VMUL.F32        S0, S0, S6
566A32:  VMUL.F32        S4, S4, S6
566A36:  VMUL.F32        S2, S2, S6
566A3A:  VSTR            S0, [R4,#0x48]
566A3E:  VSTR            S4, [R4,#0x4C]
566A42:  VSTR            S2, [R4,#0x50]
566A46:  ADD             SP, SP, #0x68 ; 'h'
566A48:  VPOP            {D8-D10}
566A4C:  POP.W           {R8,R9,R11}
566A50:  POP             {R4-R7,PC}
