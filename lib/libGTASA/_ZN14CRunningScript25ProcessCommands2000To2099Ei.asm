; =========================================================
; Game Engine Function: _ZN14CRunningScript25ProcessCommands2000To2099Ei
; Address            : 0x335758 - 0x337604
; =========================================================

335758:  PUSH            {R4-R7,LR}
33575A:  ADD             R7, SP, #0xC
33575C:  PUSH.W          {R8-R11}
335760:  SUB             SP, SP, #4
335762:  VPUSH           {D8-D10}
335766:  SUB             SP, SP, #0xB0; float
335768:  MOV             R4, R0
33576A:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x335772)
33576E:  ADD             R0, PC; __stack_chk_guard_ptr
335770:  LDR             R0, [R0]; __stack_chk_guard
335772:  LDR             R0, [R0]
335774:  STR             R0, [SP,#0xE8+var_3C]
335776:  SUB.W           R0, R1, #0x7D0; switch 100 cases
33577A:  CMP             R0, #0x63 ; 'c'
33577C:  BHI.W           def_335782; jumptable 00335782 default case, cases 2008,2009,2050,2091-2095
335780:  MOVS            R6, #0
335782:  TBH.W           [PC,R0,LSL#1]; switch jump
335786:  DCW 0x64; jump table for switch statement
335788:  DCW 0xEF6
33578A:  DCW 0xEF6
33578C:  DCW 0x6F
33578E:  DCW 0xEF6
335790:  DCW 0xA3
335792:  DCW 0xC2
335794:  DCW 0xD0
335796:  DCW 0xE8
335798:  DCW 0xE8
33579A:  DCW 0xEB
33579C:  DCW 0x14A
33579E:  DCW 0xEF6
3357A0:  DCW 0x169
3357A2:  DCW 0x183
3357A4:  DCW 0x19C
3357A6:  DCW 0x1C1
3357A8:  DCW 0x1D0
3357AA:  DCW 0xEF6
3357AC:  DCW 0xEF6
3357AE:  DCW 0x20E
3357B0:  DCW 0x23C
3357B2:  DCW 0x24E
3357B4:  DCW 0x260
3357B6:  DCW 0x280
3357B8:  DCW 0xEF6
3357BA:  DCW 0xEF6
3357BC:  DCW 0xEF6
3357BE:  DCW 0xEF6
3357C0:  DCW 0xEF6
3357C2:  DCW 0x297
3357C4:  DCW 0x2BA
3357C6:  DCW 0x2D1
3357C8:  DCW 0x364
3357CA:  DCW 0x38D
3357CC:  DCW 0x3B6
3357CE:  DCW 0xEF6
3357D0:  DCW 0x3DB
3357D2:  DCW 0x3FA
3357D4:  DCW 0x41F
3357D6:  DCW 0x43E
3357D8:  DCW 0x45D
3357DA:  DCW 0x466
3357DC:  DCW 0x474
3357DE:  DCW 0x48E
3357E0:  DCW 0x51F
3357E2:  DCW 0x535
3357E4:  DCW 0x554
3357E6:  DCW 0x573
3357E8:  DCW 0x578
3357EA:  DCW 0xE8
3357EC:  DCW 0x58A
3357EE:  DCW 0x5A9
3357F0:  DCW 0xEF6
3357F2:  DCW 0x643
3357F4:  DCW 0xEF6
3357F6:  DCW 0xEF6
3357F8:  DCW 0xEF6
3357FA:  DCW 0x650
3357FC:  DCW 0x66D
3357FE:  DCW 0xEF6
335800:  DCW 0xEF6
335802:  DCW 0x675
335804:  DCW 0xEF6
335806:  DCW 0x68E
335808:  DCW 0x6CD
33580A:  DCW 0x6FA
33580C:  DCW 0xEF6
33580E:  DCW 0x702
335810:  DCW 0x75F
335812:  DCW 0x82B
335814:  DCW 0x84A
335816:  DCW 0x87A
335818:  DCW 0x8B9
33581A:  DCW 0x8D8
33581C:  DCW 0xEF6
33581E:  DCW 0x8F2
335820:  DCW 0x91F
335822:  DCW 0x949
335824:  DCW 0x955
335826:  DCW 0x961
335828:  DCW 0xEF6
33582A:  DCW 0x971
33582C:  DCW 0x987
33582E:  DCW 0xEF6
335830:  DCW 0x9A5
335832:  DCW 0x9C3
335834:  DCW 0x9D7
335836:  DCW 0x9F5
335838:  DCW 0xA07
33583A:  DCW 0xA3F
33583C:  DCW 0xE8
33583E:  DCW 0xE8
335840:  DCW 0xE8
335842:  DCW 0xE8
335844:  DCW 0xE8
335846:  DCW 0xA54
335848:  DCW 0xA73
33584A:  DCW 0xEF6
33584C:  DCW 0xA7A
33584E:  LDR.W           R0, =(_ZN6CClock10CurrentDayE_ptr - 0x33585A); jumptable 00335782 case 2000
335852:  LDR.W           R1, =(ScriptParams_ptr - 0x33585C)
335856:  ADD             R0, PC; _ZN6CClock10CurrentDayE_ptr
335858:  ADD             R1, PC; ScriptParams_ptr
33585A:  LDR             R0, [R0]; CClock::CurrentDay ...
33585C:  LDR             R1, [R1]; ScriptParams
33585E:  LDRB            R0, [R0]; CClock::CurrentDay
335860:  B.W             loc_3373CA
335864:  MOV             R0, R4; jumptable 00335782 case 2003
335866:  MOVS            R1, #1; __int16
335868:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33586C:  LDR.W           R0, =(ScriptParams_ptr - 0x335878)
335870:  LDR.W           R1, =(_ZN11CTheScripts15StreamedScriptsE_ptr - 0x33587A)
335874:  ADD             R0, PC; ScriptParams_ptr
335876:  ADD             R1, PC; _ZN11CTheScripts15StreamedScriptsE_ptr
335878:  LDR             R0, [R0]; ScriptParams
33587A:  LDR             R1, [R1]; CTheScripts::StreamedScripts ...
33587C:  LDR             R2, [R0]
33587E:  MOVS            R0, #0
335880:  UXTH            R2, R2
335882:  SXTH            R3, R0
335884:  ADD.W           R3, R1, R3,LSL#5
335888:  LDRH            R3, [R3,#6]
33588A:  CMP             R3, R2
33588C:  BEQ             loc_33589A
33588E:  ADDS            R0, #1
335890:  SXTH            R0, R0
335892:  CMP             R0, #0x52 ; 'R'
335894:  BLT             loc_335882
335896:  MOVW            R0, #0xFFFF
33589A:  LDR.W           R1, =(ScriptParams_ptr - 0x3358A8)
33589E:  ADD             R5, SP, #0xE8+var_50
3358A0:  SXTH            R0, R0
3358A2:  MOVS            R2, #8; unsigned __int8
3358A4:  ADD             R1, PC; ScriptParams_ptr
3358A6:  LDR             R6, [R1]; ScriptParams
3358A8:  MOV             R1, R5; char *
3358AA:  STR             R0, [R6]
3358AC:  MOV             R0, R4; this
3358AE:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3358B2:  LDR.W           R0, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x3358C2)
3358B6:  MOV             R2, R5; char *
3358B8:  LDRSH.W         R1, [R6]; __int16
3358BC:  MOVS            R3, #3; signed __int8
3358BE:  ADD             R0, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
3358C0:  LDR             R0, [R0]; this
3358C2:  BLX             j__ZN17CScriptsForBrains35AddNewStreamedScriptBrainForCodeUseEsPca; CScriptsForBrains::AddNewStreamedScriptBrainForCodeUse(short,char *,signed char)
3358C6:  MOVS            R6, #0
3358C8:  B.W             loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
3358CC:  MOV             R0, R4; jumptable 00335782 case 2005
3358CE:  MOVS            R1, #7; __int16
3358D0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3358D4:  LDR.W           R0, =(ScriptParams_ptr - 0x3358DC)
3358D8:  ADD             R0, PC; ScriptParams_ptr
3358DA:  LDR             R0, [R0]; ScriptParams
3358DC:  LDR             R1, [R0]
3358DE:  CMP             R1, #0
3358E0:  BLT.W           loc_336CE0
3358E4:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3358F0)
3358E8:  UXTB            R3, R1
3358EA:  LSRS            R1, R1, #8
3358EC:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3358EE:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
3358F0:  LDR             R0, [R0]; CPools::ms_pVehiclePool
3358F2:  LDR             R2, [R0,#4]
3358F4:  LDRB            R2, [R2,R1]
3358F6:  CMP             R2, R3
3358F8:  BNE.W           loc_336CE0
3358FC:  MOVW            R2, #0xA2C
335900:  LDR             R0, [R0]
335902:  MLA.W           R4, R1, R2, R0
335906:  B.W             loc_336CE2
33590A:  MOV             R0, R4; jumptable 00335782 case 2006
33590C:  MOVS            R1, #1; unsigned __int8
33590E:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
335912:  MOV             R5, R0
335914:  MOV             R0, R4; this
335916:  MOVS            R1, #2; unsigned __int8
335918:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
33591C:  LDR             R1, [R5]
33591E:  MOVS            R6, #0
335920:  LDR             R0, [R0]
335922:  CMP             R0, R1
335924:  B               loc_33594A
335926:  MOV             R0, R4; jumptable 00335782 case 2007
335928:  MOVS            R1, #1; unsigned __int8
33592A:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
33592E:  MOV             R5, R0
335930:  MOV             R0, R4; this
335932:  MOVS            R1, #2; unsigned __int8
335934:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
335938:  VLDR            S0, [R5]
33593C:  MOVS            R6, #0
33593E:  VLDR            S2, [R0]
335942:  VCMP.F32        S2, S0
335946:  VMRS            APSR_nzcv, FPSCR
33594A:  MOV.W           R1, #0
33594E:  IT EQ
335950:  MOVEQ           R1, #1
335952:  B.W             loc_3361EA
335956:  MOVS            R6, #0xFF; jumptable 00335782 default case, cases 2008,2009,2050,2091-2095
335958:  B.W             loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
33595C:  MOV             R0, R4; jumptable 00335782 case 2010
33595E:  MOVS            R1, #4; __int16
335960:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
335964:  LDR.W           R0, =(ScriptParams_ptr - 0x335974)
335968:  MOVW            R2, #0xA2C
33596C:  VLDR            S0, =50.0
335970:  ADD             R0, PC; ScriptParams_ptr
335972:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33597C)
335976:  LDR             R0, [R0]; ScriptParams
335978:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33597A:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33597C:  VLDR            S2, [R0,#4]
335980:  VLDR            S4, [R0,#8]
335984:  VLDR            S6, [R0,#0xC]
335988:  VDIV.F32        S2, S2, S0
33598C:  LDR             R0, [R0]
33598E:  LDR             R1, [R1]; CPools::ms_pVehiclePool
335990:  LSRS            R0, R0, #8
335992:  LDR             R1, [R1]
335994:  MLA.W           R4, R0, R2, R1
335998:  ADD             R0, SP, #0xE8+var_68; CMatrix *
33599A:  ADD             R2, SP, #0xE8+var_B8
33599C:  VDIV.F32        S4, S4, S0
3359A0:  VDIV.F32        S0, S6, S0
3359A4:  VLDR            S20, [R4,#0x54]
3359A8:  VLDR            S18, [R4,#0x58]
3359AC:  VLDR            S16, [R4,#0x5C]
3359B0:  VSTR            S2, [SP,#0xE8+var_B8]
3359B4:  VSTR            S4, [SP,#0xE8+var_B8+4]
3359B8:  VSTR            S0, [SP,#0xE8+var_B0]
3359BC:  LDR             R1, [R4,#0x14]; CVector *
3359BE:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
3359C2:  VLDR            D16, [SP,#0xE8+var_68]
3359C6:  ADD.W           R8, R4, #0x5C ; '\'
3359CA:  LDR             R0, [SP,#0xE8+var_60]
3359CC:  ADD.W           R6, R4, #0x58 ; 'X'
3359D0:  STR             R0, [SP,#0xE8+var_B0]
3359D2:  ADD.W           R5, R4, #0x54 ; 'T'
3359D6:  VSTR            D16, [SP,#0xE8+var_B8]
3359DA:  VLDR            S0, [SP,#0xE8+var_B8]
3359DE:  VLDR            S2, [SP,#0xE8+var_B8+4]
3359E2:  VLDR            S4, [SP,#0xE8+var_B0]
3359E6:  VADD.F32        S20, S20, S0
3359EA:  VADD.F32        S18, S18, S2
3359EE:  LDRB            R0, [R4,#0x1C]
3359F0:  VADD.F32        S16, S16, S4
3359F4:  LSLS            R0, R0, #0x1D
3359F6:  BPL             loc_335A08
3359F8:  LDR             R0, [R4]
3359FA:  MOVS            R1, #0
3359FC:  LDR             R2, [R0,#0x14]
3359FE:  MOV             R0, R4
335A00:  BLX             R2
335A02:  MOV             R0, R4; this
335A04:  BLX             j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
335A08:  VSTR            S20, [R5]
335A0C:  VSTR            S18, [R6]
335A10:  MOVS            R6, #0
335A12:  VSTR            S16, [R8]
335A16:  B.W             loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
335A1A:  MOV             R0, R4; jumptable 00335782 case 2011
335A1C:  MOVS            R1, #4; __int16
335A1E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
335A22:  LDR.W           R0, =(ScriptParams_ptr - 0x335A2A)
335A26:  ADD             R0, PC; ScriptParams_ptr
335A28:  LDR             R0, [R0]; ScriptParams
335A2A:  LDR             R1, [R0]
335A2C:  CMP             R1, #0
335A2E:  BLT.W           loc_336E0C
335A32:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x335A3E)
335A36:  UXTB            R3, R1
335A38:  LSRS            R1, R1, #8
335A3A:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
335A3C:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
335A3E:  LDR             R0, [R0]; CPools::ms_pVehiclePool
335A40:  LDR             R2, [R0,#4]
335A42:  LDRB            R2, [R2,R1]
335A44:  CMP             R2, R3
335A46:  BNE.W           loc_336E0C
335A4A:  MOVW            R2, #0xA2C
335A4E:  LDR             R0, [R0]
335A50:  MLA.W           R4, R1, R2, R0
335A54:  B.W             loc_336E0E
335A58:  MOV             R0, R4; jumptable 00335782 case 2013
335A5A:  MOVS            R1, #2; __int16
335A5C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
335A60:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x335A72)
335A64:  MOVW            R3, #0x7CC
335A68:  LDR.W           R0, =(ScriptParams_ptr - 0x335A74)
335A6C:  MOVS            R6, #0
335A6E:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
335A70:  ADD             R0, PC; ScriptParams_ptr
335A72:  LDR             R1, [R1]; CPools::ms_pPedPool ...
335A74:  LDR             R0, [R0]; ScriptParams
335A76:  LDRD.W          R2, R0, [R0]
335A7A:  LDR             R1, [R1]; CPools::ms_pPedPool
335A7C:  LSRS            R2, R2, #8
335A7E:  LDR             R1, [R1]
335A80:  MLA.W           R1, R2, R3, R1
335A84:  STRB.W          R0, [R1,#0x71D]
335A88:  B.W             loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
335A8C:  MOV             R0, R4; jumptable 00335782 case 2014
335A8E:  MOVS            R1, #1; __int16
335A90:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
335A94:  LDR.W           R0, =(ScriptParams_ptr - 0x335A9C)
335A98:  ADD             R0, PC; ScriptParams_ptr
335A9A:  LDR             R0, [R0]; ScriptParams
335A9C:  LDR             R0, [R0]
335A9E:  CMP.W           R0, #0xFFFFFFFF
335AA2:  BGT             loc_335AB8
335AA4:  LDR.W           R1, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x335AAE)
335AA8:  NEGS            R0, R0
335AAA:  ADD             R1, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
335AAC:  RSB.W           R0, R0, R0,LSL#3
335AB0:  LDR             R1, [R1]; int
335AB2:  ADD.W           R0, R1, R0,LSL#2
335AB6:  LDR             R0, [R0,#0x18]; this
335AB8:  BLX             j__ZN10CStreaming17IsObjectInCdImageEi; CStreaming::IsObjectInCdImage(int)
335ABC:  B               loc_336270
335ABE:  MOV             R0, R4; jumptable 00335782 case 2015
335AC0:  MOVS            R1, #4; __int16
335AC2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
335AC6:  LDR.W           R0, =(ScriptParams_ptr - 0x335ACE)
335ACA:  ADD             R0, PC; ScriptParams_ptr
335ACC:  LDR             R0, [R0]; ScriptParams
335ACE:  VLDR            S0, [R0]
335AD2:  VLDR            S4, [R0,#8]
335AD6:  VLDR            S2, [R0,#4]
335ADA:  VLDR            S6, [R0,#0xC]
335ADE:  VMIN.F32        D4, D0, D2
335AE2:  VMAX.F32        D0, D0, D2
335AE6:  VMIN.F32        D2, D1, D3
335AEA:  VMAX.F32        D1, D1, D3
335AEE:  VMOV            R0, S8; this
335AF2:  VMOV            R1, S0; float
335AF6:  VMOV            R2, S4; float
335AFA:  VMOV            R3, S2; float
335AFE:  BLX             j__ZN8CShadows15RemoveOilInAreaEffff; CShadows::RemoveOilInArea(float,float,float,float)
335B02:  MOVS            R6, #0
335B04:  B.W             loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
335B08:  MOV             R0, R4; jumptable 00335782 case 2016
335B0A:  MOVS            R1, #2; __int16
335B0C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
335B10:  LDR.W           R0, =(ScriptParams_ptr - 0x335B18)
335B14:  ADD             R0, PC; ScriptParams_ptr
335B16:  LDR             R0, [R0]; ScriptParams
335B18:  LDRB            R1, [R0,#(dword_81A90C - 0x81A908)]; int
335B1A:  LDR             R0, [R0]; this
335B1C:  BLX             j__ZN6CRadar15SetBlipFriendlyEih; CRadar::SetBlipFriendly(int,uchar)
335B20:  MOVS            R6, #0
335B22:  B.W             loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
335B26:  MOV             R0, R4; jumptable 00335782 case 2017
335B28:  MOVS            R1, #4; __int16
335B2A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
335B2E:  LDR.W           R0, =(ScriptParams_ptr - 0x335B36)
335B32:  ADD             R0, PC; ScriptParams_ptr
335B34:  LDR             R0, [R0]; ScriptParams
335B36:  LDRD.W          R5, R1, [R0]; unsigned int
335B3A:  LDRD.W          R2, R0, [R0,#(dword_81A910 - 0x81A908)]
335B3E:  STRD.W          R1, R2, [SP,#0xE8+var_68]
335B42:  STR             R0, [SP,#0xE8+var_60]
335B44:  ADDS            R0, R5, #1
335B46:  BEQ.W           loc_336CC2
335B4A:  CMP             R5, #0
335B4C:  BLT.W           loc_336CC2
335B50:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x335B5C)
335B54:  LSRS            R1, R5, #8
335B56:  UXTB            R3, R5
335B58:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
335B5A:  LDR             R0, [R0]; CPools::ms_pPedPool ...
335B5C:  LDR             R0, [R0]; CPools::ms_pPedPool
335B5E:  LDR             R2, [R0,#4]
335B60:  LDRB            R2, [R2,R1]
335B62:  CMP             R2, R3
335B64:  BNE.W           loc_336CC2
335B68:  MOVW            R2, #0x7CC
335B6C:  LDR             R0, [R0]
335B6E:  MLA.W           R6, R1, R2, R0
335B72:  CMP             R6, #0
335B74:  BEQ.W           loc_336CC2
335B78:  LDR.W           R0, [R6,#0x440]; this
335B7C:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
335B80:  CMP             R0, #0
335B82:  BEQ.W           loc_336CC2
335B86:  ADD.W           R0, R6, #0x440
335B8A:  LDR             R0, [R0]; this
335B8C:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
335B90:  VLDR            D16, [SP,#0xE8+var_68]
335B94:  MOVS            R6, #0
335B96:  LDR             R1, [SP,#0xE8+var_60]
335B98:  STR             R1, [R0,#0x1C]
335B9A:  VSTR            D16, [R0,#0x14]
335B9E:  B.W             loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
335BA2:  MOV             R0, R4; jumptable 00335782 case 2020
335BA4:  MOVS            R1, #1; __int16
335BA6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
335BAA:  LDR.W           R0, =(ScriptParams_ptr - 0x335BB2)
335BAE:  ADD             R0, PC; ScriptParams_ptr
335BB0:  LDR             R0, [R0]; ScriptParams
335BB2:  LDR             R0, [R0]
335BB4:  CMP.W           R0, #0xFFFFFFFF
335BB8:  BGT             loc_335BCE
335BBA:  LDR.W           R1, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x335BC4)
335BBE:  NEGS            R0, R0
335BC0:  ADD             R1, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
335BC2:  RSB.W           R0, R0, R0,LSL#3
335BC6:  LDR             R1, [R1]; CTheScripts::UsedObjectArray ...
335BC8:  ADD.W           R0, R1, R0,LSL#2
335BCC:  LDR             R0, [R0,#0x18]
335BCE:  LDR.W           R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x335BDA)
335BD2:  LDR.W           R2, =(ScriptParams_ptr - 0x335BDC)
335BD6:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
335BD8:  ADD             R2, PC; ScriptParams_ptr
335BDA:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
335BDC:  LDR.W           R0, [R1,R0,LSL#2]
335BE0:  LDR             R1, [R2]; ScriptParams
335BE2:  LDR             R0, [R0,#0x2C]
335BE4:  MOV             R2, R0
335BE6:  LDR             R0, [R0,#0x14]
335BE8:  VLD1.32         {D16-D17}, [R2]!
335BEC:  LDR             R2, [R2]
335BEE:  STR             R0, [R1,#(dword_81A91C - 0x81A908)]
335BF0:  MOV             R0, R4
335BF2:  VST1.32         {D16-D17}, [R1]!
335BF6:  STR             R2, [R1]
335BF8:  MOVS            R1, #6
335BFA:  B.W             loc_3373D0
335BFE:  MOV             R0, R4; jumptable 00335782 case 2021
335C00:  MOVS            R1, #1; __int16
335C02:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
335C06:  LDR.W           R0, =(ScriptParams_ptr - 0x335C0E)
335C0A:  ADD             R0, PC; ScriptParams_ptr
335C0C:  LDR             R0, [R0]; ScriptParams
335C0E:  LDR             R0, [R0]; this
335C10:  ADDS            R1, R0, #1
335C12:  BEQ.W           loc_3373D8
335C16:  MOVS            R1, #7; int
335C18:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
335C1C:  MOV             R5, R0
335C1E:  B.W             loc_3373DC
335C22:  MOV             R0, R4; jumptable 00335782 case 2022
335C24:  MOVS            R1, #1; __int16
335C26:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
335C2A:  LDR.W           R0, =(ScriptParams_ptr - 0x335C32)
335C2E:  ADD             R0, PC; ScriptParams_ptr
335C30:  LDR             R0, [R0]; ScriptParams
335C32:  LDR             R0, [R0]; this
335C34:  ADDS            R1, R0, #1
335C36:  BEQ.W           loc_33743E
335C3A:  MOVS            R1, #7; int
335C3C:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
335C40:  MOV             R5, R0
335C42:  B.W             loc_337442
335C46:  MOV             R0, R4; jumptable 00335782 case 2023
335C48:  MOVS            R1, #6; __int16
335C4A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
335C4E:  LDR.W           R0, =(ScriptParams_ptr - 0x335C56)
335C52:  ADD             R0, PC; ScriptParams_ptr
335C54:  LDR             R0, [R0]; ScriptParams
335C56:  LDRD.W          R8, R0, [R0]
335C5A:  CMP             R0, #0
335C5C:  BLT.W           loc_336E9E
335C60:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x335C6C)
335C64:  UXTB            R3, R0
335C66:  LSRS            R0, R0, #8
335C68:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
335C6A:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
335C6C:  LDR             R1, [R1]; CPools::ms_pVehiclePool
335C6E:  LDR             R2, [R1,#4]
335C70:  LDRB            R2, [R2,R0]
335C72:  CMP             R2, R3
335C74:  BNE.W           loc_336E9E
335C78:  MOVW            R2, #0xA2C
335C7C:  LDR             R1, [R1]
335C7E:  MLA.W           R9, R0, R2, R1
335C82:  B.W             loc_336EA2
335C86:  MOV             R0, R4; jumptable 00335782 case 2024
335C88:  MOVS            R1, #3; __int16
335C8A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
335C8E:  LDR.W           R0, =(ScriptParams_ptr - 0x335C96)
335C92:  ADD             R0, PC; ScriptParams_ptr
335C94:  LDR             R2, [R0]; ScriptParams ; int
335C96:  LDM.W           R2, {R0,R1,R5}; int
335C9A:  BLX             j__ZN8CPedType23GetPedTypeAcquaintancesEii; CPedType::GetPedTypeAcquaintances(int,int)
335C9E:  MOV             R6, R0
335CA0:  MOV             R0, R5; this
335CA2:  BLX             j__ZN8CPedType10GetPedFlagEi; CPedType::GetPedFlag(int)
335CA6:  ANDS.W          R1, R0, R6
335CAA:  MOV             R0, R4
335CAC:  IT NE
335CAE:  MOVNE           R1, #1
335CB0:  B.W             loc_337002
335CB4:  MOV             R0, R4; jumptable 00335782 case 2030
335CB6:  MOVS            R1, #2; __int16
335CB8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
335CBC:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x335CCE)
335CC0:  MOVW            R3, #0xA2C
335CC4:  LDR.W           R0, =(ScriptParams_ptr - 0x335CD0)
335CC8:  MOVS            R6, #0
335CCA:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
335CCC:  ADD             R0, PC; ScriptParams_ptr
335CCE:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
335CD0:  LDR             R0, [R0]; ScriptParams
335CD2:  LDRD.W          R2, R0, [R0]
335CD6:  CMP             R0, #0
335CD8:  LDR             R1, [R1]; CPools::ms_pVehiclePool
335CDA:  MOV.W           R2, R2,LSR#8
335CDE:  LDR             R1, [R1]
335CE0:  MLA.W           R1, R2, R3, R1
335CE4:  LDR.W           R2, [R1,#0x430]
335CE8:  BIC.W           R3, R2, #0x100
335CEC:  IT NE
335CEE:  ORRNE.W         R3, R2, #0x100
335CF2:  STR.W           R3, [R1,#0x430]
335CF6:  B.W             loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
335CFA:  MOV             R0, R4; jumptable 00335782 case 2031
335CFC:  MOVS            R1, #3; __int16
335CFE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
335D02:  LDR.W           R0, =(ScriptParams_ptr - 0x335D0C)
335D06:  ADD             R3, SP, #0xE8+var_68
335D08:  ADD             R0, PC; ScriptParams_ptr
335D0A:  LDR             R5, [R0]; ScriptParams
335D0C:  LDM.W           R5, {R0-R2}; CVector *
335D10:  STM             R3!, {R0-R2}
335D12:  ADD             R0, SP, #0xE8+var_68; this
335D14:  BLX             j__ZN9CTheZones20GetLevelFromPositionEPK7CVector; CTheZones::GetLevelFromPosition(CVector const*)
335D18:  B               loc_336420
335D1A:  ALIGN 4
335D1C:  DCFS 50.0
335D20:  DCFS -100.0
335D24:  DCFS 640.0
335D28:  MOV             R0, R4; jumptable 00335782 case 2032
335D2A:  MOVS            R1, #5; __int16
335D2C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
335D30:  LDR.W           R0, =(ScriptParams_ptr - 0x335D3C)
335D34:  VLDR            S2, =-100.0
335D38:  ADD             R0, PC; ScriptParams_ptr
335D3A:  LDR             R0, [R0]; ScriptParams
335D3C:  VLDR            S0, [R0,#8]
335D40:  VLDR            S16, [R0]
335D44:  VCMPE.F32       S0, S2
335D48:  VLDR            S18, [R0,#4]
335D4C:  VMRS            APSR_nzcv, FPSCR
335D50:  BGT             loc_335D62
335D52:  VMOV            R0, S16; this
335D56:  VMOV            R1, S18; float
335D5A:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
335D5E:  VMOV            S0, R0
335D62:  LDR.W           R0, =(ScriptParams_ptr - 0x335D6E)
335D66:  VSTR            S18, [SP,#0xE8+var_A0+4]
335D6A:  ADD             R0, PC; ScriptParams_ptr
335D6C:  VSTR            S16, [SP,#0xE8+var_A0]
335D70:  VSTR            S0, [SP,#0xE8+var_98]
335D74:  LDR             R1, [R0]; ScriptParams
335D76:  LDR.W           R8, [R1,#(dword_81A918 - 0x81A908)]
335D7A:  VLDR            S2, [R1,#0xC]
335D7E:  CMP.W           R8, #0xFFFFFFFF
335D82:  BGT             loc_335D9C
335D84:  LDR.W           R1, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x335D90)
335D88:  RSB.W           R0, R8, #0
335D8C:  ADD             R1, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
335D8E:  RSB.W           R0, R0, R0,LSL#3
335D92:  LDR             R1, [R1]; CTheScripts::UsedObjectArray ...
335D94:  ADD.W           R0, R1, R0,LSL#2
335D98:  LDR.W           R8, [R0,#0x18]
335D9C:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x335DA4)
335DA0:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
335DA2:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
335DA4:  LDR             R1, [R1]; CPools::ms_pObjectPool
335DA6:  LDR             R3, [R1,#8]
335DA8:  CMP             R3, #0
335DAA:  BEQ.W           loc_336CBE
335DAE:  MOV.W           R2, #0x1A4
335DB2:  MOVW            LR, #0xFEE2
335DB6:  MULS            R2, R3
335DB8:  MOVW            R12, #0xFED0
335DBC:  SUBS            R3, #1
335DBE:  MOVT            LR, #0xFFFF
335DC2:  MOVT            R12, #0xFFFF
335DC6:  SUBS            R2, #0x60 ; '`'
335DC8:  LDR             R5, [R1,#4]
335DCA:  LDRSB           R5, [R5,R3]
335DCC:  CMP             R5, #0
335DCE:  BLT             loc_335E40
335DD0:  LDR             R5, [R1]
335DD2:  ADD             R5, R2
335DD4:  CMP.W           R5, #0x144
335DD8:  BEQ             loc_335E40
335DDA:  LDRB            R6, [R5,#1]
335DDC:  LSLS            R6, R6, #0x1D
335DDE:  BPL             loc_335E40
335DE0:  LDRSH.W         R6, [R5,LR]
335DE4:  CMP             R8, R6
335DE6:  BNE             loc_335E40
335DE8:  LDR.W           R6, [R5,R12]
335DEC:  ADD.W           R0, R6, #0x30 ; '0'
335DF0:  CMP             R6, #0
335DF2:  IT EQ
335DF4:  SUBEQ.W         R0, R5, #0x140
335DF8:  VLDR            S4, [R0]
335DFC:  VLDR            S6, [R0,#4]
335E00:  VSUB.F32        S4, S16, S4
335E04:  VLDR            S8, [R0,#8]
335E08:  VSUB.F32        S6, S18, S6
335E0C:  VSUB.F32        S8, S0, S8
335E10:  VMUL.F32        S12, S4, S4
335E14:  VMUL.F32        S10, S6, S6
335E18:  VSTR            S6, [SP,#0xE8+var_A8]
335E1C:  VMUL.F32        S14, S8, S8
335E20:  VSTR            S4, [SP,#0xE8+var_AC]
335E24:  VSTR            S8, [SP,#0xE8+var_A4]
335E28:  VADD.F32        S10, S12, S10
335E2C:  VADD.F32        S10, S10, S14
335E30:  VSQRT.F32       S10, S10
335E34:  VCMPE.F32       S10, S2
335E38:  VMRS            APSR_nzcv, FPSCR
335E3C:  BLE.W           loc_337600
335E40:  SUBS            R3, #1
335E42:  SUB.W           R2, R2, #0x1A4
335E46:  ADDS            R0, R3, #1
335E48:  BNE             loc_335DC8
335E4A:  B.W             loc_336CBE
335E4E:  MOV             R0, R4; jumptable 00335782 case 2033
335E50:  MOVS            R1, #1; __int16
335E52:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
335E56:  LDR.W           R0, =(ScriptParams_ptr - 0x335E62)
335E5A:  MOV.W           R1, #0x194
335E5E:  ADD             R0, PC; ScriptParams_ptr
335E60:  LDR             R0, [R0]; ScriptParams
335E62:  LDR             R5, [R0]
335E64:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x335E6E)
335E68:  MULS            R1, R5
335E6A:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
335E6C:  LDR             R0, [R0]; CWorld::Players ...
335E6E:  LDR             R0, [R0,R1]
335E70:  LDRB.W          R1, [R0,#0x485]
335E74:  LSLS            R1, R1, #0x1F
335E76:  BEQ.W           loc_336CBE
335E7A:  LDR.W           R0, [R0,#0x590]; this
335E7E:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
335E82:  CMP             R0, #2
335E84:  BNE.W           loc_336CBE
335E88:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x335E94)
335E8C:  MOV.W           R1, #0x194
335E90:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
335E92:  LDR             R0, [R0]; CWorld::Players ...
335E94:  MLA.W           R0, R5, R1, R0
335E98:  LDR.W           R1, [R0,#0x104]
335E9C:  B.W             loc_336A60
335EA0:  MOV             R0, R4; jumptable 00335782 case 2034
335EA2:  MOVS            R1, #1; __int16
335EA4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
335EA8:  LDR.W           R0, =(ScriptParams_ptr - 0x335EB4)
335EAC:  MOV.W           R1, #0x194
335EB0:  ADD             R0, PC; ScriptParams_ptr
335EB2:  LDR             R0, [R0]; ScriptParams
335EB4:  LDR             R5, [R0]
335EB6:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x335EC0)
335EBA:  MULS            R1, R5
335EBC:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
335EBE:  LDR             R0, [R0]; CWorld::Players ...
335EC0:  LDR             R0, [R0,R1]
335EC2:  LDRB.W          R1, [R0,#0x485]
335EC6:  LSLS            R1, R1, #0x1F
335EC8:  BEQ.W           loc_336CBE
335ECC:  LDR.W           R0, [R0,#0x590]; this
335ED0:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
335ED4:  CMP             R0, #2
335ED6:  BNE.W           loc_336CBE
335EDA:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x335EE6)
335EDE:  MOV.W           R1, #0x194
335EE2:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
335EE4:  LDR             R0, [R0]; CWorld::Players ...
335EE6:  MLA.W           R0, R5, R1, R0
335EEA:  LDR.W           R1, [R0,#0x10C]
335EEE:  B.W             loc_336A60
335EF2:  MOV             R0, R4; jumptable 00335782 case 2035
335EF4:  MOVS            R1, #4; __int16
335EF6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
335EFA:  LDR.W           R0, =(ScriptParams_ptr - 0x335F02)
335EFE:  ADD             R0, PC; ScriptParams_ptr
335F00:  LDR             R1, [R0]; ScriptParams
335F02:  LDM.W           R1, {R0,R2,R3}; unsigned __int8
335F06:  LDR             R1, [R1,#(dword_81A914 - 0x81A908)]
335F08:  STRD.W          R2, R3, [SP,#0xE8+var_A0]
335F0C:  STR             R1, [SP,#0xE8+var_98]
335F0E:  MOVS            R1, #3; int
335F10:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
335F14:  CMP             R0, #0
335F16:  BLT.W           def_336FB0; jumptable 00336FB0 default case
335F1A:  LDR.W           R1, =(_ZN11CTheScripts21ScriptCheckpointArrayE_ptr - 0x335F22)
335F1E:  ADD             R1, PC; _ZN11CTheScripts21ScriptCheckpointArrayE_ptr
335F20:  LDR             R1, [R1]; CTheScripts::ScriptCheckpointArray ...
335F22:  ADD.W           R0, R1, R0,LSL#3
335F26:  LDR             R0, [R0,#4]
335F28:  CMP             R0, #0
335F2A:  BEQ.W           def_336FB0; jumptable 00336FB0 default case
335F2E:  LDR             R0, [R0,#4]; this
335F30:  ADD             R1, SP, #0xE8+var_A0; unsigned int
335F32:  BLX             j__ZN12CCheckpoints9UpdatePosEjR7CVector; CCheckpoints::UpdatePos(uint,CVector &)
335F36:  MOVS            R6, #0
335F38:  B.W             loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
335F3C:  MOV             R0, R4; jumptable 00335782 case 2037
335F3E:  MOVS            R1, #5; __int16
335F40:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
335F44:  LDR.W           R0, =(ScriptParams_ptr - 0x335F4C)
335F48:  ADD             R0, PC; ScriptParams_ptr
335F4A:  LDR             R0, [R0]; ScriptParams
335F4C:  LDR             R1, [R0]
335F4E:  CMP             R1, #0
335F50:  BLT.W           loc_336EC2
335F54:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x335F60)
335F58:  UXTB            R3, R1
335F5A:  LSRS            R1, R1, #8
335F5C:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
335F5E:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
335F60:  LDR             R0, [R0]; CPools::ms_pVehiclePool
335F62:  LDR             R2, [R0,#4]
335F64:  LDRB            R2, [R2,R1]
335F66:  CMP             R2, R3
335F68:  BNE.W           loc_336EC2
335F6C:  MOVW            R2, #0xA2C
335F70:  LDR             R0, [R0]
335F72:  MLA.W           R4, R1, R2, R0
335F76:  B.W             loc_336EC4
335F7A:  MOV             R0, R4; jumptable 00335782 case 2038
335F7C:  MOVS            R1, #1; __int16
335F7E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
335F82:  LDR.W           R0, =(ScriptParams_ptr - 0x335F8C)
335F86:  MOVS            R1, #8; int
335F88:  ADD             R0, PC; ScriptParams_ptr
335F8A:  LDR             R0, [R0]; ScriptParams
335F8C:  LDR             R0, [R0]; this
335F8E:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
335F92:  CMP             R0, #7
335F94:  BHI.W           loc_3372D4
335F98:  LDR.W           R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x335FA4)
335F9C:  MOV.W           R2, #0x2D4
335FA0:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
335FA2:  LDR             R1, [R1]; CPedGroups::ms_groups ...
335FA4:  MLA.W           R0, R0, R2, R1
335FA8:  ADD.W           R6, R0, #8
335FAC:  MOV             R0, R6; this
335FAE:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
335FB2:  MOV             R5, R0
335FB4:  CMP             R5, #0
335FB6:  MOV             R0, R6; this
335FB8:  IT NE
335FBA:  MOVNE           R5, #1
335FBC:  BLX             j__ZNK19CPedGroupMembership27CountMembersExcludingLeaderEv; CPedGroupMembership::CountMembersExcludingLeader(void)
335FC0:  B.W             loc_3372D8
335FC4:  MOV             R0, R4; jumptable 00335782 case 2039
335FC6:  MOVS            R1, #2; __int16
335FC8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
335FCC:  LDR.W           R0, =(ScriptParams_ptr - 0x335FD4)
335FD0:  ADD             R0, PC; ScriptParams_ptr
335FD2:  LDR             R0, [R0]; ScriptParams
335FD4:  LDR             R1, [R0]
335FD6:  CMP             R1, #0
335FD8:  BLT.W           loc_336F2E
335FDC:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x335FE8)
335FE0:  UXTB            R3, R1
335FE2:  LSRS            R1, R1, #8
335FE4:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
335FE6:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
335FE8:  LDR             R0, [R0]; CPools::ms_pObjectPool
335FEA:  LDR             R2, [R0,#4]
335FEC:  LDRB            R2, [R2,R1]
335FEE:  CMP             R2, R3
335FF0:  BNE.W           loc_336F2E
335FF4:  MOV.W           R2, #0x1A4
335FF8:  LDR             R0, [R0]
335FFA:  MLA.W           R0, R1, R2, R0
335FFE:  B.W             loc_336F30
336002:  MOV             R0, R4; jumptable 00335782 case 2040
336004:  MOVS            R1, #3; __int16
336006:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33600A:  LDR.W           R0, =(ScriptParams_ptr - 0x336016)
33600E:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x336018)
336012:  ADD             R0, PC; ScriptParams_ptr
336014:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
336016:  LDR             R0, [R0]; ScriptParams
336018:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33601A:  LDR             R0, [R0]
33601C:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33601E:  CMP             R0, #0
336020:  BLT.W           loc_336F54
336024:  LDR             R2, [R1,#4]
336026:  UXTB            R3, R0
336028:  LSRS            R0, R0, #8
33602A:  LDRB            R2, [R2,R0]
33602C:  CMP             R2, R3
33602E:  BNE.W           loc_336F54
336032:  MOVW            R2, #0xA2C
336036:  LDR             R3, [R1]
336038:  MLA.W           R0, R0, R2, R3
33603C:  B.W             loc_336F56
336040:  LDR.W           R0, =(_ZN6CRopes19PlayerControlsCraneE_ptr - 0x33604C); jumptable 00335782 case 2041
336044:  MOVS            R1, #4
336046:  MOVS            R6, #0
336048:  ADD             R0, PC; _ZN6CRopes19PlayerControlsCraneE_ptr
33604A:  LDR             R0, [R0]; CRopes::PlayerControlsCrane ...
33604C:  STR             R1, [R0]; CRopes::PlayerControlsCrane
33604E:  B.W             loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
336052:  LDR.W           R0, =(_ZN11CWaterLevel17m_bWaterFogScriptE_ptr - 0x336060); jumptable 00335782 case 2042
336056:  MOVS            R6, #0
336058:  LDR.W           R1, =(_ZN6CRopes19PlayerControlsCraneE_ptr - 0x336062)
33605C:  ADD             R0, PC; _ZN11CWaterLevel17m_bWaterFogScriptE_ptr
33605E:  ADD             R1, PC; _ZN6CRopes19PlayerControlsCraneE_ptr
336060:  LDR             R0, [R0]; CWaterLevel::m_bWaterFogScript ...
336062:  LDR             R1, [R1]; CRopes::PlayerControlsCrane ...
336064:  STRB            R6, [R0]; CWaterLevel::m_bWaterFogScript
336066:  MOVS            R0, #3
336068:  STR             R0, [R1]; CRopes::PlayerControlsCrane
33606A:  B.W             loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
33606E:  SUB.W           R1, R7, #-var_46; jumptable 00335782 case 2043
336072:  MOV             R0, R4; this
336074:  MOVS            R2, #8; unsigned __int8
336076:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33607A:  MOV             R0, R4; this
33607C:  MOVS            R1, #1; __int16
33607E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
336082:  LDR.W           R0, =(ScriptParams_ptr - 0x33608A)
336086:  ADD             R0, PC; ScriptParams_ptr
336088:  LDR             R0, [R0]; ScriptParams
33608A:  LDR             R0, [R0]
33608C:  CMP             R0, #0
33608E:  BEQ.W           loc_3374B0
336092:  SUB.W           R0, R7, #-var_46; this
336096:  MOVS            R1, #(stderr+1); char *
336098:  BLX             j__ZN17CEntryExitManager16SetEnabledByNameEPKcb; CEntryExitManager::SetEnabledByName(char const*,bool)
33609C:  MOVS            R6, #0
33609E:  B.W             loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
3360A2:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x3360AA); jumptable 00335782 case 2044
3360A6:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
3360A8:  LDR             R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
3360AA:  LDRH            R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame
3360AC:  CMP             R0, #0x5F ; '_'
3360AE:  BHI.W           def_336FB0; jumptable 00336FB0 default case
3360B2:  MOV             R0, R4; this
3360B4:  MOVS            R1, #2; __int16
3360B6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3360BA:  SUB.W           R8, R7, #-var_46
3360BE:  MOV             R0, R4; this
3360C0:  MOVS            R2, #8; unsigned __int8
3360C2:  MOV             R1, R8; char *
3360C4:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3360C8:  LDR.W           R0, =(TheText_ptr - 0x3360D2)
3360CC:  MOV             R1, R8; CKeyGen *
3360CE:  ADD             R0, PC; TheText_ptr
3360D0:  LDR             R0, [R0]; TheText ; this
3360D2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
3360D6:  LDR.W           R0, =(ScriptParams_ptr - 0x3360E2)
3360DA:  ADD             R2, SP, #0xE8+var_78; float *
3360DC:  ADD             R3, SP, #0xE8+var_A0; float *
3360DE:  ADD             R0, PC; ScriptParams_ptr
3360E0:  LDR             R5, [R0]; ScriptParams
3360E2:  LDRD.W          R0, R1, [R5]
3360E6:  STR             R0, [SP,#0xE8+var_68]
3360E8:  MOV.W           R0, #0x3F800000
3360EC:  STR             R1, [SP,#0xE8+var_90]
3360EE:  ADD             R1, SP, #0xE8+var_90; float *
3360F0:  STR             R0, [SP,#0xE8+var_78]
3360F2:  STR             R0, [SP,#0xE8+var_A0]
3360F4:  ADD             R0, SP, #0xE8+var_68; float *
3360F6:  BLX             j__Z13CorrectAspectRfS_S_S_; CorrectAspect(float &,float &,float &,float &)
3360FA:  LDR.W           R1, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x336106)
3360FE:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x33610C)
336102:  ADD             R1, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
336104:  VLDR            S2, =640.0
336108:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
33610A:  LDR.W           R9, [R1]; CTheScripts::IntroTextLines ...
33610E:  LDR.W           R1, =(RsGlobal_ptr - 0x336118)
336112:  LDR             R6, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
336114:  ADD             R1, PC; RsGlobal_ptr
336116:  LDR             R1, [R1]; RsGlobal
336118:  LDRH            R0, [R6]; CTheScripts::NumberOfIntroTextLinesThisFrame
33611A:  VLDR            S0, [R1,#4]
33611E:  ADD.W           R0, R0, R0,LSL#4
336122:  VCVT.F32.S32    S0, S0
336126:  ADD.W           R0, R9, R0,LSL#2
33612A:  VDIV.F32        S0, S0, S2
33612E:  VLDR            S2, [SP,#0xE8+var_68]
336132:  VDIV.F32        S0, S2, S0
336136:  VSTR            S0, [R0,#0x2C]
33613A:  VLDR            S0, [R1,#8]
33613E:  MOVS            R1, #2; __int16
336140:  VLDR            S2, =448.0
336144:  VCVT.F32.S32    S0, S0
336148:  VDIV.F32        S0, S0, S2
33614C:  VLDR            S2, [SP,#0xE8+var_90]
336150:  VDIV.F32        S0, S2, S0
336154:  VSTR            S0, [R0,#0x30]
336158:  MOV             R0, R4; this
33615A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33615E:  LDRH            R0, [R6]; CTheScripts::NumberOfIntroTextLinesThisFrame
336160:  MOV             R1, R8; char *
336162:  VLDR            S0, [R5,#4]
336166:  MOVS            R2, #8; size_t
336168:  VLDR            S16, [R5]
33616C:  ADD.W           R0, R0, R0,LSL#4
336170:  VCVT.F32.S32    S18, S0
336174:  ADD.W           R0, R9, R0,LSL#2
336178:  ADDS            R0, #0x34 ; '4'; char *
33617A:  BLX             strncpy
33617E:  VMOV            R1, S18; y
336182:  MOVS            R0, #0
336184:  VCVT.S32.F32    S0, S16
336188:  MOVT            R0, #0x4120; x
33618C:  VCVT.F32.S32    S0, S0
336190:  VSUB.F32        S18, S16, S0
336194:  BLX             powf
336198:  VMOV            S0, R0
33619C:  LDRH            R0, [R6]; CTheScripts::NumberOfIntroTextLinesThisFrame
33619E:  VCVT.S32.F32    S2, S16
3361A2:  VMUL.F32        S0, S0, S18
3361A6:  ADD.W           R1, R0, R0,LSL#4
3361AA:  ADDS            R0, #1
3361AC:  ADD.W           R1, R9, R1,LSL#2
3361B0:  VCVT.S32.F32    S0, S0
3361B4:  VSTR            S2, [R1,#0x3C]
3361B8:  STRH            R0, [R6]; CTheScripts::NumberOfIntroTextLinesThisFrame
3361BA:  MOVS            R6, #0
3361BC:  VSTR            S0, [R1,#0x40]
3361C0:  B.W             loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
3361C4:  MOV             R0, R4; jumptable 00335782 case 2045
3361C6:  MOVS            R1, #1; __int16
3361C8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3361CC:  LDR.W           R0, =(ScriptParams_ptr - 0x3361D6)
3361D0:  MOVS            R1, #8; int
3361D2:  ADD             R0, PC; ScriptParams_ptr
3361D4:  LDR             R0, [R0]; ScriptParams
3361D6:  LDR             R0, [R0]; this
3361D8:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
3361DC:  CMP             R0, #8
3361DE:  MOV.W           R1, #0
3361E2:  MOV.W           R6, #0
3361E6:  IT CC
3361E8:  MOVCC           R1, #1
3361EA:  MOV             R0, R4
3361EC:  B.W             loc_336C72
3361F0:  MOV             R0, R4; jumptable 00335782 case 2046
3361F2:  MOVS            R1, #3; __int16
3361F4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3361F8:  LDR.W           R0, =(ScriptParams_ptr - 0x336200)
3361FC:  ADD             R0, PC; ScriptParams_ptr
3361FE:  LDR             R0, [R0]; ScriptParams
336200:  LDR             R1, [R0]
336202:  CMP             R1, #0
336204:  BLT.W           loc_336F80
336208:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x336214)
33620C:  UXTB            R3, R1
33620E:  LSRS            R1, R1, #8
336210:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
336212:  LDR             R0, [R0]; CPools::ms_pPedPool ...
336214:  LDR             R0, [R0]; CPools::ms_pPedPool
336216:  LDR             R2, [R0,#4]
336218:  LDRB            R2, [R2,R1]
33621A:  CMP             R2, R3
33621C:  BNE.W           loc_336F80
336220:  MOVW            R2, #0x7CC
336224:  LDR             R0, [R0]
336226:  MLA.W           R0, R1, R2, R0
33622A:  B.W             loc_336F82
33622E:  MOV             R0, R4; jumptable 00335782 case 2047
336230:  MOVS            R1, #2; __int16
336232:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
336236:  LDR.W           R0, =(ScriptParams_ptr - 0x33623E)
33623A:  ADD             R0, PC; ScriptParams_ptr
33623C:  LDR             R0, [R0]; ScriptParams
33623E:  LDR             R1, [R0]
336240:  CMP             R1, #0
336242:  BLT.W           loc_336FC8
336246:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x336252)
33624A:  UXTB            R3, R1
33624C:  LSRS            R1, R1, #8
33624E:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
336250:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
336252:  LDR             R0, [R0]; CPools::ms_pVehiclePool
336254:  LDR             R2, [R0,#4]
336256:  LDRB            R2, [R2,R1]
336258:  CMP             R2, R3
33625A:  BNE.W           loc_336FC8
33625E:  MOVW            R2, #0xA2C
336262:  LDR             R0, [R0]
336264:  MLA.W           R0, R1, R2, R0
336268:  B.W             loc_336FCA
33626C:  BLX             j__ZN10CGameLogic17IsCoopGameGoingOnEv; jumptable 00335782 case 2048
336270:  MOV             R1, R0
336272:  B.W             loc_337000
336276:  LDR.W           R0, =(TheCamera_ptr - 0x336282); jumptable 00335782 case 2049
33627A:  LDR.W           R1, =(ScriptParams_ptr - 0x336284)
33627E:  ADD             R0, PC; TheCamera_ptr
336280:  ADD             R1, PC; ScriptParams_ptr
336282:  LDR             R0, [R0]; TheCamera
336284:  LDR             R1, [R1]; ScriptParams
336286:  LDRB.W          R2, [R0,#(byte_951FFF - 0x951FA8)]
33628A:  ADD.W           R2, R2, R2,LSL#5
33628E:  ADD.W           R0, R0, R2,LSL#4
336292:  LDR.W           R0, [R0,#0x1FC]
336296:  B.W             loc_3373CA
33629A:  MOV             R0, R4; jumptable 00335782 case 2051
33629C:  MOVS            R1, #1; __int16
33629E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3362A2:  LDR.W           R0, =(ScriptParams_ptr - 0x3362AA)
3362A6:  ADD             R0, PC; ScriptParams_ptr
3362A8:  LDR             R0, [R0]; ScriptParams
3362AA:  LDR             R1, [R0]
3362AC:  CMP             R1, #0
3362AE:  BLT.W           loc_336FEC
3362B2:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3362BE)
3362B6:  UXTB            R3, R1
3362B8:  LSRS            R1, R1, #8
3362BA:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3362BC:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
3362BE:  LDR             R0, [R0]; CPools::ms_pVehiclePool
3362C0:  LDR             R2, [R0,#4]
3362C2:  LDRB            R2, [R2,R1]
3362C4:  CMP             R2, R3
3362C6:  BNE.W           loc_336FEC
3362CA:  MOVW            R2, #0xA2C
3362CE:  LDR             R0, [R0]
3362D0:  MLA.W           R0, R1, R2, R0
3362D4:  B.W             loc_336FEE
3362D8:  MOV             R0, R4; jumptable 00335782 case 2052
3362DA:  MOVS            R1, #6; __int16
3362DC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3362E0:  LDR.W           R0, =(ScriptParams_ptr - 0x3362EC)
3362E4:  ADD             R1, SP, #0xE8+var_68; char *
3362E6:  MOVS            R2, #0x18; unsigned __int8
3362E8:  ADD             R0, PC; ScriptParams_ptr
3362EA:  LDR             R5, [R0]; ScriptParams
3362EC:  LDR             R0, [R5]
3362EE:  STR             R0, [SP,#0xE8+var_BC]
3362F0:  MOV             R0, R4; this
3362F2:  LDRD.W          R10, R8, [R5,#(dword_81A90C - 0x81A908)]
3362F6:  LDR.W           R11, [R5,#(dword_81A914 - 0x81A908)]
3362FA:  VLDR            S20, [R5,#0x10]
3362FE:  VLDR            S16, [R5,#0x14]
336302:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
336306:  ADD             R1, SP, #0xE8+var_78; char *
336308:  MOV             R0, R4; this
33630A:  MOVS            R2, #0x10; unsigned __int8
33630C:  MOVS            R6, #0x10
33630E:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
336312:  MOV             R0, R4; this
336314:  MOVS            R1, #6; __int16
336316:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33631A:  LDR.W           R0, =(_ZN14CTaskSequences18ms_iActiveSequenceE_ptr - 0x336326)
33631E:  VLDR            S18, [R5]
336322:  ADD             R0, PC; _ZN14CTaskSequences18ms_iActiveSequenceE_ptr
336324:  LDR.W           R9, [R5,#(dword_81A91C - 0x81A908)]
336328:  LDR             R0, [R0]; CTaskSequences::ms_iActiveSequence ...
33632A:  LDR             R0, [R0]; CTaskSequences::ms_iActiveSequence
33632C:  STR             R0, [SP,#0xE8+var_C0]
33632E:  LDR             R0, [R5,#(dword_81A90C - 0x81A908)]
336330:  STR             R0, [SP,#0xE8+var_D0]
336332:  LDR             R0, [R5,#(dword_81A910 - 0x81A908)]
336334:  STR             R0, [SP,#0xE8+var_CC]
336336:  LDR             R0, [R5,#(dword_81A914 - 0x81A908)]
336338:  STR             R0, [SP,#0xE8+var_C8]
33633A:  LDR             R0, [R5,#(dword_81A918 - 0x81A908)]
33633C:  STR             R0, [SP,#0xE8+var_C4]
33633E:  MOVS            R0, #dword_40; this
336340:  STRD.W          R10, R8, [SP,#0xE8+var_90]
336344:  STR.W           R11, [SP,#0xE8+var_88]
336348:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
33634C:  MOV             R11, R0
33634E:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
336352:  MOVS            R0, #word_28; this
336354:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
336358:  MOV             R5, R0
33635A:  LDR.W           R0, =(_ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr - 0x336368)
33635E:  ADD             R2, SP, #0xE8+var_90; CVector *
336360:  MOV.W           R10, #0
336364:  ADD             R0, PC; _ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr
336366:  MOVS            R1, #4; int
336368:  STRD.W          R10, R10, [SP,#0xE8+var_E4]; bool
33636C:  LDR             R0, [R0]; CTaskComplexGoToPointAndStandStill::ms_fSlowDownDistance ...
33636E:  VLDR            S0, [R0]
336372:  LDR.W           R0, =(_ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr - 0x33637E)
336376:  VSTR            S0, [SP,#0xE8+var_E8]
33637A:  ADD             R0, PC; _ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr
33637C:  LDR             R0, [R0]; CTaskComplexGoToPointAndStandStill::ms_fTargetRadius ...
33637E:  LDR             R3, [R0]; float
336380:  MOV             R0, R5; this
336382:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
336386:  MOV             R0, R11; this
336388:  MOV             R1, R5; CTask *
33638A:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
33638E:  LDR             R0, [SP,#0xE8+var_D0]
336390:  VCMPE.F32       S16, #0.0
336394:  VLDR            S0, =3.1416
336398:  CMP             R0, #0
33639A:  VLDR            S2, =180.0
33639E:  IT NE
3363A0:  MOVNE           R6, #0x12
3363A2:  CMP.W           R9, #0
3363A6:  IT GT
3363A8:  MOVGT           R6, #0x12
3363AA:  VMRS            APSR_nzcv, FPSCR
3363AE:  VMUL.F32        S0, S20, S0
3363B2:  VDIV.F32        S20, S0, S2
3363B6:  VLDR            S0, =0.1
3363BA:  IT LT
3363BC:  VMOVLT.F32      S16, S0
3363C0:  LDR             R0, [SP,#0xE8+var_CC]
3363C2:  CMP             R0, #0
3363C4:  IT NE
3363C6:  ORRNE.W         R6, R6, #0x40 ; '@'
3363CA:  LDR             R0, [SP,#0xE8+var_C8]
3363CC:  CMP             R0, #0
3363CE:  IT NE
3363D0:  ORRNE.W         R6, R6, #0x80
3363D4:  LDR             R0, [SP,#0xE8+var_C4]
3363D6:  CMP             R0, #0
3363D8:  MOV.W           R0, #dword_80; this
3363DC:  IT EQ
3363DE:  ORREQ.W         R6, R6, #8
3363E2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3363E6:  VMOV            R2, S20; float
3363EA:  MOV             R5, R0
3363EC:  VMOV            R3, S16; float
3363F0:  CMP.W           R9, #1
3363F4:  BLT.W           loc_3374BE
3363F8:  LDR             R0, [SP,#0xE8+var_C0]
3363FA:  CMP.W           R0, #0xFFFFFFFF
3363FE:  IT GT
336400:  MOVGT.W         R10, #1
336404:  STRD.W          R10, R9, [SP,#0xE8+var_D8]
336408:  B.W             loc_3374D2
33640C:  MOV             R0, R4; jumptable 00335782 case 2054
33640E:  MOVS            R1, #1; __int16
336410:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
336414:  LDR             R0, =(ScriptParams_ptr - 0x33641A)
336416:  ADD             R0, PC; ScriptParams_ptr
336418:  LDR             R5, [R0]; ScriptParams
33641A:  LDR             R0, [R5]; this
33641C:  BLX             j__ZN7CDarkel27FindTotalPedsKilledByPlayerEi; CDarkel::FindTotalPedsKilledByPlayer(int)
336420:  STR             R0, [R5]
336422:  B.W             loc_3373CC
336426:  MOV             R0, R4; jumptable 00335782 case 2058
336428:  MOVS            R1, #2; __int16
33642A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33642E:  LDR             R0, =(ScriptParams_ptr - 0x336434)
336430:  ADD             R0, PC; ScriptParams_ptr
336432:  LDR             R0, [R0]; ScriptParams
336434:  LDR             R1, [R0]
336436:  CMP             R1, #0
336438:  BLT.W           loc_33700A
33643C:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x336446)
33643E:  UXTB            R3, R1
336440:  LSRS            R1, R1, #8
336442:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
336444:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
336446:  LDR             R0, [R0]; CPools::ms_pObjectPool
336448:  LDR             R2, [R0,#4]
33644A:  LDRB            R2, [R2,R1]
33644C:  CMP             R2, R3
33644E:  BNE.W           loc_33700A
336452:  MOV.W           R2, #0x1A4
336456:  LDR             R0, [R0]
336458:  MLA.W           R1, R1, R2, R0
33645C:  B.W             loc_33700C
336460:  ADD             R1, SP, #0xE8+var_90; jumptable 00335782 case 2059
336462:  MOV             R0, R4; this
336464:  MOVS            R2, #0x10; unsigned __int8
336466:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33646A:  MOVS            R6, #0
33646C:  B.W             loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
336470:  MOV             R0, R4; jumptable 00335782 case 2062
336472:  MOVS            R1, #1; __int16
336474:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
336478:  LDR             R0, =(ScriptParams_ptr - 0x336484)
33647A:  MOVW            R3, #0x7CC
33647E:  LDR             R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x336486)
336480:  ADD             R0, PC; ScriptParams_ptr
336482:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
336484:  LDR             R0, [R0]; ScriptParams
336486:  LDR             R1, [R1]; CPools::ms_pPedPool ...
336488:  LDR             R2, [R0]
33648A:  LDR             R1, [R1]; CPools::ms_pPedPool
33648C:  LSRS            R2, R2, #8
33648E:  LDR             R1, [R1]
336490:  MLA.W           R1, R2, R3, R1
336494:  LDR.W           R1, [R1,#0x440]
336498:  LDRB.W          R1, [R1,#0xD1]
33649C:  STR             R1, [R0]
33649E:  B.W             loc_3373CC
3364A2:  MOV             R0, R4; jumptable 00335782 case 2064
3364A4:  MOVS            R1, #6; __int16
3364A6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3364AA:  LDR             R0, =(ScriptParams_ptr - 0x3364B0)
3364AC:  ADD             R0, PC; ScriptParams_ptr
3364AE:  LDR             R5, [R0]; ScriptParams
3364B0:  LDR             R0, =(ThePaths_ptr - 0x3364BA)
3364B2:  VLDR            S0, [R5]
3364B6:  ADD             R0, PC; ThePaths_ptr
3364B8:  VLDR            S6, [R5,#0xC]
3364BC:  VLDR            S2, [R5,#4]
3364C0:  VMIN.F32        D4, D0, D3
3364C4:  VLDR            S4, [R5,#8]
3364C8:  VMAX.F32        D0, D0, D3
3364CC:  VLDR            S6, [R5,#0x10]
3364D0:  LDR             R1, [R0]; ThePaths ; float
3364D2:  ADD             R0, SP, #0xE8+var_68; this
3364D4:  VMOV            R2, S8; float
3364D8:  VMOV            R3, S0; float
3364DC:  VLDR            S0, [R5,#0x14]
3364E0:  VMAX.F32        D4, D1, D3
3364E4:  VMIN.F32        D1, D1, D3
3364E8:  VMAX.F32        D3, D2, D0
3364EC:  VMIN.F32        D0, D2, D0
3364F0:  VSTR            S2, [SP,#0xE8+var_E8]
3364F4:  VSTR            S8, [SP,#0xE8+var_E4]
3364F8:  VSTR            S0, [SP,#0xE8+var_E0]
3364FC:  VSTR            S6, [SP,#0xE8+var_DC]
336500:  BLX             j__ZN9CPathFind21FindParkingNodeInAreaEffffff; CPathFind::FindParkingNodeInArea(float,float,float,float,float,float)
336504:  ADD             R2, SP, #0xE8+var_68
336506:  B.W             loc_33702A
33650A:  ALIGN 4
33650C:  DCFS 448.0
336510:  DCFS 3.1416
336514:  DCFS 180.0
336518:  DCFS 0.1
33651C:  DCD __stack_chk_guard_ptr - 0x335772
336520:  MOV             R0, R4; jumptable 00335782 case 2065
336522:  MOVS            R1, #1; __int16
336524:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
336528:  LDR             R0, =(ScriptParams_ptr - 0x336534)
33652A:  MOVW            R2, #0x7CC
33652E:  LDR             R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x336536)
336530:  ADD             R0, PC; ScriptParams_ptr
336532:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
336534:  LDR             R0, [R0]; ScriptParams
336536:  LDR             R1, [R1]; CPools::ms_pPedPool ...
336538:  LDR             R0, [R0]
33653A:  LDR             R1, [R1]; CPools::ms_pPedPool
33653C:  LSRS            R0, R0, #8
33653E:  LDR             R1, [R1]
336540:  MLA.W           R5, R0, R2, R1
336544:  LDRB.W          R0, [R5,#0x485]
336548:  LSLS            R0, R0, #0x1F
33654A:  BNE.W           loc_3372EA
33654E:  LDR.W           R0, [R5,#0x440]
336552:  MOVW            R1, #0x2BD; int
336556:  ADDS            R0, #4; this
336558:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
33655C:  CBNZ            R0, loc_336574
33655E:  ADD.W           R0, R5, #0x440
336562:  MOV.W           R1, #0x2BC; int
336566:  LDR             R0, [R0]
336568:  ADDS            R0, #4; this
33656A:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
33656E:  CMP             R0, #0
336570:  BEQ.W           loc_3373C0
336574:  ADDS            R0, #0xC
336576:  B.W             loc_3372EE
33657A:  MOV             R0, R4; jumptable 00335782 case 2066
33657C:  MOVW            R1, #0x812; int
336580:  BLX             j__ZN14CRunningScript21PlayAnimScriptCommandEi; CRunningScript::PlayAnimScriptCommand(int)
336584:  MOVS            R6, #0
336586:  B.W             loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
33658A:  MOV             R0, R4; jumptable 00335782 case 2068
33658C:  MOVS            R1, #0x10; __int16
33658E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
336592:  LDR             R0, =(ScriptParams_ptr - 0x336598)
336594:  ADD             R0, PC; ScriptParams_ptr
336596:  LDR             R0, [R0]; ScriptParams
336598:  ADD.W           R6, R0, #0x30 ; '0'
33659C:  VLDR            S0, [R0]
3365A0:  VLDR            S2, [R0,#4]
3365A4:  VLDR            S8, [R0,#0x10]
3365A8:  VLDR            S4, [R0,#8]
3365AC:  VLDR            S10, [R0,#0x14]
3365B0:  VADD.F32        S3, S2, S8
3365B4:  VLDR            S6, [R0,#0xC]
3365B8:  VSUB.F32        S2, S2, S8
3365BC:  VADD.F32        S1, S4, S10
3365C0:  VLDR            S12, [R0,#0x18]
3365C4:  VSUB.F32        S8, S0, S6
3365C8:  VLDR            S14, [R0,#0x1C]
3365CC:  VADD.F32        S0, S0, S6
3365D0:  VLDR            S6, [R0,#0x2C]
3365D4:  VSUB.F32        S4, S4, S10
3365D8:  VSTR            S1, [SP,#0xE8+var_54]
3365DC:  VSTR            S3, [SP,#0xE8+var_58]
3365E0:  VSTR            S2, [SP,#0xE8+var_68+4]
3365E4:  VSTR            S8, [SP,#0xE8+var_68]
3365E8:  VSTR            S4, [SP,#0xE8+var_60]
3365EC:  VSTR            S0, [SP,#0xE8+var_5C]
3365F0:  VLDR            S0, [R0,#0x20]
3365F4:  VLDR            S4, [R0,#0x28]
3365F8:  VLDR            S2, [R0,#0x24]
3365FC:  VADD.F32        S8, S0, S6
336600:  VADD.F32        S10, S14, S4
336604:  VSUB.F32        S4, S14, S4
336608:  VSUB.F32        S14, S12, S2
33660C:  VSUB.F32        S0, S0, S6
336610:  VADD.F32        S2, S12, S2
336614:  VSTR            S8, [SP,#0xE8+var_7C]
336618:  VSTR            S10, [SP,#0xE8+var_80]
33661C:  VSTR            S4, [SP,#0xE8+var_8C]
336620:  VSTR            S14, [SP,#0xE8+var_90]
336624:  VSTR            S0, [SP,#0xE8+var_88]
336628:  VSTR            S2, [SP,#0xE8+var_84]
33662C:  LDM             R6, {R1,R2,R6}
33662E:  LDR             R3, [R0,#(dword_81A944 - 0x81A908)]
336630:  ADD             R0, SP, #0xE8+var_78
336632:  STM             R0!, {R1,R2,R6}
336634:  ADD             R0, SP, #0xE8+var_68
336636:  ADD             R1, SP, #0xE8+var_90
336638:  ADD             R2, SP, #0xE8+var_78
33663A:  BLX             j__ZN17CStuntJumpManager6AddOneERK9CBoundBoxS2_RK7CVectori; CStuntJumpManager::AddOne(CBoundBox const&,CBoundBox const&,CVector const&,int)
33663E:  MOVS            R6, #0
336640:  B.W             loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
336644:  MOV             R0, R4; jumptable 00335782 case 2069
336646:  MOVS            R1, #4; __int16
336648:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33664C:  LDR             R0, =(ScriptParams_ptr - 0x336652)
33664E:  ADD             R0, PC; ScriptParams_ptr
336650:  LDR             R0, [R0]; ScriptParams
336652:  LDR             R1, [R0]
336654:  CMP             R1, #0
336656:  BLT.W           loc_337034
33665A:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x336664)
33665C:  UXTB            R3, R1
33665E:  LSRS            R1, R1, #8
336660:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
336662:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
336664:  LDR             R0, [R0]; CPools::ms_pObjectPool
336666:  LDR             R2, [R0,#4]
336668:  LDRB            R2, [R2,R1]
33666A:  CMP             R2, R3
33666C:  BNE.W           loc_337034
336670:  MOV.W           R2, #0x1A4
336674:  LDR             R0, [R0]
336676:  MLA.W           R4, R1, R2, R0
33667A:  B.W             loc_337036
33667E:  ALIGN 0x10
336680:  DCD _ZN6CClock10CurrentDayE_ptr - 0x33585A
336684:  DCD ScriptParams_ptr - 0x33585C
336688:  DCD ScriptParams_ptr - 0x335878
33668C:  DCD _ZN11CTheScripts15StreamedScriptsE_ptr - 0x33587A
336690:  DCD ScriptParams_ptr - 0x3358A8
336694:  DCD _ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x3358C2
336698:  DCD ScriptParams_ptr - 0x3358DC
33669C:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x3358F0
3366A0:  DCD ScriptParams_ptr - 0x335974
3366A4:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33597C
3366A8:  DCD ScriptParams_ptr - 0x335A2A
3366AC:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x335A3E
3366B0:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x335A72
3366B4:  DCD ScriptParams_ptr - 0x335A74
3366B8:  DCD ScriptParams_ptr - 0x335A9C
3366BC:  DCD _ZN11CTheScripts15UsedObjectArrayE_ptr - 0x335AAE
3366C0:  DCD ScriptParams_ptr - 0x335ACE
3366C4:  DCD ScriptParams_ptr - 0x335B18
3366C8:  DCD ScriptParams_ptr - 0x335B36
3366CC:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x335B5C
3366D0:  DCD ScriptParams_ptr - 0x335BB2
3366D4:  DCD _ZN11CTheScripts15UsedObjectArrayE_ptr - 0x335BC4
3366D8:  DCD _ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x335BDA
3366DC:  DCD ScriptParams_ptr - 0x335BDC
3366E0:  DCD ScriptParams_ptr - 0x335C0E
3366E4:  DCD ScriptParams_ptr - 0x335C32
3366E8:  DCD ScriptParams_ptr - 0x335C56
3366EC:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x335C6C
3366F0:  DCD ScriptParams_ptr - 0x335C96
3366F4:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x335CCE
3366F8:  DCD ScriptParams_ptr - 0x335CD0
3366FC:  DCD ScriptParams_ptr - 0x335D0C
336700:  DCD ScriptParams_ptr - 0x335D3C
336704:  DCD ScriptParams_ptr - 0x335D6E
336708:  DCD _ZN11CTheScripts15UsedObjectArrayE_ptr - 0x335D90
33670C:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x335DA4
336710:  DCD ScriptParams_ptr - 0x335E62
336714:  DCD _ZN6CWorld7PlayersE_ptr - 0x335E6E
336718:  DCD _ZN6CWorld7PlayersE_ptr - 0x335E94
33671C:  DCD ScriptParams_ptr - 0x335EB4
336720:  DCD _ZN6CWorld7PlayersE_ptr - 0x335EC0
336724:  DCD _ZN6CWorld7PlayersE_ptr - 0x335EE6
336728:  DCD ScriptParams_ptr - 0x335F02
33672C:  DCD _ZN11CTheScripts21ScriptCheckpointArrayE_ptr - 0x335F22
336730:  DCD ScriptParams_ptr - 0x335F4C
336734:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x335F60
336738:  DCD ScriptParams_ptr - 0x335F8C
33673C:  DCD _ZN10CPedGroups9ms_groupsE_ptr - 0x335FA4
336740:  DCD ScriptParams_ptr - 0x335FD4
336744:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x335FE8
336748:  DCD ScriptParams_ptr - 0x336016
33674C:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x336018
336750:  DCD _ZN6CRopes19PlayerControlsCraneE_ptr - 0x33604C
336754:  DCD _ZN11CWaterLevel17m_bWaterFogScriptE_ptr - 0x336060
336758:  DCD _ZN6CRopes19PlayerControlsCraneE_ptr - 0x336062
33675C:  DCD ScriptParams_ptr - 0x33608A
336760:  DCD _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x3360AA
336764:  DCD TheText_ptr - 0x3360D2
336768:  DCD ScriptParams_ptr - 0x3360E2
33676C:  DCD _ZN11CTheScripts14IntroTextLinesE_ptr - 0x336106
336770:  DCD _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x33610C
336774:  DCD RsGlobal_ptr - 0x336118
336778:  DCD ScriptParams_ptr - 0x3361D6
33677C:  DCD ScriptParams_ptr - 0x336200
336780:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x336214
336784:  DCD ScriptParams_ptr - 0x33623E
336788:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x336252
33678C:  DCD TheCamera_ptr - 0x336282
336790:  DCD ScriptParams_ptr - 0x336284
336794:  DCD ScriptParams_ptr - 0x3362AA
336798:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x3362BE
33679C:  DCD ScriptParams_ptr - 0x3362EC
3367A0:  DCD _ZN14CTaskSequences18ms_iActiveSequenceE_ptr - 0x336326
3367A4:  DCD _ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr - 0x336368
3367A8:  DCD _ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr - 0x33637E
3367AC:  DCD ScriptParams_ptr - 0x33641A
3367B0:  DCD ScriptParams_ptr - 0x336434
3367B4:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x336446
3367B8:  DCD ScriptParams_ptr - 0x336484
3367BC:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x336486
3367C0:  DCD ScriptParams_ptr - 0x3364B0
3367C4:  DCD ThePaths_ptr - 0x3364BA
3367C8:  DCD ScriptParams_ptr - 0x336534
3367CC:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x336536
3367D0:  DCD ScriptParams_ptr - 0x336598
3367D4:  DCD ScriptParams_ptr - 0x336652
3367D8:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x336664
3367DC:  MOV             R0, R4; jumptable 00335782 case 2070
3367DE:  MOVS            R1, #2; __int16
3367E0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3367E4:  LDR.W           R0, =(ScriptParams_ptr - 0x3367EC)
3367E8:  ADD             R0, PC; ScriptParams_ptr
3367EA:  LDR             R0, [R0]; ScriptParams
3367EC:  LDR             R1, [R0]
3367EE:  CMP             R1, #0
3367F0:  BLT.W           loc_3370CE
3367F4:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x336800)
3367F8:  UXTB            R3, R1
3367FA:  LSRS            R1, R1, #8
3367FC:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
3367FE:  LDR             R0, [R0]; CPools::ms_pPedPool ...
336800:  LDR             R0, [R0]; CPools::ms_pPedPool
336802:  LDR             R2, [R0,#4]
336804:  LDRB            R2, [R2,R1]
336806:  CMP             R2, R3
336808:  BNE.W           loc_3370CE
33680C:  MOVW            R2, #0x7CC
336810:  LDR             R0, [R0]
336812:  MLA.W           R0, R1, R2, R0
336816:  B.W             loc_3370D0
33681A:  MOV             R0, R4; jumptable 00335782 case 2071
33681C:  MOVS            R1, #3; __int16
33681E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
336822:  LDR.W           R0, =(ScriptParams_ptr - 0x33682A)
336826:  ADD             R0, PC; ScriptParams_ptr
336828:  LDR             R0, [R0]; ScriptParams
33682A:  LDRD.W          R8, R6, [R0]
33682E:  LDR.W           R9, [R0,#(dword_81A910 - 0x81A908)]
336832:  MOVS            R0, #word_30; this
336834:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
336838:  LDR.W           R1, =(_ZN29CTaskComplexFollowPatrolRoute20ms_fSlowDownDistanceE_ptr - 0x336848)
33683C:  MOV             R5, R0
33683E:  LDR.W           R0, =(_ZN29CTaskComplexFollowPatrolRoute16ms_fTargetRadiusE_ptr - 0x33684E)
336842:  MOV             R3, R9; int
336844:  ADD             R1, PC; _ZN29CTaskComplexFollowPatrolRoute20ms_fSlowDownDistanceE_ptr
336846:  LDR.W           R2, =(_ZN29CTaskComplexFollowPatrolRoute14ms_patrolRouteE_ptr - 0x336850)
33684A:  ADD             R0, PC; _ZN29CTaskComplexFollowPatrolRoute16ms_fTargetRadiusE_ptr
33684C:  ADD             R2, PC; _ZN29CTaskComplexFollowPatrolRoute14ms_patrolRouteE_ptr
33684E:  LDR             R1, [R1]; CTaskComplexFollowPatrolRoute::ms_fSlowDownDistance ...
336850:  LDR             R0, [R0]; CTaskComplexFollowPatrolRoute::ms_fTargetRadius ...
336852:  LDR             R2, [R2]; CPatrolRoute *
336854:  VLDR            S2, [R1]
336858:  MOV             R1, R6; int
33685A:  VLDR            S0, [R0]
33685E:  MOV             R0, R5; this
336860:  VSTR            S0, [SP,#0xE8+var_E8]
336864:  VSTR            S2, [SP,#0xE8+var_E4]
336868:  BLX             j__ZN29CTaskComplexFollowPatrolRouteC2EiRK12CPatrolRouteiff; CTaskComplexFollowPatrolRoute::CTaskComplexFollowPatrolRoute(int,CPatrolRoute const&,int,float,float)
33686C:  MOV             R0, R4
33686E:  MOV             R1, R8
336870:  MOV             R2, R5
336872:  MOVW            R3, #0x817
336876:  B.W             loc_33756C
33687A:  MOV             R0, R4; jumptable 00335782 case 2072
33687C:  MOVS            R1, #1; __int16
33687E:  MOVS            R5, #1
336880:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
336884:  LDR.W           R0, =(ScriptParams_ptr - 0x336894)
336888:  MOVW            R2, #0x7CC
33688C:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x336896)
336890:  ADD             R0, PC; ScriptParams_ptr
336892:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
336894:  LDR             R0, [R0]; ScriptParams
336896:  LDR             R1, [R1]; CPools::ms_pPedPool ...
336898:  LDR             R0, [R0]
33689A:  LDR             R1, [R1]; CPools::ms_pPedPool
33689C:  LSRS            R0, R0, #8
33689E:  LDR             R1, [R1]
3368A0:  MLA.W           R2, R0, R2, R1
3368A4:  LDR.W           R3, [R2,#0x484]
3368A8:  TST.W           R3, #0x200
3368AC:  ITT EQ
3368AE:  MOVEQ           R5, #0
3368B0:  TSTEQ.W         R3, #1
3368B4:  BNE             loc_3368F2
3368B6:  LDR.W           R2, [R2,#0x488]
3368BA:  MOVS            R3, #0x80000010
3368C0:  ANDS            R2, R3
3368C2:  BEQ             loc_3368F2
3368C4:  MOVW            R2, #0x7CC
3368C8:  MLA.W           R6, R0, R2, R1
3368CC:  LDR.W           R0, [R6,#0x440]
3368D0:  ADDS            R0, #4; this
3368D2:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
3368D6:  MOVS            R5, #0
3368D8:  CBZ             R0, loc_3368F2
3368DA:  ADD.W           R0, R6, #0x440
3368DE:  LDR             R0, [R0]
3368E0:  ADDS            R0, #4; this
3368E2:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
3368E6:  LDR             R1, [R0]
3368E8:  LDR             R1, [R1,#0x14]
3368EA:  BLX             R1
3368EC:  CMP             R0, #0xCF
3368EE:  IT EQ
3368F0:  MOVEQ           R5, #1
3368F2:  MOV             R0, R4
3368F4:  MOV             R1, R5
3368F6:  B               loc_337002
3368F8:  MOV             R0, R4; jumptable 00335782 case 2073
3368FA:  MOVS            R1, #1; __int16
3368FC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
336900:  LDR.W           R0, =(ScriptParams_ptr - 0x33690A)
336904:  MOVS            R6, #0
336906:  ADD             R0, PC; ScriptParams_ptr
336908:  LDR             R0, [R0]; ScriptParams
33690A:  LDR             R0, [R0]
33690C:  CMP             R0, #0
33690E:  BLT.W           loc_337106
336912:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33691E)
336916:  UXTB            R3, R0
336918:  LSRS            R0, R0, #8
33691A:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33691C:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33691E:  LDR             R1, [R1]; CPools::ms_pPedPool
336920:  LDR             R2, [R1,#4]
336922:  LDRB            R2, [R2,R0]
336924:  CMP             R2, R3
336926:  BNE.W           loc_337106
33692A:  MOVW            R2, #0x7CC
33692E:  LDR             R1, [R1]
336930:  MLA.W           R0, R0, R2, R1
336934:  B               loc_337108
336936:  MOV             R0, R4; jumptable 00335782 case 2074
336938:  MOVS            R1, #2; __int16
33693A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33693E:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x336950)
336942:  MOVW            R3, #0x7CC
336946:  LDR.W           R0, =(ScriptParams_ptr - 0x336952)
33694A:  MOVS            R6, #0
33694C:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33694E:  ADD             R0, PC; ScriptParams_ptr
336950:  LDR             R1, [R1]; CPools::ms_pPedPool ...
336952:  LDR             R0, [R0]; ScriptParams
336954:  LDRD.W          R2, R0, [R0]
336958:  LDR             R1, [R1]; CPools::ms_pPedPool
33695A:  LSRS            R2, R2, #8
33695C:  LDR             R1, [R1]
33695E:  MLA.W           R1, R2, R3, R1
336962:  STRB.W          R0, [R1,#0x734]
336966:  B.W             loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
33696A:  MOV             R0, R4; jumptable 00335782 case 2076
33696C:  MOVS            R1, #5; __int16
33696E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
336972:  LDR.W           R0, =(ScriptParams_ptr - 0x33697A)
336976:  ADD             R0, PC; ScriptParams_ptr
336978:  LDR             R4, [R0]; ScriptParams
33697A:  LDRB            R0, [R4,#(dword_81A918 - 0x81A908)]
33697C:  LDRB            R1, [R4,#(dword_81A90C - 0x81A908)]; unsigned __int8
33697E:  LDRB            R2, [R4,#(dword_81A910 - 0x81A908)]; unsigned __int8
336980:  LDRB            R3, [R4,#(dword_81A914 - 0x81A908)]; unsigned __int8
336982:  STR             R0, [SP,#0xE8+var_E8]; unsigned __int8
336984:  ADD             R0, SP, #0xE8+var_68; this
336986:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
33698A:  LDR.W           R0, =(_ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr - 0x336996)
33698E:  LDR.W           R6, =(_ZN11CTheScripts14IntroTextLinesE_ptr - 0x33699C)
336992:  ADD             R0, PC; _ZN11CTheScripts31NumberOfIntroTextLinesThisFrameE_ptr
336994:  LDRB.W          R1, [SP,#0xE8+var_68]
336998:  ADD             R6, PC; _ZN11CTheScripts14IntroTextLinesE_ptr
33699A:  LDRB.W          R2, [SP,#0xE8+var_68+3]
33699E:  LDR             R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame ...
3369A0:  LDR             R6, [R6]; CTheScripts::IntroTextLines ...
3369A2:  LDRH.W          R3, [SP,#0xE8+var_68+1]
3369A6:  LDRH            R0, [R0]; CTheScripts::NumberOfIntroTextLinesThisFrame
3369A8:  ADD.W           R0, R0, R0,LSL#4
3369AC:  ADD.W           R0, R6, R0,LSL#2
3369B0:  MOVS            R6, #0
3369B2:  STRB.W          R2, [R0,#0x20]
3369B6:  STRH            R3, [R0,#0x1E]
3369B8:  STRB            R1, [R0,#0x1D]
3369BA:  LDR             R1, [R4]
3369BC:  STRB.W          R1, [R0,#0x22]
3369C0:  B.W             loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
3369C4:  MOV             R0, R4; jumptable 00335782 case 2077
3369C6:  MOVS            R1, #2; __int16
3369C8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3369CC:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3369DE)
3369D0:  MOVW            R3, #0xA2C
3369D4:  LDR.W           R0, =(ScriptParams_ptr - 0x3369E0)
3369D8:  MOVS            R6, #0
3369DA:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3369DC:  ADD             R0, PC; ScriptParams_ptr
3369DE:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
3369E0:  LDR             R0, [R0]; ScriptParams
3369E2:  LDRD.W          R2, R0, [R0]
3369E6:  CMP             R0, #0
3369E8:  LDR             R1, [R1]; CPools::ms_pVehiclePool
3369EA:  MOV.W           R2, R2,LSR#8
3369EE:  LDR             R1, [R1]
3369F0:  MLA.W           R1, R2, R3, R1
3369F4:  LDR.W           R3, [R1,#0x430]
3369F8:  LDR.W           R2, [R1,#0x42C]
3369FC:  BIC.W           R0, R3, #0x200
336A00:  IT NE
336A02:  BICNE.W         R2, R2, #0x10
336A06:  IT NE
336A08:  ORRNE.W         R0, R0, #0x200
336A0C:  STR.W           R2, [R1,#0x42C]
336A10:  STR.W           R0, [R1,#0x430]
336A14:  B.W             loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
336A18:  MOV             R0, R4; jumptable 00335782 case 2078
336A1A:  MOVS            R1, #1; __int16
336A1C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
336A20:  LDR.W           R0, =(ScriptParams_ptr - 0x336A28)
336A24:  ADD             R0, PC; ScriptParams_ptr
336A26:  LDR             R0, [R0]; ScriptParams
336A28:  LDR             R0, [R0]; this
336A2A:  BLX             j__ZN10CModelInfo11IsBoatModelEi; CModelInfo::IsBoatModel(int)
336A2E:  B               loc_336A5E
336A30:  MOV             R0, R4; jumptable 00335782 case 2079
336A32:  MOVS            R1, #1; __int16
336A34:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
336A38:  LDR.W           R0, =(ScriptParams_ptr - 0x336A40)
336A3C:  ADD             R0, PC; ScriptParams_ptr
336A3E:  LDR             R0, [R0]; ScriptParams
336A40:  LDR             R0, [R0]; this
336A42:  BLX             j__ZN10CModelInfo12IsPlaneModelEi; CModelInfo::IsPlaneModel(int)
336A46:  B               loc_336A5E
336A48:  MOV             R0, R4; jumptable 00335782 case 2080
336A4A:  MOVS            R1, #1; __int16
336A4C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
336A50:  LDR.W           R0, =(ScriptParams_ptr - 0x336A58)
336A54:  ADD             R0, PC; ScriptParams_ptr
336A56:  LDR             R0, [R0]; ScriptParams
336A58:  LDR             R0, [R0]; this
336A5A:  BLX             j__ZN10CModelInfo11IsHeliModelEi; CModelInfo::IsHeliModel(int)
336A5E:  MOV             R1, R0
336A60:  CMP             R1, #0
336A62:  IT NE
336A64:  MOVNE           R1, #1
336A66:  B               loc_337000
336A68:  MOV             R0, R4; jumptable 00335782 case 2082
336A6A:  MOVS            R1, #1; __int16
336A6C:  MOVS            R5, #1
336A6E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
336A72:  LDR.W           R0, =(ScriptParams_ptr - 0x336A7A)
336A76:  ADD             R0, PC; ScriptParams_ptr
336A78:  LDR             R0, [R0]; ScriptParams
336A7A:  LDR             R0, [R0]
336A7C:  CMP             R0, #0
336A7E:  BEQ.W           loc_3374FC
336A82:  LDR.W           R0, =(TheCamera_ptr - 0x336A8C)
336A86:  MOVS            R6, #0
336A88:  ADD             R0, PC; TheCamera_ptr
336A8A:  LDR             R0, [R0]; TheCamera
336A8C:  STRB.W          R6, [R0,#(byte_951FEB - 0x951FA8)]
336A90:  B.W             loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
336A94:  MOV             R0, R4; jumptable 00335782 case 2083
336A96:  MOVS            R1, #4; __int16
336A98:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
336A9C:  LDR.W           R0, =(ScriptParams_ptr - 0x336AA8)
336AA0:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x336AAA)
336AA4:  ADD             R0, PC; ScriptParams_ptr
336AA6:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
336AA8:  LDR             R0, [R0]; ScriptParams
336AAA:  LDR             R2, [R1]; CPools::ms_pPedPool ...
336AAC:  LDR             R1, [R0]
336AAE:  LDR             R0, [R2]; CPools::ms_pPedPool
336AB0:  CMP             R1, #0
336AB2:  BLT.W           loc_337152
336AB6:  LDR             R2, [R0,#4]
336AB8:  UXTB            R3, R1
336ABA:  LSRS            R1, R1, #8
336ABC:  LDRB            R2, [R2,R1]
336ABE:  CMP             R2, R3
336AC0:  BNE.W           loc_337152
336AC4:  MOVW            R2, #0x7CC
336AC8:  LDR             R3, [R0]
336ACA:  MLA.W           R8, R1, R2, R3
336ACE:  B               loc_337156
336AD0:  MOV             R0, R4; jumptable 00335782 case 2085
336AD2:  MOVS            R1, #1; __int16
336AD4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
336AD8:  LDR.W           R0, =(ScriptParams_ptr - 0x336AE0)
336ADC:  ADD             R0, PC; ScriptParams_ptr
336ADE:  LDR             R0, [R0]; ScriptParams
336AE0:  LDR             R1, [R0]
336AE2:  CMP             R1, #0
336AE4:  BLT.W           loc_33717E
336AE8:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x336AF4)
336AEC:  UXTB            R3, R1
336AEE:  LSRS            R1, R1, #8
336AF0:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
336AF2:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
336AF4:  LDR             R0, [R0]; CPools::ms_pVehiclePool
336AF6:  LDR             R2, [R0,#4]
336AF8:  LDRB            R2, [R2,R1]
336AFA:  CMP             R2, R3
336AFC:  BNE.W           loc_33717E
336B00:  MOVW            R2, #0xA2C
336B04:  LDR             R0, [R0]
336B06:  MLA.W           R0, R1, R2, R0
336B0A:  B               loc_337180
336B0C:  MOV             R0, R4; jumptable 00335782 case 2086
336B0E:  MOVS            R1, #1; __int16
336B10:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
336B14:  LDR.W           R0, =(ScriptParams_ptr - 0x336B22)
336B18:  MOVS            R6, #0
336B1A:  LDR.W           R1, =(_ZN11CTheScripts11bDisplayHudE_ptr - 0x336B24)
336B1E:  ADD             R0, PC; ScriptParams_ptr
336B20:  ADD             R1, PC; _ZN11CTheScripts11bDisplayHudE_ptr
336B22:  LDR             R0, [R0]; ScriptParams
336B24:  LDR             R1, [R1]; CTheScripts::bDisplayHud ...
336B26:  LDR             R0, [R0]
336B28:  CMP             R0, #0
336B2A:  IT NE
336B2C:  MOVNE           R0, #1
336B2E:  STRB            R0, [R1]; CTheScripts::bDisplayHud
336B30:  B.W             loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
336B34:  MOV             R0, R4; jumptable 00335782 case 2087
336B36:  MOVS            R1, #2; __int16
336B38:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
336B3C:  LDR.W           R0, =(ScriptParams_ptr - 0x336B48)
336B40:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x336B4A)
336B44:  ADD             R0, PC; ScriptParams_ptr
336B46:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
336B48:  LDR             R0, [R0]; ScriptParams
336B4A:  LDR             R2, [R1]; CPools::ms_pObjectPool ...
336B4C:  LDR             R1, [R0]
336B4E:  LDR             R0, [R2]; CPools::ms_pObjectPool
336B50:  CMP             R1, #0
336B52:  BLT.W           loc_3371A0
336B56:  LDR             R3, [R0,#4]
336B58:  LSRS            R2, R1, #8
336B5A:  UXTB            R6, R1
336B5C:  LDRB            R3, [R3,R2]
336B5E:  CMP             R3, R6
336B60:  BNE.W           loc_3371A0
336B64:  MOV.W           R3, #0x1A4
336B68:  LDR             R6, [R0]
336B6A:  MLA.W           R4, R2, R3, R6
336B6E:  B               loc_3371A2
336B70:  MOV             R0, R4; jumptable 00335782 case 2088
336B72:  MOVS            R1, #1; __int16
336B74:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
336B78:  LDR.W           R0, =(ScriptParams_ptr - 0x336B86)
336B7C:  MOVS            R6, #0
336B7E:  LDR.W           R1, =(gFireManager_ptr - 0x336B88)
336B82:  ADD             R0, PC; ScriptParams_ptr
336B84:  ADD             R1, PC; gFireManager_ptr
336B86:  LDR             R0, [R0]; ScriptParams
336B88:  LDR             R1, [R1]; gFireManager
336B8A:  LDR             R0, [R0]
336B8C:  STR.W           R0, [R1,#(dword_959160 - 0x958800)]
336B90:  B.W             loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
336B94:  MOV             R0, R4; jumptable 00335782 case 2089
336B96:  MOVS            R1, #1; __int16
336B98:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
336B9C:  LDR.W           R0, =(ScriptParams_ptr - 0x336BAA)
336BA0:  ADD.W           R8, SP, #0xE8+var_68
336BA4:  MOVS            R2, #0x18; unsigned __int8
336BA6:  ADD             R0, PC; ScriptParams_ptr
336BA8:  MOV             R1, R8; char *
336BAA:  LDR             R6, [R0]; ScriptParams
336BAC:  MOV             R0, R4; this
336BAE:  LDR.W           R10, [R6]
336BB2:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
336BB6:  ADD.W           R9, SP, #0xE8+var_78
336BBA:  MOV             R0, R4; this
336BBC:  MOVS            R2, #0x10; unsigned __int8
336BBE:  MOV             R1, R9; char *
336BC0:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
336BC4:  MOV             R0, R4; this
336BC6:  MOVS            R1, #2; __int16
336BC8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
336BCC:  MOVS            R0, #word_28; this
336BCE:  LDR             R5, [R6,#(dword_81A90C - 0x81A908)]
336BD0:  VLDR            S16, [R6]
336BD4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
336BD8:  MOV             R6, R0
336BDA:  MOV.W           R0, #0x3F800000
336BDE:  MOVS            R3, #0xD0
336BE0:  CMP             R5, #0
336BE2:  STR             R0, [SP,#0xE8+var_E4]; float
336BE4:  MOV             R0, R6; this
336BE6:  VSTR            S16, [SP,#0xE8+var_E8]
336BEA:  IT EQ
336BEC:  MOVEQ           R3, #0x10; int
336BEE:  MOV             R1, R8; char *
336BF0:  MOV             R2, R9; char *
336BF2:  BLX             j__ZN14CTaskSimpleDieC2EPKcS1_iff; CTaskSimpleDie::CTaskSimpleDie(char const*,char const*,int,float,float)
336BF6:  MOV             R0, R4
336BF8:  MOV             R1, R10
336BFA:  MOV             R2, R6
336BFC:  MOVW            R3, #0x829
336C00:  B.W             loc_33756C
336C04:  MOV             R0, R4; jumptable 00335782 case 2090
336C06:  MOVS            R1, #2; __int16
336C08:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
336C0C:  LDR.W           R0, =(ScriptParams_ptr - 0x336C18)
336C10:  MOVS            R4, #0
336C12:  MOVS            R6, #0
336C14:  ADD             R0, PC; ScriptParams_ptr
336C16:  LDR             R1, [R0]; ScriptParams
336C18:  LDRD.W          R0, R1, [R1]; int
336C1C:  CMP             R1, #0
336C1E:  IT EQ
336C20:  MOVEQ           R4, #1
336C22:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
336C26:  STRB.W          R4, [R0,#0x12E]
336C2A:  B.W             loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
336C2E:  MOV             R0, R4; jumptable 00335782 case 2096
336C30:  MOVS            R1, #6; __int16
336C32:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
336C36:  LDR.W           R0, =(ScriptParams_ptr - 0x336C42)
336C3A:  LDR.W           R1, =(_ZN6CWorld15SnookerTableMaxE_ptr - 0x336C48)
336C3E:  ADD             R0, PC; ScriptParams_ptr
336C40:  LDR.W           R2, =(_ZN6CWorld15SnookerTableMinE_ptr - 0x336C4A)
336C44:  ADD             R1, PC; _ZN6CWorld15SnookerTableMaxE_ptr
336C46:  ADD             R2, PC; _ZN6CWorld15SnookerTableMinE_ptr
336C48:  LDR             R0, [R0]; ScriptParams
336C4A:  LDR             R1, [R1]; CWorld::SnookerTableMax ...
336C4C:  LDRD.W          R12, R6, [R0]
336C50:  LDRD.W          R5, R4, [R0,#(dword_81A910 - 0x81A908)]
336C54:  LDRD.W          R3, R0, [R0,#(dword_81A918 - 0x81A908)]
336C58:  LDR             R2, [R2]; CWorld::SnookerTableMin ...
336C5A:  STRD.W          R4, R3, [R1]; CWorld::SnookerTableMax
336C5E:  STR             R0, [R1,#(dword_96B9E4 - 0x96B9DC)]
336C60:  STRD.W          R12, R6, [R2]; CWorld::SnookerTableMin
336C64:  MOVS            R6, #0
336C66:  STR             R5, [R2,#(dword_96B9F0 - 0x96B9E8)]
336C68:  B.W             loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
336C6C:  MOV             R0, R4; jumptable 00335782 case 2097
336C6E:  MOVS            R1, #0; unsigned __int8
336C70:  MOVS            R6, #0
336C72:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
336C76:  B.W             loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
336C7A:  MOV             R0, R4; jumptable 00335782 case 2099
336C7C:  MOVS            R1, #1; __int16
336C7E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
336C82:  LDR.W           R0, =(ScriptParams_ptr - 0x336C8A)
336C86:  ADD             R0, PC; ScriptParams_ptr
336C88:  LDR             R0, [R0]; ScriptParams
336C8A:  LDR             R1, [R0]
336C8C:  CMP             R1, #0
336C8E:  BLT             loc_336CBE
336C90:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x336C9C)
336C94:  UXTB            R3, R1
336C96:  LSRS            R1, R1, #8
336C98:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
336C9A:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
336C9C:  LDR             R0, [R0]; CPools::ms_pObjectPool
336C9E:  LDR             R2, [R0,#4]
336CA0:  LDRB            R2, [R2,R1]
336CA2:  CMP             R2, R3
336CA4:  BNE             loc_336CBE
336CA6:  MOV.W           R2, #0x1A4
336CAA:  LDR             R0, [R0]
336CAC:  MLA.W           R0, R1, R2, R0
336CB0:  CBZ             R0, loc_336CBE
336CB2:  LDR.W           R1, [R0,#0x144]
336CB6:  TST.W           R1, #0x1000
336CBA:  BNE.W           loc_3375F6
336CBE:  MOVS            R1, #0
336CC0:  B               loc_337000
336CC2:  MOVS            R0, #dword_68; this
336CC4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
336CC8:  ADD             R1, SP, #0xE8+var_68; CVector *
336CCA:  MOVS            R2, #0; CPed *
336CCC:  MOV             R6, R0
336CCE:  BLX             j__ZN15CTaskSimpleSwimC2EPK7CVectorP4CPed; CTaskSimpleSwim::CTaskSimpleSwim(CVector const*,CPed *)
336CD2:  MOV             R0, R4
336CD4:  MOV             R1, R5
336CD6:  MOV             R2, R6
336CD8:  MOVW            R3, #0x7E1
336CDC:  B.W             loc_33756C
336CE0:  MOVS            R4, #0
336CE2:  LDR.W           R0, =(ScriptParams_ptr - 0x336CEE)
336CE6:  ADD.W           R5, R4, #0xA8
336CEA:  ADD             R0, PC; ScriptParams_ptr
336CEC:  LDR             R0, [R0]; ScriptParams
336CEE:  ADD.W           R10, R0, #4
336CF2:  LDM.W           R10, {R6,R9,R10}
336CF6:  LDRD.W          R1, R2, [R0,#(dword_81A918 - 0x81A908)]
336CFA:  LDR             R0, [R0,#(dword_81A920 - 0x81A908)]
336CFC:  STRD.W          R1, R2, [SP,#0xE8+var_A0]
336D00:  MOV             R2, R5
336D02:  STR             R0, [SP,#0xE8+var_98]
336D04:  ADD             R0, SP, #0xE8+var_68; CMatrix *
336D06:  LDR             R1, [R4,#0x14]; CVector *
336D08:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
336D0C:  VLDR            S0, [SP,#0xE8+var_A0]
336D10:  ADD.W           R8, SP, #0xE8+var_AC
336D14:  VLDR            S6, [SP,#0xE8+var_68]
336D18:  ADD             R0, SP, #0xE8+var_AC
336D1A:  VLDR            S2, [SP,#0xE8+var_A0+4]
336D1E:  VLDR            S8, [SP,#0xE8+var_68+4]
336D22:  VADD.F32        S0, S6, S0
336D26:  VLDR            S4, [SP,#0xE8+var_98]
336D2A:  VLDR            S10, [SP,#0xE8+var_60]
336D2E:  VADD.F32        S2, S8, S2
336D32:  VADD.F32        S4, S10, S4
336D36:  VSTR            S0, [SP,#0xE8+var_A0]
336D3A:  VSTR            S2, [SP,#0xE8+var_A0+4]
336D3E:  VSTR            S4, [SP,#0xE8+var_98]
336D42:  STM.W           R0, {R6,R9,R10}
336D46:  MOV             R0, R8; this
336D48:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
336D4C:  LDR             R1, [R4,#0x14]; CVector *
336D4E:  ADD             R0, SP, #0xE8+var_78; CMatrix *
336D50:  MOV             R2, R5
336D52:  VLDR            S16, [R4,#0x90]
336D56:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
336D5A:  VLDR            S0, [SP,#0xE8+var_78]
336D5E:  ADD             R0, SP, #0xE8+var_68; CVector *
336D60:  VLDR            S6, [SP,#0xE8+var_A0]
336D64:  ADD             R1, SP, #0xE8+var_90; CVector *
336D66:  VLDR            S2, [SP,#0xE8+var_74]
336D6A:  MOV             R2, R8
336D6C:  VLDR            S8, [SP,#0xE8+var_A0+4]
336D70:  VSUB.F32        S0, S6, S0
336D74:  VLDR            S4, [SP,#0xE8+var_70]
336D78:  VLDR            S10, [SP,#0xE8+var_98]
336D7C:  VSUB.F32        S2, S8, S2
336D80:  VSUB.F32        S4, S10, S4
336D84:  VSTR            S0, [SP,#0xE8+var_90]
336D88:  VSTR            S2, [SP,#0xE8+var_8C]
336D8C:  VSTR            S4, [SP,#0xE8+var_88]
336D90:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
336D94:  VLDR            S0, [SP,#0xE8+var_68]
336D98:  MOV.W           R12, #1
336D9C:  VLDR            S2, [SP,#0xE8+var_68+4]
336DA0:  VMUL.F32        S0, S0, S0
336DA4:  VLDR            S4, [SP,#0xE8+var_60]
336DA8:  VMUL.F32        S2, S2, S2
336DAC:  VMUL.F32        S4, S4, S4
336DB0:  VADD.F32        S0, S0, S2
336DB4:  VMOV.F32        S2, #1.0
336DB8:  VADD.F32        S0, S0, S4
336DBC:  VLDR            S4, [R4,#0x94]
336DC0:  VDIV.F32        S6, S2, S16
336DC4:  VDIV.F32        S0, S0, S4
336DC8:  VADD.F32        S0, S6, S0
336DCC:  VMOV            S4, R9
336DD0:  VMOV            S6, R10
336DD4:  VDIV.F32        S0, S2, S0
336DD8:  VMOV            S2, R6
336DDC:  LDRD.W          R0, R6, [SP,#0xE8+var_A0]
336DE0:  VMUL.F32        S4, S0, S4
336DE4:  LDR             R5, [SP,#0xE8+var_98]
336DE6:  VMUL.F32        S2, S0, S2
336DEA:  STRD.W          R0, R6, [SP,#0xE8+var_E8]
336DEE:  VMUL.F32        S0, S0, S6
336DF2:  MOV             R0, R4
336DF4:  STRD.W          R5, R12, [SP,#0xE8+var_E0]
336DF8:  VMOV            R2, S4
336DFC:  VMOV            R1, S2
336E00:  VMOV            R3, S0
336E04:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
336E08:  MOVS            R6, #0
336E0A:  B               loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
336E0C:  MOVS            R4, #0
336E0E:  LDR.W           R0, =(ScriptParams_ptr - 0x336E1C)
336E12:  ADD             R2, SP, #0xE8+var_B8
336E14:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x336E1E)
336E18:  ADD             R0, PC; ScriptParams_ptr
336E1A:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
336E1C:  LDR             R0, [R0]; ScriptParams
336E1E:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
336E20:  VLDR            S0, [R0,#4]
336E24:  VLDR            S6, [R1]
336E28:  VLDR            S2, [R0,#8]
336E2C:  VLDR            S4, [R0,#0xC]
336E30:  VMUL.F32        S0, S0, S6
336E34:  VMUL.F32        S2, S2, S6
336E38:  ADD             R0, SP, #0xE8+var_68; CMatrix *
336E3A:  VMUL.F32        S4, S4, S6
336E3E:  VSTR            S0, [SP,#0xE8+var_B8]
336E42:  VSTR            S2, [SP,#0xE8+var_B8+4]
336E46:  VSTR            S4, [SP,#0xE8+var_B0]
336E4A:  LDR             R1, [R4,#0x14]; CVector *
336E4C:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
336E50:  VLDR            D16, [SP,#0xE8+var_68]
336E54:  LDR             R0, [SP,#0xE8+var_60]
336E56:  STR             R0, [SP,#0xE8+var_B0]
336E58:  VSTR            D16, [SP,#0xE8+var_B8]
336E5C:  LDRB            R0, [R4,#0x1C]
336E5E:  LSLS            R0, R0, #0x1D
336E60:  BPL             loc_336E72
336E62:  LDR             R0, [R4]
336E64:  MOVS            R1, #0
336E66:  LDR             R2, [R0,#0x14]
336E68:  MOV             R0, R4
336E6A:  BLX             R2
336E6C:  MOV             R0, R4; this
336E6E:  BLX             j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
336E72:  VLDR            S0, [SP,#0xE8+var_B8]
336E76:  MOVS            R6, #0
336E78:  VLDR            S6, =50.0
336E7C:  VLDR            S2, [SP,#0xE8+var_B8+4]
336E80:  VLDR            S4, [SP,#0xE8+var_B0]
336E84:  VDIV.F32        S0, S0, S6
336E88:  VDIV.F32        S4, S4, S6
336E8C:  VDIV.F32        S2, S2, S6
336E90:  VSTR            S0, [R4,#0x54]
336E94:  VSTR            S2, [R4,#0x58]
336E98:  VSTR            S4, [R4,#0x5C]
336E9C:  B               loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
336E9E:  MOV.W           R9, #0
336EA2:  LDR.W           R0, =(ScriptParams_ptr - 0x336EAA)
336EA6:  ADD             R0, PC; ScriptParams_ptr
336EA8:  LDR             R0, [R0]; ScriptParams
336EAA:  LDRD.W          R10, R6, [R0,#(dword_81A914 - 0x81A908)]
336EAE:  CMP             R6, #0
336EB0:  VLDR            S16, [R0,#8]
336EB4:  BEQ.W           loc_33752C
336EB8:  CMP             R6, #1
336EBA:  IT EQ
336EBC:  MOVWEQ          R6, #0x19F
336EC0:  B               loc_337530
336EC2:  MOVS            R4, #0
336EC4:  LDRSB.W         R0, [R4,#0x48F]
336EC8:  CMP.W           R0, #0xFFFFFFFF
336ECC:  BGT             loc_336EDE
336ECE:  MOV             R0, R4; this
336ED0:  BLX             j__ZN8CVehicle18GetSpecialColModelEv; CVehicle::GetSpecialColModel(void)
336ED4:  LDRSB.W         R0, [R4,#0x48F]
336ED8:  CMP             R0, #0
336EDA:  BLT.W           def_336FB0; jumptable 00336FB0 default case
336EDE:  LDR.W           R2, =(_ZN8CVehicle23m_aSpecialHydraulicDataE_ptr - 0x336EEE)
336EE2:  ADD.W           R0, R0, R0,LSL#2
336EE6:  LDR.W           R1, =(ScriptParams_ptr - 0x336EF0)
336EEA:  ADD             R2, PC; _ZN8CVehicle23m_aSpecialHydraulicDataE_ptr
336EEC:  ADD             R1, PC; ScriptParams_ptr
336EEE:  LDR             R2, [R2]; CVehicle::m_aSpecialHydraulicData ...
336EF0:  LDR             R1, [R1]; ScriptParams
336EF2:  ADD.W           R0, R2, R0,LSL#3
336EF6:  LDRD.W          R3, R6, [R1,#(dword_81A90C - 0x81A908)]
336EFA:  LDRD.W          R5, R1, [R1,#(dword_81A914 - 0x81A908)]
336EFE:  STR             R3, [R0,#0x18]
336F00:  LDRSB.W         R0, [R4,#0x48F]
336F04:  ADD.W           R0, R0, R0,LSL#2
336F08:  ADD.W           R0, R2, R0,LSL#3
336F0C:  STR             R6, [R0,#0x1C]
336F0E:  MOVS            R6, #0
336F10:  LDRSB.W         R0, [R4,#0x48F]
336F14:  ADD.W           R0, R0, R0,LSL#2
336F18:  ADD.W           R0, R2, R0,LSL#3
336F1C:  STR             R5, [R0,#0x20]
336F1E:  LDRSB.W         R0, [R4,#0x48F]
336F22:  ADD.W           R0, R0, R0,LSL#2
336F26:  ADD.W           R0, R2, R0,LSL#3
336F2A:  STR             R1, [R0,#0x24]
336F2C:  B               loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
336F2E:  MOVS            R0, #0
336F30:  LDR.W           R1, =(ScriptParams_ptr - 0x336F38)
336F34:  ADD             R1, PC; ScriptParams_ptr
336F36:  LDR             R1, [R1]; ScriptParams
336F38:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
336F3A:  CMP             R1, #0
336F3C:  BEQ.W           loc_337510
336F40:  LDRB.W          R1, [R0,#0x149]
336F44:  MOVS            R6, #0
336F46:  CMP             R1, #0
336F48:  ITT NE
336F4A:  STRBNE.W        R6, [R0,#0x149]
336F4E:  STRBNE.W        R1, [R0,#0x148]
336F52:  B               loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
336F54:  MOVS            R0, #0; this
336F56:  LDR.W           R2, =(ScriptParams_ptr - 0x336F5E)
336F5A:  ADD             R2, PC; ScriptParams_ptr
336F5C:  LDR             R2, [R2]; ScriptParams
336F5E:  LDR             R2, [R2,#(dword_81A90C - 0x81A908)]
336F60:  CMP             R2, #0
336F62:  BLT.W           loc_3371CC
336F66:  LDR             R3, [R1,#4]
336F68:  UXTB            R6, R2
336F6A:  LSRS            R2, R2, #8
336F6C:  LDRB            R3, [R3,R2]
336F6E:  CMP             R3, R6
336F70:  BNE.W           loc_3371CC
336F74:  MOVW            R3, #0xA2C
336F78:  LDR             R1, [R1]
336F7A:  MLA.W           R1, R2, R3, R1
336F7E:  B               loc_3371CE
336F80:  MOVS            R0, #0
336F82:  LDR.W           R1, =(ScriptParams_ptr - 0x336F8E)
336F86:  LDRB.W          R2, [R0,#0x735]
336F8A:  ADD             R1, PC; ScriptParams_ptr
336F8C:  LDR             R1, [R1]; ScriptParams
336F8E:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
336F90:  CMP             R1, R2
336F92:  ITTT NE
336F94:  MOVNE           R2, #0
336F96:  STRBNE.W        R2, [R0,#0x736]
336F9A:  STRBNE.W        R1, [R0,#0x735]
336F9E:  LDR.W           R1, =(ScriptParams_ptr - 0x336FA6)
336FA2:  ADD             R1, PC; ScriptParams_ptr
336FA4:  LDR             R1, [R1]; ScriptParams
336FA6:  LDR             R1, [R1,#(dword_81A910 - 0x81A908)]
336FA8:  SUBS            R1, #1; switch 6 cases
336FAA:  CMP             R1, #5
336FAC:  BHI.W           def_336FB0; jumptable 00336FB0 default case
336FB0:  TBH.W           [PC,R1,LSL#1]; switch jump
336FB4:  DCW 6; jump table for switch statement
336FB6:  DCW 0x2F9
336FB8:  DCW 0x301
336FBA:  DCW 0x309
336FBC:  DCW 0x311
336FBE:  DCW 0x319
336FC0:  MOVS            R6, #0; jumptable 00336FB0 case 1
336FC2:  STRB.W          R6, [R0,#0x736]
336FC6:  B               loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
336FC8:  MOVS            R0, #0; this
336FCA:  LDR.W           R1, =(MI_HYDRAULICS_ptr - 0x336FD6)
336FCE:  LDR.W           R2, =(ScriptParams_ptr - 0x336FD8)
336FD2:  ADD             R1, PC; MI_HYDRAULICS_ptr
336FD4:  ADD             R2, PC; ScriptParams_ptr
336FD6:  LDR             R1, [R1]; MI_HYDRAULICS
336FD8:  LDR             R2, [R2]; ScriptParams
336FDA:  LDRH            R1, [R1]; int
336FDC:  LDR             R2, [R2,#(dword_81A90C - 0x81A908)]
336FDE:  CMP             R2, #0
336FE0:  BEQ.W           loc_337524
336FE4:  BLX             j__ZN8CVehicle17AddVehicleUpgradeEi; CVehicle::AddVehicleUpgrade(int)
336FE8:  MOVS            R6, #0
336FEA:  B               loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
336FEC:  MOVS            R0, #0
336FEE:  LDR.W           R1, [R0,#0x5A4]
336FF2:  CMP             R1, #0
336FF4:  ITTE EQ
336FF6:  LDREQ.W         R0, [R0,#0x390]
336FFA:  UBFXEQ.W        R1, R0, #0x11, #1
336FFE:  MOVNE           R1, #0; unsigned __int8
337000:  MOV             R0, R4; this
337002:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
337006:  MOVS            R6, #0
337008:  B               loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
33700A:  MOVS            R1, #0; int
33700C:  LDR.W           R0, =(ScriptParams_ptr - 0x337014)
337010:  ADD             R0, PC; ScriptParams_ptr
337012:  LDR             R5, [R0]; ScriptParams
337014:  ADD             R0, SP, #0xE8+var_68; this
337016:  LDR             R2, [R5,#(dword_81A90C - 0x81A908)]
337018:  BLX             j__ZN7CEntity21FindTriggerPointCoorsEi; CEntity::FindTriggerPointCoors(int)
33701C:  ADD             R2, SP, #0xE8+var_A0
33701E:  VLDR            D16, [SP,#0xE8+var_68]
337022:  LDR             R0, [SP,#0xE8+var_60]
337024:  STR             R0, [SP,#0xE8+var_98]
337026:  VSTR            D16, [SP,#0xE8+var_A0]
33702A:  LDM             R2, {R0-R2}
33702C:  STM             R5!, {R0-R2}
33702E:  MOV             R0, R4
337030:  MOVS            R1, #3
337032:  B               loc_3373D0
337034:  MOVS            R4, #0
337036:  LDR.W           R0, =(ScriptParams_ptr - 0x337042)
33703A:  VLDR            S0, =-100.0
33703E:  ADD             R0, PC; ScriptParams_ptr
337040:  LDR             R0, [R0]; ScriptParams
337042:  VLDR            S20, [R0,#0xC]
337046:  VLDR            S16, [R0,#4]
33704A:  VCMPE.F32       S20, S0
33704E:  VLDR            S18, [R0,#8]
337052:  VMRS            APSR_nzcv, FPSCR
337056:  BGT             loc_337068
337058:  VMOV            R0, S16; this
33705C:  VMOV            R1, S18; float
337060:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
337064:  VMOV            S20, R0
337068:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x337074)
33706C:  VMOV.F32        S2, #1.0
337070:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
337072:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
337074:  VLDR            S0, [R0]
337078:  LDR             R0, [R4,#0x14]
33707A:  VDIV.F32        S4, S2, S0
33707E:  ADD.W           R1, R0, #0x30 ; '0'
337082:  CMP             R0, #0
337084:  IT EQ
337086:  ADDEQ           R1, R4, #4
337088:  VLDR            S0, [R1]
33708C:  VLDR            S6, [R1,#4]
337090:  VLDR            S8, [R1,#8]
337094:  VSUB.F32        S0, S16, S0
337098:  VSUB.F32        S6, S18, S6
33709C:  VSUB.F32        S10, S20, S8
3370A0:  VMUL.F32        S8, S0, S4
3370A4:  VMUL.F32        S0, S10, S4
3370A8:  VMUL.F32        S4, S6, S4
3370AC:  VMOV.F32        S6, #-1.0
3370B0:  VSTR            S8, [R4,#0x48]
3370B4:  VSTR            S4, [R4,#0x4C]
3370B8:  VCMPE.F32       S8, S6
3370BC:  VSTR            S0, [R4,#0x50]
3370C0:  VMRS            APSR_nzcv, FPSCR
3370C4:  BGE.W           loc_337318
3370C8:  VSTR            S6, [R4,#0x48]
3370CC:  B               loc_33732A
3370CE:  MOVS            R0, #0
3370D0:  LDR.W           R1, =(ScriptParams_ptr - 0x3370DC)
3370D4:  LDR.W           R6, [R0,#0x484]
3370D8:  ADD             R1, PC; ScriptParams_ptr
3370DA:  LDR.W           R3, [R0,#0x488]
3370DE:  LDR.W           R2, [R0,#0x48C]
3370E2:  LDR             R5, [R1]; ScriptParams
3370E4:  LDR.W           R1, [R0,#0x490]
3370E8:  ADDW            R0, R0, #0x484
3370EC:  LDR             R5, [R5,#(dword_81A90C - 0x81A908)]
3370EE:  CMP             R5, #0
3370F0:  ITE NE
3370F2:  ORRNE.W         R6, R6, #0x400000
3370F6:  BICEQ.W         R6, R6, #0x400000
3370FA:  STR             R6, [R0]
3370FC:  MOVS            R6, #0
3370FE:  STR             R3, [R0,#4]
337100:  STR             R2, [R0,#8]
337102:  STR             R1, [R0,#0xC]
337104:  B               loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
337106:  MOVS            R0, #0
337108:  LDR             R1, [R0,#0x14]
33710A:  ADD.W           R3, R1, #0x30 ; '0'
33710E:  CMP             R1, #0
337110:  IT EQ
337112:  ADDEQ           R3, R0, #4
337114:  LDR             R0, [R3,#8]
337116:  STR             R0, [SP,#0xE8+var_98]
337118:  VLDR            S16, [SP,#0xE8+var_98]
33711C:  VLDR            D16, [R3]
337120:  MOVS            R3, #0; float
337122:  VMOV            R2, S16; float
337126:  VSTR            D16, [SP,#0xE8+var_A0]
33712A:  LDRD.W          R0, R1, [SP,#0xE8+var_A0]; float
33712E:  STR             R6, [SP,#0xE8+var_E8]; bool *
337130:  BLX             j__ZN6CWorld21FindGroundZFor3DCoordEfffPbPP7CEntity; CWorld::FindGroundZFor3DCoord(float,float,float,bool *,CEntity **)
337134:  VMOV            S0, R0
337138:  LDR.W           R0, =(ScriptParams_ptr - 0x337146)
33713C:  MOVS            R1, #1; __int16
33713E:  VSUB.F32        S0, S16, S0
337142:  ADD             R0, PC; ScriptParams_ptr
337144:  LDR             R0, [R0]; ScriptParams
337146:  VSTR            S0, [R0]
33714A:  MOV             R0, R4; this
33714C:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
337150:  B               loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
337152:  MOV.W           R8, #0
337156:  LDR.W           R1, =(ScriptParams_ptr - 0x337160)
33715A:  MOVS            R6, #0
33715C:  ADD             R1, PC; ScriptParams_ptr
33715E:  LDR             R1, [R1]; ScriptParams
337160:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]; unsigned int
337162:  CMP             R1, #0
337164:  BLT             loc_3371E8
337166:  LDR             R2, [R0,#4]
337168:  UXTB            R3, R1
33716A:  LSRS            R1, R1, #8
33716C:  LDRB            R2, [R2,R1]
33716E:  CMP             R2, R3
337170:  BNE             loc_3371E8
337172:  MOVW            R2, #0x7CC
337176:  LDR             R0, [R0]
337178:  MLA.W           R10, R1, R2, R0
33717C:  B               loc_3371EC
33717E:  MOVS            R0, #0
337180:  LDR.W           R1, [R0,#0x5A4]
337184:  CMP             R1, #4
337186:  BEQ.W           loc_337596
33718A:  CMP             R1, #3
33718C:  BNE.W           def_336FB0; jumptable 00336FB0 default case
337190:  MOVW            R1, #0x47AE
337194:  MOVS            R6, #0
337196:  MOVT            R1, #0x3E61
33719A:  STR.W           R1, [R0,#0x860]
33719E:  B               loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
3371A0:  MOVS            R4, #0
3371A2:  LDR.W           R2, =(ScriptParams_ptr - 0x3371AA)
3371A6:  ADD             R2, PC; ScriptParams_ptr
3371A8:  LDR             R2, [R2]; ScriptParams
3371AA:  LDR             R2, [R2,#(dword_81A90C - 0x81A908)]
3371AC:  CMP             R2, #0
3371AE:  BLT             loc_33725E
3371B0:  LDR             R6, [R0,#4]
3371B2:  LSRS            R3, R2, #8
3371B4:  UXTB            R5, R2
3371B6:  LDRB            R6, [R6,R3]
3371B8:  CMP             R6, R5
3371BA:  BNE             loc_33725E
3371BC:  MOV.W           R6, #0x1A4
3371C0:  LDR             R5, [R0]
3371C2:  MLA.W           R5, R3, R6, R5
3371C6:  CMP             R1, #0
3371C8:  BGE             loc_337264
3371CA:  B               loc_337280
3371CC:  MOVS            R1, #0; CVehicle *
3371CE:  LDR.W           R2, =(ScriptParams_ptr - 0x3371D6)
3371D2:  ADD             R2, PC; ScriptParams_ptr
3371D4:  LDR             R2, [R2]; ScriptParams
3371D6:  LDR             R2, [R2,#(dword_81A910 - 0x81A908)]; CVehicle *
3371D8:  BLX             j__ZN6CCarAI23TellCarToFollowOtherCarEP8CVehicleS1_f; CCarAI::TellCarToFollowOtherCar(CVehicle *,CVehicle *,float)
3371DC:  MOVS            R6, #0
3371DE:  B               loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
3371E0:  DCFS 50.0
3371E4:  DCFS -100.0
3371E8:  MOV.W           R10, #0
3371EC:  LDR.W           R0, =(ScriptParams_ptr - 0x3371F4)
3371F0:  ADD             R0, PC; ScriptParams_ptr
3371F2:  LDR             R5, [R0]; ScriptParams
3371F4:  MOVS            R0, #dword_78; this
3371F6:  VLDR            S16, [R5,#8]
3371FA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3371FE:  ADR.W           R9, aCommandTaskGre; "COMMAND_TASK_GREET_PARTNER"
337202:  MOV             R11, R0
337204:  LDR             R0, [R5,#(dword_81A914 - 0x81A908)]
337206:  MOV             R2, R10
337208:  STRD.W          R0, R6, [SP,#0xE8+var_E4]
33720C:  MOV             R0, R11
33720E:  MOV             R1, R9
337210:  MOVS            R3, #1
337212:  STRD.W          R6, R6, [SP,#0xE8+var_DC]
337216:  VSTR            S16, [SP,#0xE8+var_E8]
33721A:  BLX             j__ZN24CTaskComplexPartnerGreetC2EPcP4CPedhfi7CVector; CTaskComplexPartnerGreet::CTaskComplexPartnerGreet(char *,CPed *,uchar,float,int,CVector)
33721E:  LDR             R1, [R5]; int
337220:  MOV             R0, R4; this
337222:  MOV             R2, R11; CTask *
337224:  MOVW            R3, #0x823; int
337228:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
33722C:  MOVS            R0, #dword_78; this
33722E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
337232:  MOV             R10, R0
337234:  LDR             R0, [R5,#(dword_81A914 - 0x81A908)]
337236:  STRD.W          R0, R6, [SP,#0xE8+var_E4]
33723A:  MOV             R0, R10
33723C:  MOV             R1, R9
33723E:  MOV             R2, R8
337240:  MOVS            R3, #0
337242:  STRD.W          R6, R6, [SP,#0xE8+var_DC]
337246:  VSTR            S16, [SP,#0xE8+var_E8]
33724A:  BLX             j__ZN24CTaskComplexPartnerGreetC2EPcP4CPedhfi7CVector; CTaskComplexPartnerGreet::CTaskComplexPartnerGreet(char *,CPed *,uchar,float,int,CVector)
33724E:  LDR             R1, [R5,#(dword_81A90C - 0x81A908)]; int
337250:  MOV             R0, R4; this
337252:  MOV             R2, R10; CTask *
337254:  MOVW            R3, #0x823; int
337258:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
33725C:  B               loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
33725E:  MOVS            R5, #0
337260:  CMP             R1, #0
337262:  BLT             loc_337280
337264:  LDR             R3, [R0,#4]
337266:  UXTB            R6, R1
337268:  LSRS            R1, R1, #8
33726A:  LDRB            R3, [R3,R1]
33726C:  CMP             R3, R6
33726E:  BNE             loc_337280
337270:  MOV.W           R3, #0x1A4
337274:  LDR             R6, [R0]
337276:  MLA.W           R1, R1, R3, R6
33727A:  CMP             R2, #0
33727C:  BGE             loc_337286
33727E:  B               loc_3372CA
337280:  MOVS            R1, #0
337282:  CMP             R2, #0
337284:  BLT             loc_3372CA
337286:  LDR             R6, [R0,#4]
337288:  LSRS            R3, R2, #8
33728A:  UXTB            R2, R2
33728C:  LDRB            R6, [R6,R3]
33728E:  CMP             R6, R2
337290:  BNE             loc_3372CA
337292:  CMP             R1, #0
337294:  ITTTT NE
337296:  MOVNE.W         R2, #0x1A4
33729A:  LDRNE           R0, [R0]
33729C:  MLANE.W         R6, R3, R2, R0
3372A0:  CMPNE           R6, #0
3372A2:  BEQ             loc_3372CA
3372A4:  MOV.W           R2, #0x1A4
3372A8:  STR             R6, [R1,#0x34]
3372AA:  MLA.W           R0, R3, R2, R0
3372AE:  LDRB.W          R1, [R0,#0x38]
3372B2:  ADDS            R1, #1; CEntity *
3372B4:  STRB.W          R1, [R0,#0x38]
3372B8:  MOV             R0, R6; this
3372BA:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
3372BE:  MOV             R0, R6; this
3372C0:  BLX             j__ZN7CEntity16SetupBigBuildingEv; CEntity::SetupBigBuilding(void)
3372C4:  MOV             R0, R6; this
3372C6:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
3372CA:  MOV             R0, R4; this
3372CC:  MOV             R1, R5; CObject *
3372CE:  BLX             j__ZN11CTheScripts30AddToListOfConnectedLodObjectsEP7CObjectS1_; CTheScripts::AddToListOfConnectedLodObjects(CObject *,CObject *)
3372D2:  B               def_336FB0; jumptable 00336FB0 default case
3372D4:  MOVS            R5, #0
3372D6:  MOVS            R0, #0
3372D8:  LDR.W           R1, =(ScriptParams_ptr - 0x3372E0)
3372DC:  ADD             R1, PC; ScriptParams_ptr
3372DE:  LDR             R1, [R1]; ScriptParams
3372E0:  STRD.W          R5, R0, [R1]
3372E4:  MOV             R0, R4
3372E6:  MOVS            R1, #2
3372E8:  B               loc_3373D0
3372EA:  ADD.W           R0, R5, #0x590
3372EE:  LDR             R0, [R0]
3372F0:  CMP             R0, #0
3372F2:  BEQ             loc_3373C0
3372F4:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3372FC)
3372F8:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3372FA:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
3372FC:  LDR             R1, [R1]; CPools::ms_pVehiclePool
3372FE:  LDRD.W          R2, R1, [R1]
337302:  SUBS            R0, R0, R2
337304:  MOV             R2, #0xBFE6D523
33730C:  ASRS            R0, R0, #2
33730E:  MULS            R0, R2
337310:  LDRB            R1, [R1,R0]
337312:  ORR.W           R0, R1, R0,LSL#8
337316:  B               loc_3373C4
337318:  VCMPE.F32       S8, S2
33731C:  VMRS            APSR_nzcv, FPSCR
337320:  VMOV.F32        S6, S2
337324:  IT GT
337326:  VSTRGT          S6, [R4,#0x48]
33732A:  VMOV.F32        S2, #-1.0
33732E:  VCMPE.F32       S4, S2
337332:  VMRS            APSR_nzcv, FPSCR
337336:  BGE             loc_33733E
337338:  VSTR            S2, [R4,#0x4C]
33733C:  B               loc_337350
33733E:  VMOV.F32        S2, #1.0
337342:  VCMPE.F32       S4, S2
337346:  VMRS            APSR_nzcv, FPSCR
33734A:  IT GT
33734C:  VSTRGT          S2, [R4,#0x4C]
337350:  VMOV.F32        S2, #-1.0
337354:  VCMPE.F32       S0, S2
337358:  VMRS            APSR_nzcv, FPSCR
33735C:  BGE             loc_337364
33735E:  VSTR            S2, [R4,#0x50]
337362:  B               loc_337376
337364:  VMOV.F32        S2, #1.0
337368:  VCMPE.F32       S0, S2
33736C:  VMRS            APSR_nzcv, FPSCR
337370:  IT GT
337372:  VSTRGT          S2, [R4,#0x50]
337376:  VMOV            R5, S16
33737A:  MOVS            R3, #0
33737C:  VMOV            R9, S18
337380:  MOVS            R6, #0
337382:  VMOV            R8, S20
337386:  MOVT            R3, #0x41C8
33738A:  STRD.W          R4, R6, [SP,#0xE8+var_E8]
33738E:  MOV             R0, R5
337390:  MOV             R1, R9
337392:  MOV             R2, R8
337394:  BLX             j__Z44MarkSurroundingEntitiesForCollisionWithTrain7CVectorfP7CEntityb; MarkSurroundingEntitiesForCollisionWithTrain(CVector,float,CEntity *,bool)
337398:  LDR             R0, [R4]
33739A:  MOV             R1, R5
33739C:  MOV             R2, R9
33739E:  MOV             R3, R8
3373A0:  LDR.W           R12, [R0,#0x3C]
3373A4:  MOV             R0, R4
3373A6:  STR             R6, [SP,#0xE8+var_E8]
3373A8:  BLX             R12
3373AA:  ADD             R0, SP, #0xE8+var_68; this
3373AC:  MOV             R1, R4; CVector *
3373AE:  VSTR            S18, [SP,#0xE8+var_68+4]
3373B2:  VSTR            S16, [SP,#0xE8+var_68]
3373B6:  VSTR            S20, [SP,#0xE8+var_60]
3373BA:  BLX             j__ZN11CTheScripts26ClearSpaceForMissionEntityERK7CVectorP7CEntity; CTheScripts::ClearSpaceForMissionEntity(CVector const&,CEntity *)
3373BE:  B               loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
3373C0:  MOV.W           R0, #0xFFFFFFFF
3373C4:  LDR             R1, =(ScriptParams_ptr - 0x3373CA)
3373C6:  ADD             R1, PC; ScriptParams_ptr
3373C8:  LDR             R1, [R1]; ScriptParams
3373CA:  STR             R0, [R1]
3373CC:  MOV             R0, R4; this
3373CE:  MOVS            R1, #1; __int16
3373D0:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
3373D4:  MOVS            R6, #0
3373D6:  B               loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
3373D8:  MOV.W           R5, #0xFFFFFFFF
3373DC:  MOV             R0, R4; this
3373DE:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
3373E2:  MOVS            R1, #7; int
3373E4:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
3373E8:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x3373EE)
3373EA:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
3373EC:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
3373EE:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
3373F0:  CBNZ            R0, loc_337406
3373F2:  MOVW            R0, #0xF1C0; unsigned int
3373F6:  BLX             _Znwj; operator new(uint)
3373FA:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
3373FE:  LDR             R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x337404)
337400:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
337402:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
337404:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
337406:  LDRB.W          R3, [R4,#0xE6]; unsigned __int8
33740A:  MOV             R1, R5; int
33740C:  MOVS            R2, #0; int
33740E:  MOVS            R6, #0
337410:  BLX             j__ZN19CDecisionMakerTypes17CopyDecisionMakerEiih; CDecisionMakerTypes::CopyDecisionMaker(int,int,uchar)
337414:  MOVS            R1, #7; int
337416:  BLX             j__ZN11CTheScripts28GetNewUniqueScriptThingIndexEih; CTheScripts::GetNewUniqueScriptThingIndex(int,uchar)
33741A:  LDR             R1, =(ScriptParams_ptr - 0x337420)
33741C:  ADD             R1, PC; ScriptParams_ptr
33741E:  LDR             R1, [R1]; ScriptParams
337420:  STR             R0, [R1]
337422:  MOV             R0, R4; this
337424:  MOVS            R1, #1; __int16
337426:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
33742A:  LDRB.W          R0, [R4,#0xE6]
33742E:  CMP             R0, #0
337430:  BEQ.W           loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
337434:  LDR             R0, =(ScriptParams_ptr - 0x33743C)
337436:  LDR             R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x33743E)
337438:  ADD             R0, PC; ScriptParams_ptr
33743A:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
33743C:  B               loc_33749C
33743E:  MOV.W           R5, #0xFFFFFFFF
337442:  MOV             R0, R4; this
337444:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
337448:  MOVS            R1, #7; int
33744A:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
33744E:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x337454)
337450:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
337452:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
337454:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes
337456:  CBNZ            R0, loc_33746C
337458:  MOVW            R0, #0xF1C0; unsigned int
33745C:  BLX             _Znwj; operator new(uint)
337460:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
337464:  LDR             R1, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x33746A)
337466:  ADD             R1, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
337468:  LDR             R1, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes ...
33746A:  STR             R0, [R1]; CDecisionMakerTypes::m_pPedDecisionTypes
33746C:  LDRB.W          R3, [R4,#0xE6]; unsigned __int8
337470:  MOV             R1, R5; int
337472:  MOVS            R2, #1; int
337474:  BLX             j__ZN19CDecisionMakerTypes17CopyDecisionMakerEiih; CDecisionMakerTypes::CopyDecisionMaker(int,int,uchar)
337478:  MOVS            R1, #7; int
33747A:  BLX             j__ZN11CTheScripts28GetNewUniqueScriptThingIndexEih; CTheScripts::GetNewUniqueScriptThingIndex(int,uchar)
33747E:  LDR             R1, =(ScriptParams_ptr - 0x337484)
337480:  ADD             R1, PC; ScriptParams_ptr
337482:  LDR             R1, [R1]; ScriptParams
337484:  STR             R0, [R1]
337486:  MOV             R0, R4; this
337488:  MOVS            R1, #1; __int16
33748A:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
33748E:  LDRB.W          R0, [R4,#0xE6]
337492:  CBZ             R0, def_336FB0; jumptable 00336FB0 default case
337494:  LDR             R0, =(ScriptParams_ptr - 0x33749C)
337496:  LDR             R1, =(_ZN11CTheScripts14MissionCleanUpE_ptr - 0x33749E)
337498:  ADD             R0, PC; ScriptParams_ptr
33749A:  ADD             R1, PC; _ZN11CTheScripts14MissionCleanUpE_ptr
33749C:  LDR             R2, [R0]; ScriptParams
33749E:  LDR             R0, [R1]; this
3374A0:  LDR             R1, [R2]; int
3374A2:  MOVS            R2, #9; unsigned __int8
3374A4:  BLX             j__ZN15CMissionCleanup15AddEntityToListEih; CMissionCleanup::AddEntityToList(int,uchar)
3374A8:  MOVS            R6, #0
3374AA:  B               loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
3374AC:  MOVS            R6, #0; jumptable 00336FB0 default case
3374AE:  B               loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
3374B0:  SUB.W           R0, R7, #-var_46; this
3374B4:  MOVS            R1, #0; char *
3374B6:  MOVS            R6, #0
3374B8:  BLX             j__ZN17CEntryExitManager16SetEnabledByNameEPKcb; CEntryExitManager::SetEnabledByName(char const*,bool)
3374BC:  B               loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
3374BE:  LDR             R1, [SP,#0xE8+var_C0]
3374C0:  MOV.W           R0, #0xFFFFFFFF
3374C4:  CMP.W           R1, #0xFFFFFFFF
3374C8:  IT GT
3374CA:  MOVGT.W         R10, #1
3374CE:  STRD.W          R10, R0, [SP,#0xE8+var_D8]; bool
3374D2:  ADD             R0, SP, #0xE8+var_68
3374D4:  VSTR            S18, [SP,#0xE8+var_DC]
3374D8:  STR             R0, [SP,#0xE8+var_E8]; char *
3374DA:  ADD             R0, SP, #0xE8+var_78
3374DC:  ADD             R1, SP, #0xE8+var_90; CVector *
3374DE:  STRD.W          R0, R6, [SP,#0xE8+var_E4]; char *
3374E2:  MOV             R0, R5; this
3374E4:  BLX             j__ZN23CTaskSimpleSlideToCoordC2ERK7CVectorffPKcS4_ifbi; CTaskSimpleSlideToCoord::CTaskSimpleSlideToCoord(CVector const&,float,float,char const*,char const*,int,float,bool,int)
3374E8:  MOV             R0, R11; this
3374EA:  MOV             R1, R5; CTask *
3374EC:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
3374F0:  LDR             R1, [SP,#0xE8+var_BC]
3374F2:  MOV             R0, R4
3374F4:  MOV             R2, R11
3374F6:  MOVW            R3, #0x804
3374FA:  B               loc_33756C
3374FC:  LDR             R0, =(TheCamera_ptr - 0x337506)
3374FE:  MOVS            R1, #2
337500:  MOVS            R6, #0
337502:  ADD             R0, PC; TheCamera_ptr
337504:  LDR             R0, [R0]; TheCamera
337506:  STR.W           R1, [R0,#(dword_952058 - 0x951FA8)]
33750A:  STRB.W          R5, [R0,#(byte_951FEB - 0x951FA8)]
33750E:  B               loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
337510:  LDRB.W          R1, [R0,#0x148]
337514:  MOVS            R6, #0
337516:  CMP             R1, #0
337518:  ITT NE
33751A:  STRBNE.W        R6, [R0,#0x148]
33751E:  STRBNE.W        R1, [R0,#0x149]
337522:  B               loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
337524:  BLX             j__ZN8CVehicle20RemoveVehicleUpgradeEi; CVehicle::RemoveVehicleUpgrade(int)
337528:  MOVS            R6, #0
33752A:  B               loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
33752C:  MOV.W           R6, #0xFFFFFFFF
337530:  LDR             R0, =(ScriptParams_ptr - 0x337536)
337532:  ADD             R0, PC; ScriptParams_ptr
337534:  LDR             R0, [R0]; ScriptParams
337536:  LDR.W           R11, [R0,#(dword_81A91C - 0x81A908)]
33753A:  MOVS            R0, #word_2C; this
33753C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
337540:  VMOV            R3, S16; float
337544:  MOV             R5, R0
337546:  LDR             R0, =(_ZN28CTaskComplexFollowPointRoute13ms_pointRouteE_ptr - 0x337552)
337548:  MOV             R1, R9; CVehicle *
33754A:  STRD.W          R10, R6, [SP,#0xE8+var_E8]; int
33754E:  ADD             R0, PC; _ZN28CTaskComplexFollowPointRoute13ms_pointRouteE_ptr
337550:  LDR             R2, [R0]; CPointRoute *
337552:  MOVS            R0, #0xBF800000
337558:  STRD.W          R0, R11, [SP,#0xE8+var_E0]; float
33755C:  MOV             R0, R5; this
33755E:  BLX             j__ZN27CTaskComplexDrivePointRouteC2EP8CVehicleRK11CPointRoutefiifi; CTaskComplexDrivePointRoute::CTaskComplexDrivePointRoute(CVehicle *,CPointRoute const&,float,int,int,float,int)
337562:  MOV             R0, R4; this
337564:  MOV             R1, R8; int
337566:  MOV             R2, R5; CTask *
337568:  MOVW            R3, #0x7E7; int
33756C:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
337570:  MOVS            R6, #0
337572:  LDR             R0, =(__stack_chk_guard_ptr - 0x33757A); jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
337574:  LDR             R1, [SP,#0xE8+var_3C]
337576:  ADD             R0, PC; __stack_chk_guard_ptr
337578:  LDR             R0, [R0]; __stack_chk_guard
33757A:  LDR             R0, [R0]
33757C:  SUBS            R0, R0, R1
33757E:  ITTTT EQ
337580:  SXTBEQ          R0, R6
337582:  ADDEQ           SP, SP, #0xB0
337584:  VPOPEQ          {D8-D10}
337588:  ADDEQ           SP, SP, #4
33758A:  ITT EQ
33758C:  POPEQ.W         {R8-R11}
337590:  POPEQ           {R4-R7,PC}
337592:  BLX             __stack_chk_fail
337596:  MOVW            R1, #0x51EC
33759A:  MOVS            R6, #0
33759C:  MOVT            R1, #0x3E38
3375A0:  STR.W           R1, [R0,#0x9D8]
3375A4:  B               loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
3375A6:  LDRB.W          R1, [R0,#0x736]; jumptable 00336FB0 case 2
3375AA:  MOVS            R6, #0
3375AC:  ORR.W           R1, R1, #1
3375B0:  STRB.W          R1, [R0,#0x736]
3375B4:  B               loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
3375B6:  LDRB.W          R1, [R0,#0x736]; jumptable 00336FB0 case 3
3375BA:  MOVS            R6, #0
3375BC:  ORR.W           R1, R1, #2
3375C0:  STRB.W          R1, [R0,#0x736]
3375C4:  B               loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
3375C6:  LDRB.W          R1, [R0,#0x736]; jumptable 00336FB0 case 4
3375CA:  MOVS            R6, #0
3375CC:  ORR.W           R1, R1, #4
3375D0:  STRB.W          R1, [R0,#0x736]
3375D4:  B               loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
3375D6:  LDRB.W          R1, [R0,#0x736]; jumptable 00336FB0 case 5
3375DA:  MOVS            R6, #0
3375DC:  ORR.W           R1, R1, #8
3375E0:  STRB.W          R1, [R0,#0x736]
3375E4:  B               loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
3375E6:  LDRB.W          R1, [R0,#0x736]; jumptable 00336FB0 case 6
3375EA:  MOVS            R6, #0
3375EC:  ORR.W           R1, R1, #0xF
3375F0:  STRB.W          R1, [R0,#0x736]
3375F4:  B               loc_337572; jumptable 00335782 cases 2001,2002,2004,2012,2018,2019,2025-2029,2036,2053,2055-2057,2060,2061,2063,2067,2075,2081,2084,2098
3375F6:  ADD.W           R0, R0, #0x144
3375FA:  BIC.W           R1, R1, #0x1000
3375FE:  STR             R1, [R0]
337600:  MOVS            R1, #1
337602:  B               loc_337000
