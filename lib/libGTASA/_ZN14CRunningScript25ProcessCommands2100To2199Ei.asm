; =========================================================
; Game Engine Function: _ZN14CRunningScript25ProcessCommands2100To2199Ei
; Address            : 0x337754 - 0x338FD2
; =========================================================

337754:  PUSH            {R4-R7,LR}
337756:  ADD             R7, SP, #0xC
337758:  PUSH.W          {R8,R9,R11}
33775C:  VPUSH           {D8-D11}
337760:  SUB             SP, SP, #0xB0; bool
337762:  MOV             R8, R0
337764:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x337770)
337768:  SUBW            R1, R1, #0x834; switch 100 cases
33776C:  ADD             R0, PC; __stack_chk_guard_ptr
33776E:  CMP             R1, #0x63 ; 'c'
337770:  LDR             R0, [R0]; __stack_chk_guard
337772:  LDR             R0, [R0]
337774:  STR             R0, [SP,#0xE8+var_3C]
337776:  BHI.W           def_33777E; jumptable 0033777E default case, cases 2132,2149
33777A:  MOVS            R0, #word_12; this
33777C:  MOVS            R6, #0
33777E:  TBH.W           [PC,R1,LSL#1]; switch jump
337782:  DCW 0x7C; jump table for switch statement
337784:  DCW 0x96
337786:  DCW 0xAA
337788:  DCW 0xC9
33778A:  DCW 0xB98
33778C:  DCW 0xE8
33778E:  DCW 0x107
337790:  DCW 0xB98
337792:  DCW 0x126
337794:  DCW 0x145
337796:  DCW 0x16F
337798:  DCW 0x18E
33779A:  DCW 0x1A7
33779C:  DCW 0x1C1
33779E:  DCW 0x1DB
3377A0:  DCW 0x1EA
3377A2:  DCW 0x69
3377A4:  DCW 0x6C
3377A6:  DCW 0x69
3377A8:  DCW 0x6C
3377AA:  DCW 0xB98
3377AC:  DCW 0xB98
3377AE:  DCW 0xB98
3377B0:  DCW 0xB98
3377B2:  DCW 0xB98
3377B4:  DCW 0x208
3377B6:  DCW 0x21D
3377B8:  DCW 0xB98
3377BA:  DCW 0x240
3377BC:  DCW 0x25F
3377BE:  DCW 0x27E
3377C0:  DCW 0x2A1
3377C2:  DCW 0x2BB
3377C4:  DCW 0x2BE
3377C6:  DCW 0x2E0
3377C8:  DCW 0xB98
3377CA:  DCW 0x303
3377CC:  DCW 0x32A
3377CE:  DCW 0x34F
3377D0:  DCW 0x361
3377D2:  DCW 0xB98
3377D4:  DCW 0xB98
3377D6:  DCW 0x383
3377D8:  DCW 0xB98
3377DA:  DCW 0x3A2
3377DC:  DCW 0x3D0
3377DE:  DCW 0xB98
3377E0:  DCW 0xB98
3377E2:  DCW 0x3E0
3377E4:  DCW 0x2BB
3377E6:  DCW 0x403
3377E8:  DCW 0x482
3377EA:  DCW 0x64
3377EC:  DCW 0x64
3377EE:  DCW 0xB98
3377F0:  DCW 0x64
3377F2:  DCW 0x64
3377F4:  DCW 0xB98
3377F6:  DCW 0xB98
3377F8:  DCW 0xB98
3377FA:  DCW 0xB98
3377FC:  DCW 0x497
3377FE:  DCW 0x4C1
337800:  DCW 0x50A
337802:  DCW 0x517
337804:  DCW 0x54A
337806:  DCW 0x56B
337808:  DCW 0xB98
33780A:  DCW 0x5A7
33780C:  DCW 0x5C1
33780E:  DCW 0x5D2
337810:  DCW 0x5D7
337812:  DCW 0x606
337814:  DCW 0x60A
337816:  DCW 0x627
337818:  DCW 0x646
33781A:  DCW 0xB98
33781C:  DCW 0x668
33781E:  DCW 0xB98
337820:  DCW 0x67D
337822:  DCW 0x69D
337824:  DCW 0xB98
337826:  DCW 0xB98
337828:  DCW 0x6D0
33782A:  DCW 0x6F8
33782C:  DCW 0x715
33782E:  DCW 0x739
337830:  DCW 0x740
337832:  DCW 0x805
337834:  DCW 0x824
337836:  DCW 0x8B7
337838:  DCW 0xB98
33783A:  DCW 0x8BB
33783C:  DCW 0xB98
33783E:  DCW 0xB98
337840:  DCW 0x8D0
337842:  DCW 0xB98
337844:  DCW 0xB98
337846:  DCW 0xB98
337848:  DCW 0x8EE
33784A:  MOV             R0, R8; jumptable 0033777E cases 2152,2153,2155,2156
33784C:  BLX             j__ZN14CRunningScript24GetIndexOfGlobalVariableEv; CRunningScript::GetIndexOfGlobalVariable(void)
337850:  B.W             loc_338EB0
337854:  MOV             R0, R8; jumptable 0033777E cases 2116,2118
337856:  MOVS            R1, #2
337858:  B               loc_33785E
33785A:  MOV             R0, R8; jumptable 0033777E cases 2117,2119
33785C:  MOVS            R1, #1; unsigned __int8
33785E:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
337862:  LDRB            R0, [R0]
337864:  MOVS            R6, #0
337866:  CMP             R0, #0
337868:  MOV.W           R1, #0
33786C:  MOV             R0, R8; this
33786E:  IT EQ
337870:  MOVEQ           R1, #1; unsigned __int8
337872:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
337876:  B.W             loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
33787A:  MOV             R0, R8; jumptable 0033777E case 2100
33787C:  MOVS            R1, #2; __int16
33787E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
337882:  LDR.W           R0, =(TheCamera_ptr - 0x33788E)
337886:  LDR.W           R1, =(ScriptParams_ptr - 0x337890)
33788A:  ADD             R0, PC; TheCamera_ptr
33788C:  ADD             R1, PC; ScriptParams_ptr
33788E:  LDR             R0, [R0]; TheCamera
337890:  LDR             R2, [R1]; ScriptParams
337892:  LDRB.W          R3, [R0,#(byte_951FFF - 0x951FA8)]
337896:  LDRD.W          R1, R2, [R2]; float
33789A:  ADD.W           R3, R3, R3,LSL#5
33789E:  ADD.W           R0, R0, R3,LSL#4
3378A2:  ADD.W           R0, R0, #0x170; this
3378A6:  BLX             j__ZN4CCam9DoCamBumpEff; CCam::DoCamBump(float,float)
3378AA:  B.W             loc_338EB0
3378AE:  LDR.W           R1, =(_ZN6CClock19ms_nGameClockMonthsE_ptr - 0x3378BA); jumptable 0033777E case 2101
3378B2:  LDR.W           R0, =(_ZN6CClock17ms_nGameClockDaysE_ptr - 0x3378C0)
3378B6:  ADD             R1, PC; _ZN6CClock19ms_nGameClockMonthsE_ptr
3378B8:  LDR.W           R2, =(ScriptParams_ptr - 0x3378C4)
3378BC:  ADD             R0, PC; _ZN6CClock17ms_nGameClockDaysE_ptr
3378BE:  LDR             R1, [R1]; CClock::ms_nGameClockMonths ...
3378C0:  ADD             R2, PC; ScriptParams_ptr
3378C2:  LDR             R0, [R0]; CClock::ms_nGameClockDays ...
3378C4:  LDR             R2, [R2]; ScriptParams
3378C6:  LDRB            R1, [R1]; CClock::ms_nGameClockMonths
3378C8:  LDRB            R0, [R0]; CClock::ms_nGameClockDays
3378CA:  STRD.W          R0, R1, [R2]
3378CE:  MOV             R0, R8
3378D0:  MOVS            R1, #2
3378D2:  B.W             loc_338EAC
3378D6:  MOV             R0, R8; jumptable 0033777E case 2102
3378D8:  MOVS            R1, #1; __int16
3378DA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3378DE:  LDR.W           R0, =(ScriptParams_ptr - 0x3378E6)
3378E2:  ADD             R0, PC; ScriptParams_ptr
3378E4:  LDR             R0, [R0]; ScriptParams
3378E6:  LDR             R1, [R0]
3378E8:  CMP             R1, #0
3378EA:  BLT.W           loc_338A92
3378EE:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x3378FA)
3378F2:  UXTB            R3, R1
3378F4:  LSRS            R1, R1, #8
3378F6:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
3378F8:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
3378FA:  LDR             R0, [R0]; CPools::ms_pObjectPool
3378FC:  LDR             R2, [R0,#4]
3378FE:  LDRB            R2, [R2,R1]
337900:  CMP             R2, R3
337902:  BNE.W           loc_338A92
337906:  MOV.W           R2, #0x1A4
33790A:  LDR             R0, [R0]
33790C:  MLA.W           R6, R1, R2, R0
337910:  B.W             loc_338A94
337914:  MOV             R0, R8; jumptable 0033777E case 2103
337916:  MOVS            R1, #1; __int16
337918:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33791C:  LDR.W           R0, =(ScriptParams_ptr - 0x337924)
337920:  ADD             R0, PC; ScriptParams_ptr
337922:  LDR             R0, [R0]; ScriptParams
337924:  LDR             R1, [R0]
337926:  CMP             R1, #0
337928:  BLT.W           loc_338AC8
33792C:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x337938)
337930:  UXTB            R3, R1
337932:  LSRS            R1, R1, #8
337934:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
337936:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
337938:  LDR             R0, [R0]; CPools::ms_pObjectPool
33793A:  LDR             R2, [R0,#4]
33793C:  LDRB            R2, [R2,R1]
33793E:  CMP             R2, R3
337940:  BNE.W           loc_338AC8
337944:  MOV.W           R2, #0x1A4
337948:  LDR             R0, [R0]
33794A:  MLA.W           R5, R1, R2, R0
33794E:  B.W             loc_338ACA
337952:  MOV             R0, R8; jumptable 0033777E case 2105
337954:  MOVS            R1, #1; __int16
337956:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33795A:  LDR.W           R0, =(ScriptParams_ptr - 0x337962)
33795E:  ADD             R0, PC; ScriptParams_ptr
337960:  LDR             R0, [R0]; ScriptParams
337962:  LDR             R1, [R0]
337964:  CMP             R1, #0
337966:  BLT.W           loc_338AFA
33796A:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x337976)
33796E:  UXTB            R3, R1
337970:  LSRS            R1, R1, #8
337972:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
337974:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
337976:  LDR             R0, [R0]; CPools::ms_pObjectPool
337978:  LDR             R2, [R0,#4]
33797A:  LDRB            R2, [R2,R1]
33797C:  CMP             R2, R3
33797E:  BNE.W           loc_338AFA
337982:  MOV.W           R2, #0x1A4
337986:  LDR             R0, [R0]
337988:  MLA.W           R6, R1, R2, R0
33798C:  B.W             loc_338AFC
337990:  MOV             R0, R8; jumptable 0033777E case 2106
337992:  MOVS            R1, #1; __int16
337994:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
337998:  LDR.W           R0, =(ScriptParams_ptr - 0x3379A0)
33799C:  ADD             R0, PC; ScriptParams_ptr
33799E:  LDR             R0, [R0]; ScriptParams
3379A0:  LDR             R1, [R0]
3379A2:  CMP             R1, #0
3379A4:  BLT.W           loc_338B2A
3379A8:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x3379B4)
3379AC:  UXTB            R3, R1
3379AE:  LSRS            R1, R1, #8
3379B0:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
3379B2:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
3379B4:  LDR             R0, [R0]; CPools::ms_pObjectPool
3379B6:  LDR             R2, [R0,#4]
3379B8:  LDRB            R2, [R2,R1]
3379BA:  CMP             R2, R3
3379BC:  BNE.W           loc_338B2A
3379C0:  MOV.W           R2, #0x1A4
3379C4:  LDR             R0, [R0]
3379C6:  MLA.W           R6, R1, R2, R0
3379CA:  B.W             loc_338B2C
3379CE:  MOV             R0, R8; jumptable 0033777E case 2108
3379D0:  MOVS            R1, #4; __int16
3379D2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3379D6:  LDR.W           R0, =(ScriptParams_ptr - 0x3379DE)
3379DA:  ADD             R0, PC; ScriptParams_ptr
3379DC:  LDR             R0, [R0]; ScriptParams
3379DE:  LDR             R1, [R0]
3379E0:  CMP             R1, #0
3379E2:  BLT.W           loc_338B72
3379E6:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3379F2)
3379EA:  UXTB            R3, R1
3379EC:  LSRS            R1, R1, #8
3379EE:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
3379F0:  LDR             R0, [R0]; CPools::ms_pPedPool ...
3379F2:  LDR             R0, [R0]; CPools::ms_pPedPool
3379F4:  LDR             R2, [R0,#4]
3379F6:  LDRB            R2, [R2,R1]
3379F8:  CMP             R2, R3
3379FA:  BNE.W           loc_338B72
3379FE:  MOVW            R2, #0x7CC
337A02:  LDR             R0, [R0]
337A04:  MLA.W           R0, R1, R2, R0
337A08:  B.W             loc_338B74
337A0C:  MOV             R0, R8; jumptable 0033777E case 2109
337A0E:  MOVS            R1, #1; __int16
337A10:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
337A14:  LDR.W           R0, =(ScriptParams_ptr - 0x337A24)
337A18:  MOVW            R3, #0x7CC
337A1C:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x337A2A)
337A20:  ADD             R0, PC; ScriptParams_ptr
337A22:  VLDR            S0, =50.0
337A26:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
337A28:  LDR             R0, [R0]; ScriptParams
337A2A:  LDR             R1, [R1]; CPools::ms_pPedPool ...
337A2C:  LDR             R2, [R0]
337A2E:  LDR             R1, [R1]; CPools::ms_pPedPool
337A30:  LSRS            R2, R2, #8
337A32:  LDR             R1, [R1]
337A34:  MLA.W           R1, R2, R3, R1
337A38:  VLDR            S2, [R1,#0x48]
337A3C:  VMUL.F32        S2, S2, S0
337A40:  VSTR            S2, [R0]
337A44:  VLDR            S2, [R1,#0x4C]
337A48:  VMUL.F32        S2, S2, S0
337A4C:  VSTR            S2, [R0,#4]
337A50:  VLDR            S2, [R1,#0x50]
337A54:  VMUL.F32        S0, S2, S0
337A58:  VSTR            S0, [R0,#8]
337A5C:  B.W             loc_338E98
337A60:  MOV             R0, R8; jumptable 0033777E case 2110
337A62:  MOVS            R1, #4; __int16
337A64:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
337A68:  LDR.W           R0, =(ScriptParams_ptr - 0x337A70)
337A6C:  ADD             R0, PC; ScriptParams_ptr
337A6E:  LDR             R0, [R0]; ScriptParams
337A70:  LDR             R1, [R0]; CEntity *
337A72:  CMP             R1, #0
337A74:  BLT.W           loc_338BA8
337A78:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x337A84)
337A7C:  UXTB            R3, R1
337A7E:  LSRS            R1, R1, #8
337A80:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
337A82:  LDR             R0, [R0]; CPools::ms_pPedPool ...
337A84:  LDR             R0, [R0]; CPools::ms_pPedPool
337A86:  LDR             R2, [R0,#4]
337A88:  LDRB            R2, [R2,R1]
337A8A:  CMP             R2, R3
337A8C:  BNE.W           loc_338BA8
337A90:  MOVW            R2, #0x7CC
337A94:  LDR             R0, [R0]
337A96:  MLA.W           R4, R1, R2, R0
337A9A:  B.W             loc_338BAA
337A9E:  MOV             R0, R8; jumptable 0033777E case 2111
337AA0:  MOVS            R1, #1; __int16
337AA2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
337AA6:  LDR.W           R0, =(ScriptParams_ptr - 0x337AB6)
337AAA:  MOVW            R3, #0xA2C
337AAE:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x337AB8)
337AB2:  ADD             R0, PC; ScriptParams_ptr
337AB4:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
337AB6:  LDR             R0, [R0]; ScriptParams
337AB8:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
337ABA:  LDR             R2, [R0]
337ABC:  LDR             R1, [R1]; CPools::ms_pVehiclePool
337ABE:  LSRS            R2, R2, #8
337AC0:  LDR             R1, [R1]
337AC2:  MLA.W           R1, R2, R3, R1
337AC6:  LDR             R1, [R1,#0x14]
337AC8:  LDR             R1, [R1,#0x28]
337ACA:  STR             R1, [R0]
337ACC:  B.W             loc_338EA8
337AD0:  MOV             R0, R8; jumptable 0033777E case 2112
337AD2:  MOVS            R1, #2; __int16
337AD4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
337AD8:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x337AEA)
337ADC:  MOVW            R3, #0xA2C
337AE0:  LDR.W           R0, =(ScriptParams_ptr - 0x337AEC)
337AE4:  MOVS            R6, #0
337AE6:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
337AE8:  ADD             R0, PC; ScriptParams_ptr
337AEA:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
337AEC:  LDR             R0, [R0]; ScriptParams
337AEE:  LDRD.W          R2, R0, [R0]
337AF2:  LDR             R1, [R1]; CPools::ms_pVehiclePool
337AF4:  LSRS            R2, R2, #8
337AF6:  LDR             R1, [R1]
337AF8:  MLA.W           R1, R2, R3, R1
337AFC:  STRB.W          R0, [R1,#0x33]
337B00:  B.W             loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
337B04:  MOV             R0, R8; jumptable 0033777E case 2113
337B06:  MOVS            R1, #2; __int16
337B08:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
337B0C:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x337B1E)
337B10:  MOVW            R3, #0xA2C
337B14:  LDR.W           R0, =(ScriptParams_ptr - 0x337B20)
337B18:  MOVS            R6, #0
337B1A:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
337B1C:  ADD             R0, PC; ScriptParams_ptr
337B1E:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
337B20:  LDR             R0, [R0]; ScriptParams
337B22:  LDRD.W          R2, R0, [R0]
337B26:  LDR             R1, [R1]; CPools::ms_pVehiclePool
337B28:  LSRS            R2, R2, #8
337B2A:  LDR             R1, [R1]
337B2C:  MLA.W           R1, R2, R3, R1
337B30:  STRB.W          R0, [R1,#0x523]
337B34:  B.W             loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
337B38:  MOV             R0, R8; jumptable 0033777E case 2114
337B3A:  MOVS            R1, #1; __int16
337B3C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
337B40:  LDR.W           R0, =(_ZN9CTheZones11m_CurrLevelE_ptr - 0x337B4C)
337B44:  LDR.W           R1, =(ScriptParams_ptr - 0x337B4E)
337B48:  ADD             R0, PC; _ZN9CTheZones11m_CurrLevelE_ptr
337B4A:  ADD             R1, PC; ScriptParams_ptr
337B4C:  LDR             R0, [R0]; CTheZones::m_CurrLevel ...
337B4E:  LDR             R1, [R1]; ScriptParams
337B50:  LDR             R0, [R0]; CTheZones::m_CurrLevel
337B52:  B.W             loc_338EA6
337B56:  MOV             R0, R8; jumptable 0033777E case 2115
337B58:  MOVS            R1, #3; __int16
337B5A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
337B5E:  LDR.W           R0, =(ScriptParams_ptr - 0x337B66)
337B62:  ADD             R0, PC; ScriptParams_ptr
337B64:  LDR             R0, [R0]; ScriptParams
337B66:  LDRD.W          R1, R2, [R0]; unsigned __int8
337B6A:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]
337B6C:  STRD.W          R1, R2, [SP,#0xE8+var_BC]
337B70:  MOVS            R1, #(stderr+1); CVector *
337B72:  STR             R0, [SP,#0xE8+var_B4]
337B74:  ADD             R0, SP, #0xE8+var_BC; this
337B76:  BLX             j__ZN9CTheZones27FindSmallestZoneForPositionEPK7CVectorh; CTheZones::FindSmallestZoneForPosition(CVector const*,uchar)
337B7A:  MOV             R5, R0
337B7C:  MOV             R0, R8; this
337B7E:  MOVS            R1, #2; unsigned __int8
337B80:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
337B84:  ADD.W           R1, R5, #8; char *
337B88:  MOVS            R2, #8; size_t
337B8A:  BLX             strncpy
337B8E:  B.W             loc_338EB0
337B92:  MOV             R0, R8; jumptable 0033777E case 2125
337B94:  MOVS            R1, #1; __int16
337B96:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
337B9A:  LDR.W           R0, =(ScriptParams_ptr - 0x337BA2)
337B9E:  ADD             R0, PC; ScriptParams_ptr
337BA0:  LDR             R0, [R0]; ScriptParams
337BA2:  LDR             R0, [R0]
337BA4:  CMP             R0, #0
337BA6:  BEQ.W           loc_338DF6
337BAA:  LDR.W           R0, =(g_interiorMan_ptr - 0x337BB4)
337BAE:  MOVS            R1, #1; unsigned __int8
337BB0:  ADD             R0, PC; g_interiorMan_ptr
337BB2:  LDR             R0, [R0]; g_interiorMan ; this
337BB4:  BLX             j__ZN17InteriorManager_c12ActivatePedsEh; InteriorManager_c::ActivatePeds(uchar)
337BB8:  B.W             loc_338EB0
337BBC:  MOV             R0, R8; jumptable 0033777E case 2126
337BBE:  MOVS            R1, #2; __int16
337BC0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
337BC4:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x337BD6)
337BC8:  MOVW            R3, #0xA2C
337BCC:  LDR.W           R0, =(ScriptParams_ptr - 0x337BD8)
337BD0:  MOVS            R6, #0
337BD2:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
337BD4:  ADD             R0, PC; ScriptParams_ptr
337BD6:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
337BD8:  LDR             R0, [R0]; ScriptParams
337BDA:  LDRD.W          R2, R0, [R0]
337BDE:  CMP             R0, #0
337BE0:  LDR             R1, [R1]; CPools::ms_pVehiclePool
337BE2:  MOV.W           R2, R2,LSR#8
337BE6:  LDR             R1, [R1]
337BE8:  MLA.W           R1, R2, R3, R1
337BEC:  LDR.W           R2, [R1,#0x430]
337BF0:  BIC.W           R3, R2, #0x400
337BF4:  IT NE
337BF6:  ORRNE.W         R3, R2, #0x400
337BFA:  STR.W           R3, [R1,#0x430]
337BFE:  B.W             loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
337C02:  MOV             R0, R8; jumptable 0033777E case 2128
337C04:  MOVS            R1, #2; __int16
337C06:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
337C0A:  LDR.W           R0, =(ScriptParams_ptr - 0x337C12)
337C0E:  ADD             R0, PC; ScriptParams_ptr
337C10:  LDR             R0, [R0]; ScriptParams
337C12:  LDR             R1, [R0,#(dword_81A90C - 0x81A908)]; unsigned int
337C14:  CMP             R1, #0
337C16:  BLT.W           loc_338C38
337C1A:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x337C26)
337C1E:  UXTB            R3, R1
337C20:  LSRS            R1, R1, #8
337C22:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
337C24:  LDR             R0, [R0]; CPools::ms_pPedPool ...
337C26:  LDR             R0, [R0]; CPools::ms_pPedPool
337C28:  LDR             R2, [R0,#4]
337C2A:  LDRB            R2, [R2,R1]
337C2C:  CMP             R2, R3
337C2E:  BNE.W           loc_338C38
337C32:  MOVW            R2, #0x7CC
337C36:  LDR             R0, [R0]
337C38:  MLA.W           R5, R1, R2, R0
337C3C:  B.W             loc_338C3A
337C40:  MOV             R0, R8; jumptable 0033777E case 2129
337C42:  MOVS            R1, #3; __int16
337C44:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
337C48:  LDR.W           R0, =(ScriptParams_ptr - 0x337C50)
337C4C:  ADD             R0, PC; ScriptParams_ptr
337C4E:  LDR             R0, [R0]; ScriptParams
337C50:  LDR             R1, [R0]; unsigned int
337C52:  CMP             R1, #0
337C54:  BLT.W           loc_338C56
337C58:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x337C64)
337C5C:  UXTB            R3, R1
337C5E:  LSRS            R1, R1, #8
337C60:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
337C62:  LDR             R0, [R0]; CPools::ms_pPedPool ...
337C64:  LDR             R0, [R0]; CPools::ms_pPedPool
337C66:  LDR             R2, [R0,#4]
337C68:  LDRB            R2, [R2,R1]
337C6A:  CMP             R2, R3
337C6C:  BNE.W           loc_338C56
337C70:  MOVW            R2, #0x7CC
337C74:  LDR             R0, [R0]
337C76:  MLA.W           R5, R1, R2, R0
337C7A:  B.W             loc_338C58
337C7E:  MOV             R0, R8; jumptable 0033777E case 2130
337C80:  MOVS            R1, #2; __int16
337C82:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
337C86:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x337C98)
337C8A:  MOVW            R3, #0xA2C
337C8E:  LDR.W           R0, =(ScriptParams_ptr - 0x337C9A)
337C92:  MOVS            R6, #0
337C94:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
337C96:  ADD             R0, PC; ScriptParams_ptr
337C98:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
337C9A:  LDR             R0, [R0]; ScriptParams
337C9C:  LDRD.W          R2, R0, [R0]
337CA0:  CMP             R0, #0
337CA2:  LDR             R1, [R1]; CPools::ms_pVehiclePool
337CA4:  MOV.W           R2, R2,LSR#8
337CA8:  LDR             R1, [R1]
337CAA:  MLA.W           R1, R2, R3, R1
337CAE:  LDRB.W          R2, [R1,#0x87C]
337CB2:  AND.W           R3, R2, #0xEF
337CB6:  IT NE
337CB8:  ORRNE.W         R3, R2, #0x10
337CBC:  STRB.W          R3, [R1,#0x87C]
337CC0:  B.W             loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
337CC4:  MOV             R0, R8; jumptable 0033777E case 2131
337CC6:  MOVS            R1, #2; __int16
337CC8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
337CCC:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x337CDE)
337CD0:  MOVW            R3, #0xA2C
337CD4:  LDR.W           R0, =(ScriptParams_ptr - 0x337CE0)
337CD8:  MOVS            R6, #0
337CDA:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
337CDC:  ADD             R0, PC; ScriptParams_ptr
337CDE:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
337CE0:  LDR             R0, [R0]; ScriptParams
337CE2:  LDRD.W          R2, R0, [R0]
337CE6:  LDR             R1, [R1]; CPools::ms_pVehiclePool
337CE8:  LSRS            R2, R2, #8
337CEA:  LDR             R1, [R1]
337CEC:  MLA.W           R1, R2, R3, R1
337CF0:  STRB.W          R0, [R1,#0x3E3]
337CF4:  B.W             loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
337CF8:  MOVS            R6, #0xFF; jumptable 0033777E default case, cases 2132,2149
337CFA:  B.W             loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
337CFE:  MOV             R0, R8; jumptable 0033777E case 2133
337D00:  MOVS            R1, #4; __int16
337D02:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
337D06:  LDR.W           R0, =(ScriptParams_ptr - 0x337D0E)
337D0A:  ADD             R0, PC; ScriptParams_ptr
337D0C:  LDR             R0, [R0]; ScriptParams
337D0E:  LDR             R0, [R0]
337D10:  ADDS            R1, R0, #1
337D12:  BEQ.W           loc_338A4E
337D16:  CMP             R0, #0
337D18:  BLT.W           loc_338A4E
337D1C:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x337D28)
337D20:  UXTB            R3, R0
337D22:  LSRS            R0, R0, #8
337D24:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
337D26:  LDR             R1, [R1]; CPools::ms_pPedPool ...
337D28:  LDR             R1, [R1]; CPools::ms_pPedPool
337D2A:  LDR             R2, [R1,#4]
337D2C:  LDRB            R2, [R2,R0]
337D2E:  CMP             R2, R3
337D30:  BNE.W           loc_338A4E
337D34:  MOVW            R2, #0x7CC
337D38:  LDR             R1, [R1]
337D3A:  MLA.W           R5, R0, R2, R1
337D3E:  B.W             loc_338A50
337D42:  MOV             R0, R8; jumptable 0033777E case 2134
337D44:  MOVS            R1, #2; __int16
337D46:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
337D4A:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x337D5C)
337D4E:  MOVW            R3, #0x7CC
337D52:  LDR.W           R0, =(ScriptParams_ptr - 0x337D5E)
337D56:  MOVS            R6, #0
337D58:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
337D5A:  ADD             R0, PC; ScriptParams_ptr
337D5C:  LDR             R1, [R1]; CPools::ms_pPedPool ...
337D5E:  LDR             R0, [R0]; ScriptParams
337D60:  LDRD.W          R2, R0, [R0]
337D64:  CMP             R0, #0
337D66:  LDR             R1, [R1]; CPools::ms_pPedPool
337D68:  MOV.W           R2, R2,LSR#8
337D6C:  LDR             R1, [R1]
337D6E:  MLA.W           R1, R2, R3, R1
337D72:  LDR.W           R2, [R1,#0x484]
337D76:  ORR.W           R3, R2, #0x1000000
337D7A:  IT NE
337D7C:  BICNE.W         R3, R2, #0x1000000
337D80:  STR.W           R3, [R1,#0x484]
337D84:  B.W             loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
337D88:  MOV             R0, R8; jumptable 0033777E case 2136
337D8A:  MOVS            R1, #3; __int16
337D8C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
337D90:  LDR.W           R0, =(ScriptParams_ptr - 0x337D9E)
337D94:  MOVS            R6, #0
337D96:  VLDR            S0, =3.1416
337D9A:  ADD             R0, PC; ScriptParams_ptr
337D9C:  VLDR            S6, =180.0
337DA0:  LDR.W           R1, =(_ZN11CTheScripts38fCameraHeadingStepWhenPlayerIsAttachedE_ptr - 0x337DAA)
337DA4:  LDR             R0, [R0]; ScriptParams
337DA6:  ADD             R1, PC; _ZN11CTheScripts38fCameraHeadingStepWhenPlayerIsAttachedE_ptr
337DA8:  VLDR            S2, [R0,#4]
337DAC:  VLDR            S4, [R0,#8]
337DB0:  VMUL.F32        S2, S2, S0
337DB4:  LDR.W           R0, =(_ZN11CTheScripts34fCameraHeadingWhenPlayerIsAttachedE_ptr - 0x337DC2)
337DB8:  VMUL.F32        S0, S4, S0
337DBC:  LDR             R1, [R1]; CTheScripts::fCameraHeadingStepWhenPlayerIsAttached ...
337DBE:  ADD             R0, PC; _ZN11CTheScripts34fCameraHeadingWhenPlayerIsAttachedE_ptr
337DC0:  LDR             R0, [R0]; CTheScripts::fCameraHeadingWhenPlayerIsAttached ...
337DC2:  VDIV.F32        S2, S2, S6
337DC6:  VDIV.F32        S0, S0, S6
337DCA:  VSTR            S2, [R0]
337DCE:  VSTR            S0, [R1]
337DD2:  B.W             loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
337DD6:  MOV             R0, R8; jumptable 0033777E case 2137
337DD8:  MOVS            R1, #2; __int16
337DDA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
337DDE:  LDR.W           R0, =(ScriptParams_ptr - 0x337DE6)
337DE2:  ADD             R0, PC; ScriptParams_ptr
337DE4:  LDR             R0, [R0]; ScriptParams
337DE6:  LDR             R1, [R0,#(dword_81A90C - 0x81A908)]; unsigned int
337DE8:  CMP             R1, #0
337DEA:  BLT.W           loc_338C9E
337DEE:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x337DFA)
337DF2:  UXTB            R3, R1
337DF4:  LSRS            R1, R1, #8
337DF6:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
337DF8:  LDR             R0, [R0]; CPools::ms_pPedPool ...
337DFA:  LDR             R0, [R0]; CPools::ms_pPedPool
337DFC:  LDR             R2, [R0,#4]
337DFE:  LDRB            R2, [R2,R1]
337E00:  CMP             R2, R3
337E02:  BNE.W           loc_338C9E
337E06:  MOVW            R2, #0x7CC
337E0A:  LDR             R0, [R0]
337E0C:  MLA.W           R5, R1, R2, R0
337E10:  B.W             loc_338CA0
337E14:  DCFS 50.0
337E18:  DCFS 3.1416
337E1C:  DCFS 180.0
337E20:  MOV             R0, R8; jumptable 0033777E case 2138
337E22:  MOVS            R1, #4; __int16
337E24:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
337E28:  LDR.W           R0, =(ScriptParams_ptr - 0x337E34)
337E2C:  ADD.W           R12, SP, #0xE8+var_BC
337E30:  ADD             R0, PC; ScriptParams_ptr
337E32:  LDR             R3, [R0]; ScriptParams
337E34:  LDM             R3, {R0-R3}
337E36:  STM.W           R12, {R1-R3}
337E3A:  BLX             j__ZN8CCarCtrl37ScriptGenerateOneEmergencyServicesCarEj7CVector; CCarCtrl::ScriptGenerateOneEmergencyServicesCar(uint,CVector)
337E3E:  MOV             R1, R0
337E40:  B.W             loc_338DAE
337E44:  MOV             R0, R8; jumptable 0033777E case 2139
337E46:  MOVS            R1, #2; __int16
337E48:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
337E4C:  LDR.W           R0, =(ScriptParams_ptr - 0x337E54)
337E50:  ADD             R0, PC; ScriptParams_ptr
337E52:  LDR             R0, [R0]; ScriptParams
337E54:  LDR             R0, [R0]
337E56:  ADDS            R1, R0, #1; unsigned int
337E58:  BEQ.W           loc_338E06
337E5C:  CMP             R0, #0
337E5E:  BLT.W           loc_338DD0
337E62:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x337E6E)
337E66:  UXTB            R3, R0
337E68:  LSRS            R0, R0, #8
337E6A:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
337E6C:  LDR             R1, [R1]; CPools::ms_pPedPool ...
337E6E:  LDR             R1, [R1]; CPools::ms_pPedPool
337E70:  LDR             R2, [R1,#4]
337E72:  LDRB            R2, [R2,R0]
337E74:  CMP             R2, R3
337E76:  BNE.W           loc_338DD0
337E7A:  MOVW            R2, #0x7CC
337E7E:  LDR             R1, [R1]
337E80:  MLA.W           R4, R0, R2, R1
337E84:  B.W             loc_338DD2
337E88:  MOV             R0, R8; jumptable 0033777E case 2142
337E8A:  MOVS            R1, #2; __int16
337E8C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
337E90:  LDR.W           R0, =(ScriptParams_ptr - 0x337E98)
337E94:  ADD             R0, PC; ScriptParams_ptr
337E96:  LDR             R0, [R0]; ScriptParams
337E98:  LDR             R1, [R0]
337E9A:  CMP             R1, #0
337E9C:  BLT.W           loc_338CCC
337EA0:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x337EAC)
337EA4:  UXTB            R3, R1
337EA6:  LSRS            R1, R1, #8
337EA8:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
337EAA:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
337EAC:  LDR             R0, [R0]; CPools::ms_pVehiclePool
337EAE:  LDR             R2, [R0,#4]
337EB0:  LDRB            R2, [R2,R1]
337EB2:  CMP             R2, R3
337EB4:  BNE.W           loc_338CCC
337EB8:  MOVW            R2, #0xA2C
337EBC:  LDR             R0, [R0]
337EBE:  MLA.W           R0, R1, R2, R0
337EC2:  B.W             loc_338CCE
337EC6:  MOV             R0, R8; jumptable 0033777E case 2144
337EC8:  MOVS            R1, #2; __int16
337ECA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
337ECE:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x337EDC)
337ED2:  MOVS            R6, #0
337ED4:  LDR.W           R0, =(ScriptParams_ptr - 0x337EDE)
337ED8:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
337EDA:  ADD             R0, PC; ScriptParams_ptr
337EDC:  LDR             R1, [R1]; CPools::ms_pPedPool ...
337EDE:  LDR             R0, [R0]; ScriptParams
337EE0:  LDRD.W          R2, R3, [R0]
337EE4:  CMP             R3, #0
337EE6:  LDR             R0, [R1]; CPools::ms_pPedPool
337EE8:  MOV.W           R1, R2,LSR#8
337EEC:  MOVW            R2, #0x7CC
337EF0:  LDR             R0, [R0]
337EF2:  MLA.W           R0, R1, R2, R0; this
337EF6:  STRB.W          R3, [R0,#0x33]
337EFA:  BNE.W           loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
337EFE:  STR.W           R6, [R0,#0x794]
337F02:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
337F06:  CMP             R0, #1
337F08:  BNE.W           loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
337F0C:  LDR.W           R0, =(_ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr - 0x337F16)
337F10:  MOVS            R6, #0
337F12:  ADD             R0, PC; _ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr
337F14:  LDR             R0, [R0]; CEntryExitManager::ms_entryExitStackPosn ...
337F16:  STR             R6, [R0]; CEntryExitManager::ms_entryExitStackPosn
337F18:  MOVS            R0, #0; this
337F1A:  BLX             j__ZN10CTimeCycle15StopExtraColourEb; CTimeCycle::StopExtraColour(bool)
337F1E:  B.W             loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
337F22:  MOV             R0, R8; jumptable 0033777E case 2145
337F24:  MOVS            R1, #1; __int16
337F26:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
337F2A:  LDR.W           R0, =(_ZN11CTheScripts38fCameraHeadingStepWhenPlayerIsAttachedE_ptr - 0x337F34)
337F2E:  MOVS            R6, #0
337F30:  ADD             R0, PC; _ZN11CTheScripts38fCameraHeadingStepWhenPlayerIsAttachedE_ptr
337F32:  LDR             R0, [R0]; CTheScripts::fCameraHeadingStepWhenPlayerIsAttached ...
337F34:  VLDR            S0, [R0]
337F38:  VCMP.F32        S0, #0.0
337F3C:  VMRS            APSR_nzcv, FPSCR
337F40:  B               loc_337868
337F42:  MOV             R0, R8; jumptable 0033777E case 2148
337F44:  MOVS            R1, #4; __int16
337F46:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
337F4A:  LDR.W           R0, =(ScriptParams_ptr - 0x337F52)
337F4E:  ADD             R0, PC; ScriptParams_ptr
337F50:  LDR             R0, [R0]; ScriptParams
337F52:  LDRD.W          R2, R3, [R0]
337F56:  LDR             R1, [R0,#(dword_81A910 - 0x81A908)]
337F58:  ADD             R0, SP, #0xE8+var_B0
337F5A:  STRD.W          R2, R3, [SP,#0xE8+var_B0]
337F5E:  MOV.W           R2, #0xFFFFFFFF
337F62:  BLX             j__ZN17CEntryExitManager20FindNearestEntryExitERK9CVector2Dfi; CEntryExitManager::FindNearestEntryExit(CVector2D const&,float,int)
337F66:  LDR.W           R1, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x337F6E)
337F6A:  ADD             R1, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
337F6C:  LDR             R1, [R1]; CEntryExitManager::mp_poolEntryExits ...
337F6E:  LDR             R1, [R1]; CEntryExitManager::mp_poolEntryExits
337F70:  LDR             R2, [R1,#4]
337F72:  LDRSB           R2, [R2,R0]
337F74:  CMP             R2, #0
337F76:  BLT.W           loc_338E3C
337F7A:  LDR             R1, [R1]
337F7C:  RSB.W           R0, R0, R0,LSL#4
337F80:  ADD.W           R0, R1, R0,LSL#2
337F84:  B.W             loc_338E3E
337F88:  MOV             R0, R8; jumptable 0033777E case 2150
337F8A:  MOVS            R1, #4; __int16
337F8C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
337F90:  LDR.W           R0, =(ScriptParams_ptr - 0x337F9E)
337F94:  ADD             R5, SP, #0xE8+var_B0
337F96:  MOVS            R2, #1
337F98:  MOVS            R3, #word_10
337F9A:  ADD             R0, PC; ScriptParams_ptr
337F9C:  LDR             R0, [R0]; ScriptParams
337F9E:  VLDR            S22, [R0,#0xC]
337FA2:  VLDR            S18, [R0,#4]
337FA6:  VMOV            R1, S22; CVector *
337FAA:  VLDR            S16, [R0]
337FAE:  VLDR            S20, [R0,#8]
337FB2:  MOVS            R0, #0
337FB4:  VSTR            S18, [SP,#0xE8+var_5C]
337FB8:  VSTR            S16, [SP,#0xE8+var_60]
337FBC:  VSTR            S20, [SP,#0xE8+var_58]
337FC0:  STRD.W          R3, R5, [SP,#0xE8+var_E8]; __int16 *
337FC4:  ADD             R3, SP, #0xE8+var_70; bool
337FC6:  STRD.W          R0, R0, [SP,#0xE8+var_E0]; CEntity **
337FCA:  STRD.W          R0, R2, [SP,#0xE8+var_D8]; bool
337FCE:  MOVS            R2, #1; float
337FD0:  STR             R0, [SP,#0xE8+var_D0]; bool
337FD2:  ADD             R0, SP, #0xE8+var_60; this
337FD4:  BLX             j__ZN6CWorld18FindObjectsInRangeERK7CVectorfbPssPP7CEntitybbbbb; CWorld::FindObjectsInRange(CVector const&,float,bool,short *,short,CEntity **,bool,bool,bool,bool,bool)
337FD8:  LDRSH.W         R1, [SP,#0xE8+var_70]
337FDC:  CMP             R1, #0
337FDE:  BEQ.W           loc_338E60
337FE2:  VADD.F32        S0, S22, S22
337FE6:  MOVS            R0, #0
337FE8:  MOVS            R2, #0
337FEA:  LDR.W           R3, [R5,R2,LSL#2]
337FEE:  LDRB.W          R6, [R3,#0x3A]
337FF2:  AND.W           R6, R6, #7
337FF6:  CMP             R6, #4
337FF8:  BNE             loc_33804E
337FFA:  LDRB.W          R6, [R3,#0x145]
337FFE:  LSLS            R6, R6, #0x1A
338000:  BPL             loc_33804E
338002:  LDR             R6, [R3,#0x14]
338004:  ADD.W           R4, R6, #0x30 ; '0'
338008:  CMP             R6, #0
33800A:  IT EQ
33800C:  ADDEQ           R4, R3, #4
33800E:  VLDR            S2, [R4]
338012:  VLDR            S4, [R4,#4]
338016:  VSUB.F32        S2, S2, S16
33801A:  VLDR            S6, [R4,#8]
33801E:  VSUB.F32        S4, S4, S18
338022:  VSUB.F32        S6, S6, S20
338026:  VMUL.F32        S2, S2, S2
33802A:  VMUL.F32        S4, S4, S4
33802E:  VMUL.F32        S6, S6, S6
338032:  VADD.F32        S2, S2, S4
338036:  VADD.F32        S2, S2, S6
33803A:  VSQRT.F32       S2, S2
33803E:  VCMPE.F32       S2, S0
338042:  VMRS            APSR_nzcv, FPSCR
338046:  ITT LT
338048:  MOVLT           R0, R3
33804A:  VMOVLT.F32      S0, S2
33804E:  ADDS            R2, #1
338050:  CMP             R2, R1
338052:  BCC             loc_337FEA
338054:  CMP             R0, #0
338056:  BEQ.W           loc_338FAE
33805A:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x338062)
33805E:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
338060:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
338062:  LDR             R1, [R1]; CPools::ms_pObjectPool
338064:  LDRD.W          R2, R1, [R1]
338068:  SUBS            R0, R0, R2
33806A:  MOV             R2, #0xD8FD8FD9
338072:  ASRS            R0, R0, #2
338074:  MULS            R0, R2
338076:  LDRB            R1, [R1,R0]
338078:  ORR.W           R0, R1, R0,LSL#8
33807C:  LDR.W           R1, =(ScriptParams_ptr - 0x338084)
338080:  ADD             R1, PC; ScriptParams_ptr
338082:  B.W             loc_338EA4
338086:  MOV             R0, R8; jumptable 0033777E case 2151
338088:  MOVS            R1, #1; __int16
33808A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33808E:  LDR.W           R0, =(ScriptParams_ptr - 0x33809A)
338092:  LDR.W           R2, =(g_interiorMan_ptr - 0x33809C)
338096:  ADD             R0, PC; ScriptParams_ptr
338098:  ADD             R2, PC; g_interiorMan_ptr
33809A:  LDR             R0, [R0]; ScriptParams
33809C:  LDR             R1, [R0]; int
33809E:  LDR             R0, [R2]; g_interiorMan ; this
3380A0:  BLX             j__ZN17InteriorManager_c13IsGroupActiveEi; InteriorManager_c::IsGroupActive(int)
3380A4:  MOV             R1, R0
3380A6:  CMP             R1, #0
3380A8:  IT NE
3380AA:  MOVNE           R1, #1
3380AC:  B.W             loc_338DAE
3380B0:  MOV             R0, R8; jumptable 0033777E case 2161
3380B2:  MOVS            R1, #4; __int16
3380B4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3380B8:  LDR.W           R0, =(ScriptParams_ptr - 0x3380C4)
3380BC:  LDR.W           R2, =(_ZN11CTheScripts20SwitchDefaultAddressE_ptr - 0x3380CE)
3380C0:  ADD             R0, PC; ScriptParams_ptr
3380C2:  LDR.W           R1, =(_ZN11CTheScripts29ValueToCheckInSwitchStatementE_ptr - 0x3380D4)
3380C6:  LDR.W           R12, =(_ZN11CTheScripts35NumberOfEntriesStillToReadForSwitchE_ptr - 0x3380D6)
3380CA:  ADD             R2, PC; _ZN11CTheScripts20SwitchDefaultAddressE_ptr
3380CC:  LDR.W           LR, =(_ZN11CTheScripts19SwitchDefaultExistsE_ptr - 0x3380DA)
3380D0:  ADD             R1, PC; _ZN11CTheScripts29ValueToCheckInSwitchStatementE_ptr
3380D2:  ADD             R12, PC; _ZN11CTheScripts35NumberOfEntriesStillToReadForSwitchE_ptr
3380D4:  LDR             R0, [R0]; ScriptParams
3380D6:  ADD             LR, PC; _ZN11CTheScripts19SwitchDefaultExistsE_ptr
3380D8:  LDR             R2, [R2]; CTheScripts::SwitchDefaultAddress ...
3380DA:  LDRD.W          R5, R4, [R0]
3380DE:  LDRD.W          R3, R0, [R0,#(dword_81A910 - 0x81A908)]
3380E2:  LDR             R1, [R1]; CTheScripts::ValueToCheckInSwitchStatement ...
3380E4:  LDR.W           R6, [R12]; CTheScripts::NumberOfEntriesStillToReadForSwitch ...
3380E8:  CMP             R3, #0
3380EA:  LDR.W           R12, [LR]; CTheScripts::SwitchDefaultExists ...
3380EE:  STR             R0, [R2]; CTheScripts::SwitchDefaultAddress
3380F0:  MOV.W           R0, R4,LSL#1
3380F4:  STRH            R0, [R6]; CTheScripts::NumberOfEntriesStillToReadForSwitch
3380F6:  MOV.W           R0, #0xE
3380FA:  STR             R5, [R1]; CTheScripts::ValueToCheckInSwitchStatement
3380FC:  IT NE
3380FE:  MOVNE           R3, #1
338100:  STRB.W          R3, [R12]; CTheScripts::SwitchDefaultExists
338104:  UXTB.W          R9, R0; jumptable 0033777E case 2162
338108:  MOVW            R6, #:lower16:(elf_hash_chain+0xFE97)
33810C:  MOV             R0, R8; this
33810E:  MOV             R1, R9; __int16
338110:  MOVT            R6, #:upper16:(elf_hash_chain+0xFE97)
338114:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
338118:  LDR.W           R0, =(_ZN11CTheScripts35NumberOfEntriesStillToReadForSwitchE_ptr - 0x338120)
33811C:  ADD             R0, PC; _ZN11CTheScripts35NumberOfEntriesStillToReadForSwitchE_ptr
33811E:  LDR             R0, [R0]; CTheScripts::NumberOfEntriesStillToReadForSwitch ...
338120:  LDRH.W          LR, [R0]; CTheScripts::NumberOfEntriesStillToReadForSwitch
338124:  CMP             LR, R9
338126:  BLS.W           loc_33899A
33812A:  LDR.W           R1, =(_ZN11CTheScripts28NumberOfEntriesInSwitchTableE_ptr - 0x338138)
33812E:  MOVS            R3, #0
338130:  LDR.W           R4, =(_ZN11CTheScripts15SwitchJumpTableE_ptr - 0x33813A)
338134:  ADD             R1, PC; _ZN11CTheScripts28NumberOfEntriesInSwitchTableE_ptr
338136:  ADD             R4, PC; _ZN11CTheScripts15SwitchJumpTableE_ptr
338138:  LDR             R1, [R1]; CTheScripts::NumberOfEntriesInSwitchTable ...
33813A:  LDRH            R2, [R1]; CTheScripts::NumberOfEntriesInSwitchTable
33813C:  ADD.W           R1, R9, R6
338140:  ADD.W           R12, R2, R1,LSR#1
338144:  LDR.W           R1, =(ScriptParams_ptr - 0x33814C)
338148:  ADD             R1, PC; ScriptParams_ptr
33814A:  LDR             R6, [R1]; ScriptParams
33814C:  LDR             R1, [R4]; CTheScripts::SwitchJumpTable ...
33814E:  ADD.W           R0, R6, R3,LSL#2
338152:  LDR.W           R4, [R6,R3,LSL#2]
338156:  UXTH            R5, R2
338158:  STR.W           R4, [R1,R5,LSL#3]
33815C:  ADDS            R3, #2
33815E:  ADD.W           R4, R1, R5,LSL#3
338162:  ADDS            R2, #1
338164:  LDR             R0, [R0,#4]
338166:  CMP             R3, R9
338168:  STR             R0, [R4,#4]
33816A:  BCC             loc_33814E
33816C:  LDR.W           R0, =(_ZN11CTheScripts35NumberOfEntriesStillToReadForSwitchE_ptr - 0x33817C)
338170:  SUB.W           R3, LR, R9
338174:  LDR.W           R1, =(_ZN11CTheScripts28NumberOfEntriesInSwitchTableE_ptr - 0x33817E)
338178:  ADD             R0, PC; _ZN11CTheScripts35NumberOfEntriesStillToReadForSwitchE_ptr
33817A:  ADD             R1, PC; _ZN11CTheScripts28NumberOfEntriesInSwitchTableE_ptr
33817C:  LDR             R0, [R0]; CTheScripts::NumberOfEntriesStillToReadForSwitch ...
33817E:  LDR             R2, [R1]; CTheScripts::NumberOfEntriesInSwitchTable ...
338180:  ADD.W           R1, R12, #1
338184:  STRH            R3, [R0]; CTheScripts::NumberOfEntriesStillToReadForSwitch
338186:  MOVW            R0, #0xFFFF
33818A:  TST             R3, R0
33818C:  STRH            R1, [R2]; CTheScripts::NumberOfEntriesInSwitchTable
33818E:  BNE.W           loc_338EB0
338192:  B.W             loc_338A04
338196:  MOV             R0, R8; jumptable 0033777E case 2163
338198:  MOVS            R1, #1; __int16
33819A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33819E:  LDR.W           R0, =(ScriptParams_ptr - 0x3381A6)
3381A2:  ADD             R0, PC; ScriptParams_ptr
3381A4:  LDR             R0, [R0]; ScriptParams
3381A6:  LDR             R0, [R0]; this
3381A8:  BLX             j__ZN17CVehicleRecording19RemoveRecordingFileEi; CVehicleRecording::RemoveRecordingFile(int)
3381AC:  B.W             loc_338EB0
3381B0:  SUB.W           R5, R7, #-var_46; jumptable 0033777E case 2164
3381B4:  MOV             R0, R8; this
3381B6:  MOVS            R2, #8; unsigned __int8
3381B8:  MOV             R1, R5; char *
3381BA:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
3381BE:  MOV             R0, R8; this
3381C0:  MOVS            R1, #1; __int16
3381C2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3381C6:  MOV             R0, R5; char *
3381C8:  MOVS            R1, #2
3381CA:  BLX             j__ZN9CTheZones29FindZoneByLabelAndReturnIndexEPc9eZoneType; CTheZones::FindZoneByLabelAndReturnIndex(char *,eZoneType)
3381CE:  CMP             R0, #0
3381D0:  BLT.W           loc_338EB0
3381D4:  LDR.W           R1, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x3381E2)
3381D8:  MOVS            R6, #0
3381DA:  LDR.W           R2, =(ScriptParams_ptr - 0x3381E8)
3381DE:  ADD             R1, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
3381E0:  LDR.W           R3, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x3381EC)
3381E4:  ADD             R2, PC; ScriptParams_ptr
3381E6:  LDR             R1, [R1]; CTheZones::NavigationZoneArray ...
3381E8:  ADD             R3, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
3381EA:  LDR             R2, [R2]; ScriptParams
3381EC:  ADD.W           R0, R1, R0,LSL#5
3381F0:  LDR             R1, [R3]; CTheZones::ZoneInfoArray ...
3381F2:  MOV.W           R3, #0xF00
3381F6:  LDRH            R0, [R0,#0x1C]
3381F8:  LDRH            R2, [R2]
3381FA:  ADD.W           R0, R0, R0,LSL#4
3381FE:  ADD             R0, R1
338200:  AND.W           R2, R3, R2,LSL#8
338204:  LDRH.W          R1, [R0,#0xF]
338208:  BIC.W           R1, R1, #0xF00
33820C:  ORRS            R1, R2
33820E:  STRH.W          R1, [R0,#0xF]
338212:  B.W             loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
338216:  MOV             R0, R8; jumptable 0033777E case 2165
338218:  MOVS            R1, #2; __int16
33821A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33821E:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x338230)
338222:  MOV.W           R3, #0x1A4
338226:  LDR.W           R0, =(ScriptParams_ptr - 0x338232)
33822A:  MOVS            R6, #0
33822C:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
33822E:  ADD             R0, PC; ScriptParams_ptr
338230:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
338232:  LDR             R0, [R0]; ScriptParams
338234:  LDRD.W          R2, R0, [R0]
338238:  CMP             R0, #0
33823A:  LDR             R1, [R1]; CPools::ms_pObjectPool
33823C:  MOV.W           R2, R2,LSR#8
338240:  LDR             R1, [R1]
338242:  MLA.W           R1, R2, R3, R1
338246:  LDR             R2, [R1,#0x44]
338248:  BIC.W           R3, R2, #0x400000
33824C:  IT NE
33824E:  ORRNE.W         R3, R2, #0x400000
338252:  STR             R3, [R1,#0x44]
338254:  B.W             loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
338258:  MOV             R0, R8; jumptable 0033777E case 2166
33825A:  MOVS            R1, #8; __int16
33825C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
338260:  LDR.W           R0, =(ScriptParams_ptr - 0x338268)
338264:  ADD             R0, PC; ScriptParams_ptr
338266:  LDR             R6, [R0]; ScriptParams
338268:  VLDR            S0, [R6]
33826C:  VLDR            S2, [R6,#4]
338270:  VLDR            S4, [R6,#8]
338274:  VLDR            S6, [R6,#0xC]
338278:  VCVT.F32.S32    S0, S0
33827C:  VCVT.F32.S32    S2, S2
338280:  VCVT.F32.S32    S4, S4
338284:  VCVT.F32.S32    S6, S6
338288:  VMOV            R0, S0
33828C:  VMOV            R1, S2
338290:  VMOV            R2, S4
338294:  VMOV            R3, S6
338298:  VLDR            S6, [R6,#0x10]
33829C:  LDRD.W          R5, R4, [R6,#(dword_81A920 - 0x81A908)]
3382A0:  VLDR            S8, [R6,#0x14]
3382A4:  VCVT.F32.S32    S6, S6
3382A8:  MOVS            R6, #0
3382AA:  VCVT.F32.S32    S8, S8
3382AE:  VSTR            S0, [SP,#0xE8+var_BC]
3382B2:  VSTR            S2, [SP,#0xE8+var_B8]
3382B6:  VSTR            S4, [SP,#0xE8+var_B4]
3382BA:  STRD.W          R5, R4, [SP,#0xE8+var_E0]
3382BE:  STR             R6, [SP,#0xE8+var_D8]
3382C0:  VSTR            S6, [SP,#0xE8+var_E8]
3382C4:  VSTR            S8, [SP,#0xE8+var_E4]
3382C8:  BLX             j__ZN6CBirds19CreateNumberOfBirdsE7CVectorS0_iib; CBirds::CreateNumberOfBirds(CVector,CVector,int,int,bool)
3382CC:  B.W             loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
3382D0:  MOV             R0, R8; jumptable 0033777E case 2168
3382D2:  MOVS            R1, #2; __int16
3382D4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3382D8:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3382EA)
3382DC:  MOVW            R3, #0xA2C
3382E0:  LDR.W           R0, =(ScriptParams_ptr - 0x3382EC)
3382E4:  MOVS            R6, #0
3382E6:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3382E8:  ADD             R0, PC; ScriptParams_ptr
3382EA:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
3382EC:  LDR             R0, [R0]; ScriptParams
3382EE:  LDRD.W          R2, R0, [R0]
3382F2:  LDR             R1, [R1]; CPools::ms_pVehiclePool
3382F4:  LSRS            R2, R2, #8
3382F6:  LDR             R1, [R1]
3382F8:  MLA.W           R1, R2, R3, R1
3382FC:  STR.W           R0, [R1,#0x4BC]
338300:  B.W             loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
338304:  MOV             R0, R8; jumptable 0033777E case 2169
338306:  MOVS            R1, #1; __int16
338308:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33830C:  LDR.W           R0, =(ScriptParams_ptr - 0x338314)
338310:  ADD             R0, PC; ScriptParams_ptr
338312:  LDR             R0, [R0]; ScriptParams
338314:  LDR             R0, [R0]
338316:  CMP             R0, #0
338318:  BEQ.W           loc_338E6A
33831C:  MOVS            R0, #(stderr+1); this
33831E:  BLX             j__ZN9CGangWars17SetGangWarsActiveEb; CGangWars::SetGangWarsActive(bool)
338322:  B.W             loc_338EB0
338326:  BLX             j__ZN9CGangWars14GangWarGoingOnEv; jumptable 0033777E case 2170
33832A:  MOV             R1, R0
33832C:  B.W             loc_338DAE
338330:  MOV             R0, R8; jumptable 0033777E case 2171
338332:  MOVS            R1, #1; __int16
338334:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
338338:  LDR.W           R0, =(ScriptParams_ptr - 0x338344)
33833C:  ADD             R5, SP, #0xE8+var_60
33833E:  MOVS            R2, #0x10; unsigned __int8
338340:  ADD             R0, PC; ScriptParams_ptr
338342:  MOV             R1, R5; char *
338344:  LDR             R4, [R0]; ScriptParams
338346:  MOV             R0, R8; this
338348:  LDR             R6, [R4]
33834A:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33834E:  ADD.W           R9, SP, #0xE8+var_70
338352:  MOV             R0, R8; this
338354:  MOVS            R2, #0x10; unsigned __int8
338356:  MOV             R1, R9; char *
338358:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33835C:  MOV             R0, R8; this
33835E:  MOVS            R1, #1; __int16
338360:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
338364:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x338374)
338368:  MOV.W           R1, #0x194
33836C:  LDR             R3, [R4]; int
33836E:  MOV             R2, R9; char *
338370:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
338372:  LDR             R0, [R0]; CWorld::Players ...
338374:  MLA.W           R0, R6, R1, R0
338378:  MOV             R1, R5; CKeyGen *
33837A:  LDR             R0, [R0,#8]; this
33837C:  BLX             j__ZN15CPedClothesDesc18SetTextureAndModelEPKcS1_i; CPedClothesDesc::SetTextureAndModel(char const*,char const*,int)
338380:  MOV             R0, R5; this
338382:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
338386:  BLX             j__ZN9CShopping18SetPlayerHasBoughtEj; CShopping::SetPlayerHasBought(uint)
33838A:  B.W             loc_338EB0
33838E:  BLX             j__ZN9CShopping16RemoveLoadedShopEv; jumptable 0033777E case 2172
338392:  B.W             loc_338EB0
338396:  MOV             R0, R8; jumptable 0033777E case 2173
338398:  MOVS            R1, #2; __int16
33839A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33839E:  LDR.W           R0, =(ScriptParams_ptr - 0x3383A8)
3383A2:  MOVS            R1, #8; int
3383A4:  ADD             R0, PC; ScriptParams_ptr
3383A6:  LDR             R0, [R0]; ScriptParams
3383A8:  LDR             R0, [R0]; this
3383AA:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
3383AE:  MOV             R4, R0
3383B0:  CMP             R4, #7
3383B2:  BHI.W           loc_338EB0
3383B6:  LDR.W           R0, =(ScriptParams_ptr - 0x3383BE)
3383BA:  ADD             R0, PC; ScriptParams_ptr
3383BC:  LDR             R0, [R0]; ScriptParams
3383BE:  LDR             R0, [R0,#(dword_81A90C - 0x81A908)]; this
3383C0:  ADDS            R1, R0, #1
3383C2:  BEQ.W           loc_338FB8
3383C6:  MOVS            R1, #4; int
3383C8:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
3383CC:  B.W             loc_338FBC
3383D0:  MOV             R0, R8; jumptable 0033777E case 2174
3383D2:  MOVS            R1, #2; __int16
3383D4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3383D8:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3383E8)
3383DC:  MOVW            R3, #0x7CC
3383E0:  LDR.W           R0, =(ScriptParams_ptr - 0x3383EA)
3383E4:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
3383E6:  ADD             R0, PC; ScriptParams_ptr
3383E8:  LDR             R1, [R1]; CPools::ms_pPedPool ...
3383EA:  LDR             R0, [R0]; ScriptParams
3383EC:  LDRD.W          R2, R0, [R0]
3383F0:  CMP             R0, #0
3383F2:  LDR             R1, [R1]; CPools::ms_pPedPool
3383F4:  MOV.W           R2, R2,LSR#8
3383F8:  LDR             R1, [R1]
3383FA:  MLA.W           R1, R2, R3, R1
3383FE:  LDR.W           R2, [R1,#0x48C]
338402:  ORR.W           R3, R2, #0x200
338406:  IT NE
338408:  BICNE.W         R3, R2, #0x200
33840C:  B               loc_33844A
33840E:  MOV             R0, R8; jumptable 0033777E case 2175
338410:  MOVS            R1, #2; __int16
338412:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
338416:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x338426)
33841A:  MOVW            R3, #0x7CC
33841E:  LDR.W           R0, =(ScriptParams_ptr - 0x338428)
338422:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
338424:  ADD             R0, PC; ScriptParams_ptr
338426:  LDR             R1, [R1]; CPools::ms_pPedPool ...
338428:  LDR             R0, [R0]; ScriptParams
33842A:  LDRD.W          R2, R0, [R0]
33842E:  CMP             R0, #0
338430:  LDR             R1, [R1]; CPools::ms_pPedPool
338432:  MOV.W           R2, R2,LSR#8
338436:  LDR             R1, [R1]
338438:  MLA.W           R1, R2, R3, R1
33843C:  LDR.W           R2, [R1,#0x48C]
338440:  BIC.W           R3, R2, #0x4000
338444:  IT NE
338446:  ORRNE.W         R3, R2, #0x4000
33844A:  STR.W           R3, [R1,#0x48C]
33844E:  B.W             loc_338EB0
338452:  MOV             R0, R8; jumptable 0033777E case 2177
338454:  MOVS            R1, #2; __int16
338456:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33845A:  LDR.W           R0, =(ScriptParams_ptr - 0x338466)
33845E:  MOVS            R4, #0
338460:  MOVS            R6, #0
338462:  ADD             R0, PC; ScriptParams_ptr
338464:  LDR             R1, [R0]; ScriptParams
338466:  LDRD.W          R0, R1, [R1]; int
33846A:  CMP             R1, #0
33846C:  IT EQ
33846E:  MOVEQ           R4, #1
338470:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
338474:  STRB.W          R4, [R0,#0x12F]
338478:  B.W             loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
33847C:  MOV             R0, R8; jumptable 0033777E case 2179
33847E:  MOVS            R1, #3; __int16
338480:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
338484:  LDR.W           R0, =(ScriptParams_ptr - 0x33848C)
338488:  ADD             R0, PC; ScriptParams_ptr
33848A:  LDR             R1, [R0]; ScriptParams
33848C:  LDRD.W          R0, R2, [R1]; unsigned __int8
338490:  CMP             R2, #0
338492:  BLT.W           loc_338CE4
338496:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3384A2)
33849A:  UXTB            R6, R2
33849C:  LSRS            R2, R2, #8
33849E:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
3384A0:  LDR             R1, [R1]; CPools::ms_pPedPool ...
3384A2:  LDR             R1, [R1]; CPools::ms_pPedPool
3384A4:  LDR             R3, [R1,#4]
3384A6:  LDRB            R3, [R3,R2]
3384A8:  CMP             R3, R6
3384AA:  BNE.W           loc_338CE4
3384AE:  MOVW            R3, #0x7CC
3384B2:  LDR             R1, [R1]
3384B4:  MLA.W           R4, R2, R3, R1
3384B8:  B.W             loc_338CE6
3384BC:  MOV             R0, R8; jumptable 0033777E case 2180
3384BE:  MOVS            R1, #1; __int16
3384C0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3384C4:  LDR.W           R0, =(ScriptParams_ptr - 0x3384D0)
3384C8:  LDR.W           R1, =(_ZN11CTheScripts15StreamedScriptsE_ptr - 0x3384D2)
3384CC:  ADD             R0, PC; ScriptParams_ptr
3384CE:  ADD             R1, PC; _ZN11CTheScripts15StreamedScriptsE_ptr
3384D0:  LDR             R0, [R0]; ScriptParams
3384D2:  LDR             R1, [R1]; CTheScripts::StreamedScripts ...
3384D4:  LDR             R2, [R0]
3384D6:  MOVS            R0, #0
3384D8:  UXTH            R2, R2
3384DA:  SXTH            R3, R0
3384DC:  ADD.W           R3, R1, R3,LSL#5
3384E0:  LDRH            R3, [R3,#6]
3384E2:  CMP             R3, R2
3384E4:  BEQ             loc_3384F2
3384E6:  ADDS            R0, #1
3384E8:  SXTH            R0, R0
3384EA:  CMP             R0, #0x52 ; 'R'
3384EC:  BLT             loc_3384DA
3384EE:  MOVW            R0, #0xFFFF
3384F2:  LDR.W           R1, =(ScriptParams_ptr - 0x338500)
3384F6:  ADD             R5, SP, #0xE8+var_50
3384F8:  SXTH            R0, R0
3384FA:  MOVS            R2, #8; unsigned __int8
3384FC:  ADD             R1, PC; ScriptParams_ptr
3384FE:  LDR             R4, [R1]; ScriptParams
338500:  MOV             R1, R5; char *
338502:  STR             R0, [R4]
338504:  MOV             R0, R8; this
338506:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33850A:  LDR.W           R0, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x33851A)
33850E:  MOV             R2, R5; char *
338510:  LDRSH.W         R1, [R4]; __int16
338514:  MOVS            R3, #5; signed __int8
338516:  ADD             R0, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
338518:  LDR             R0, [R0]; this
33851A:  BLX             j__ZN17CScriptsForBrains35AddNewStreamedScriptBrainForCodeUseEsPca; CScriptsForBrains::AddNewStreamedScriptBrainForCodeUse(short,char *,signed char)
33851E:  B.W             loc_338EB0
338522:  MOV             R0, R8; jumptable 0033777E case 2183
338524:  MOVS            R1, #3; __int16
338526:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33852A:  LDR.W           R0, =(ScriptParams_ptr - 0x33853C)
33852E:  MOVW            R3, #0x7CC
338532:  VLDR            S0, =3.1416
338536:  MOVS            R6, #0
338538:  ADD             R0, PC; ScriptParams_ptr
33853A:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x338544)
33853E:  LDR             R0, [R0]; ScriptParams
338540:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
338542:  LDR             R1, [R1]; CPools::ms_pPedPool ...
338544:  VLDR            S2, [R0,#8]
338548:  LDRD.W          R2, R0, [R0]
33854C:  VMUL.F32        S0, S2, S0
338550:  VLDR            S2, =180.0
338554:  LDR             R1, [R1]; CPools::ms_pPedPool
338556:  LSRS            R2, R2, #8
338558:  LDR             R1, [R1]
33855A:  MLA.W           R1, R2, R3, R1
33855E:  VDIV.F32        S0, S0, S2
338562:  STRH.W          R0, [R1,#0x780]
338566:  ADDW            R0, R1, #0x784
33856A:  VSTR            S0, [R0]
33856E:  B.W             loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
338572:  MOV             R0, R8; jumptable 0033777E case 2184
338574:  MOVS            R1, #1; __int16
338576:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33857A:  MOV             R0, R8; this
33857C:  BLX             j__ZN14CRunningScript39CollectNextParameterWithoutIncreasingPCEv; CRunningScript::CollectNextParameterWithoutIncreasingPC(void)
338580:  BLX             j__ZN6CRadar23GetActualBlipArrayIndexEi; CRadar::GetActualBlipArrayIndex(int)
338584:  LDR.W           R0, =(ScriptParams_ptr - 0x338590)
338588:  MOVS            R2, #1
33858A:  MOVS            R3, #3
33858C:  ADD             R0, PC; ScriptParams_ptr
33858E:  LDR             R4, [R0]; ScriptParams
338590:  ADD.W           R0, R8, #8
338594:  STR             R0, [SP,#0xE8+var_E8]
338596:  MOVS            R0, #2
338598:  LDR             R1, [R4]
33859A:  BLX             j__ZN6CRadar13SetEntityBlipE9eBlipTypeij12eBlipDisplayPc; CRadar::SetEntityBlip(eBlipType,int,uint,eBlipDisplay,char *)
33859E:  MOVS            R1, #3; int
3385A0:  MOV             R5, R0
3385A2:  BLX             j__ZN6CRadar15ChangeBlipScaleEii; CRadar::ChangeBlipScale(int,int)
3385A6:  STR             R5, [R4]
3385A8:  B.W             loc_338EA8
3385AC:  MOV             R0, R8; jumptable 0033777E case 2185
3385AE:  MOVS            R1, #1; __int16
3385B0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3385B4:  LDR.W           R0, =(ScriptParams_ptr - 0x3385C4)
3385B8:  MOVW            R2, #0x7CC
3385BC:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x3385C6)
3385C0:  ADD             R0, PC; ScriptParams_ptr
3385C2:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
3385C4:  LDR             R0, [R0]; ScriptParams
3385C6:  LDR             R1, [R1]; CPools::ms_pPedPool ...
3385C8:  LDR             R0, [R0]
3385CA:  LDR             R1, [R1]; CPools::ms_pPedPool
3385CC:  LSRS            R0, R0, #8
3385CE:  LDR             R1, [R1]
3385D0:  MLA.W           R0, R0, R2, R1; this
3385D4:  LDRB.W          R1, [R0,#0x485]
3385D8:  LSLS            R1, R1, #0x1F
3385DA:  ITT NE
3385DC:  LDRNE.W         R1, [R0,#0x590]
3385E0:  CMPNE           R1, #0
3385E2:  BNE.W           loc_338E74
3385E6:  ADD             R1, SP, #0xE8+var_C8
3385E8:  MOVS            R2, #1
3385EA:  MOVS            R3, #0
3385EC:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
3385F0:  B.W             loc_338E8C
3385F4:  MOV             R0, R8; jumptable 0033777E case 2186
3385F6:  MOVW            R1, #0x88A; int
3385FA:  BLX             j__ZN14CRunningScript21PlayAnimScriptCommandEi; CRunningScript::PlayAnimScriptCommand(int)
3385FE:  B.W             loc_338EB0
338602:  MOV             R0, R8; jumptable 0033777E case 2187
338604:  MOVS            R1, #2; __int16
338606:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33860A:  LDR.W           R0, =(ScriptParams_ptr - 0x33861A)
33860E:  MOVW            R6, #0xA2C
338612:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33861C)
338616:  ADD             R0, PC; ScriptParams_ptr
338618:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33861A:  LDR             R2, [R0]; ScriptParams
33861C:  LDR             R0, [R1]; CPools::ms_pVehiclePool ...
33861E:  LDR             R1, [R2]
338620:  LDR             R3, [R0]; CPools::ms_pVehiclePool
338622:  LSRS            R0, R1, #8
338624:  LDR             R1, [R3]
338626:  MLA.W           R3, R0, R6, R1
33862A:  LDR.W           R3, [R3,#0x388]
33862E:  CMP             R3, #0
338630:  BEQ.W           loc_338EB0
338634:  VLDR            S4, =0.01
338638:  VLDR            S2, [R3,#0x10]
33863C:  VLDR            S0, [R2,#4]
338640:  VCMPE.F32       S2, S4
338644:  VMRS            APSR_nzcv, FPSCR
338648:  BLE             loc_33865A
33864A:  VMOV.F32        S4, #0.5
33864E:  VMUL.F32        S2, S2, S4
338652:  VLDR            S4, =1000.0
338656:  VDIV.F32        S2, S2, S4
33865A:  MOVW            R2, #0xA2C
33865E:  VMUL.F32        S0, S0, S2
338662:  MLA.W           R0, R0, R2, R1
338666:  MOVS            R6, #0
338668:  VSTR            S0, [R0,#0x9C]
33866C:  B.W             loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
338670:  DCD __stack_chk_guard_ptr - 0x337770
338674:  DCD TheCamera_ptr - 0x33788E
338678:  DCD ScriptParams_ptr - 0x337890
33867C:  DCD _ZN6CClock19ms_nGameClockMonthsE_ptr - 0x3378BA
338680:  DCD _ZN6CClock17ms_nGameClockDaysE_ptr - 0x3378C0
338684:  DCD ScriptParams_ptr - 0x3378C4
338688:  DCD ScriptParams_ptr - 0x3378E6
33868C:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x3378FA
338690:  DCD ScriptParams_ptr - 0x337924
338694:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x337938
338698:  DCD ScriptParams_ptr - 0x337962
33869C:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x337976
3386A0:  DCD ScriptParams_ptr - 0x3379A0
3386A4:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x3379B4
3386A8:  DCD ScriptParams_ptr - 0x3379DE
3386AC:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x3379F2
3386B0:  DCD ScriptParams_ptr - 0x337A24
3386B4:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x337A2A
3386B8:  DCD ScriptParams_ptr - 0x337A70
3386BC:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x337A84
3386C0:  DCD ScriptParams_ptr - 0x337AB6
3386C4:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x337AB8
3386C8:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x337AEA
3386CC:  DCD ScriptParams_ptr - 0x337AEC
3386D0:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x337B1E
3386D4:  DCD ScriptParams_ptr - 0x337B20
3386D8:  DCD _ZN9CTheZones11m_CurrLevelE_ptr - 0x337B4C
3386DC:  DCD ScriptParams_ptr - 0x337B4E
3386E0:  DCD ScriptParams_ptr - 0x337B66
3386E4:  DCD ScriptParams_ptr - 0x337BA2
3386E8:  DCD g_interiorMan_ptr - 0x337BB4
3386EC:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x337BD6
3386F0:  DCD ScriptParams_ptr - 0x337BD8
3386F4:  DCD ScriptParams_ptr - 0x337C12
3386F8:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x337C26
3386FC:  DCD ScriptParams_ptr - 0x337C50
338700:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x337C64
338704:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x337C98
338708:  DCD ScriptParams_ptr - 0x337C9A
33870C:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x337CDE
338710:  DCD ScriptParams_ptr - 0x337CE0
338714:  DCD ScriptParams_ptr - 0x337D0E
338718:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x337D28
33871C:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x337D5C
338720:  DCD ScriptParams_ptr - 0x337D5E
338724:  DCD ScriptParams_ptr - 0x337D9E
338728:  DCD _ZN11CTheScripts38fCameraHeadingStepWhenPlayerIsAttachedE_ptr - 0x337DAA
33872C:  DCD _ZN11CTheScripts34fCameraHeadingWhenPlayerIsAttachedE_ptr - 0x337DC2
338730:  DCD ScriptParams_ptr - 0x337DE6
338734:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x337DFA
338738:  DCD ScriptParams_ptr - 0x337E34
33873C:  DCD ScriptParams_ptr - 0x337E54
338740:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x337E6E
338744:  DCD ScriptParams_ptr - 0x337E98
338748:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x337EAC
33874C:  DCD _ZN6CPools11ms_pPedPoolE_ptr - 0x337EDC
338750:  DCD ScriptParams_ptr - 0x337EDE
338754:  DCD _ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr - 0x337F16
338758:  DCD _ZN11CTheScripts38fCameraHeadingStepWhenPlayerIsAttachedE_ptr - 0x337F34
33875C:  DCD ScriptParams_ptr - 0x337F52
338760:  DCD _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x337F6E
338764:  DCD ScriptParams_ptr - 0x337F9E
338768:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x338062
33876C:  DCD ScriptParams_ptr - 0x338084
338770:  DCD ScriptParams_ptr - 0x33809A
338774:  DCD g_interiorMan_ptr - 0x33809C
338778:  DCFS 3.1416
33877C:  DCFS 180.0
338780:  DCFS 0.01
338784:  DCFS 1000.0
338788:  DCFS -100.0
33878C:  MOV             R0, R8; jumptable 0033777E case 2188
33878E:  MOVS            R1, #4; __int16
338790:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
338794:  LDR.W           R0, =(ScriptParams_ptr - 0x33879E)
338798:  MOVS            R6, #0
33879A:  ADD             R0, PC; ScriptParams_ptr
33879C:  LDR             R0, [R0]; ScriptParams
33879E:  LDR             R0, [R0]
3387A0:  CMP             R0, #0
3387A2:  BLT.W           loc_338D18
3387A6:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3387B2)
3387AA:  UXTB            R3, R0
3387AC:  LSRS            R0, R0, #8
3387AE:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3387B0:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
3387B2:  LDR             R1, [R1]; CPools::ms_pVehiclePool
3387B4:  LDR             R2, [R1,#4]
3387B6:  LDRB            R2, [R2,R0]
3387B8:  CMP             R2, R3
3387BA:  BNE.W           loc_338D18
3387BE:  MOVW            R2, #0xA2C
3387C2:  LDR             R1, [R1]
3387C4:  MLA.W           R0, R0, R2, R1
3387C8:  B               loc_338D1A
3387CA:  MOV             R0, R8; jumptable 0033777E case 2189
3387CC:  MOVS            R1, #6; __int16
3387CE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
3387D2:  LDR.W           R0, =(ScriptParams_ptr - 0x3387DE)
3387D6:  VLDR            S0, =-100.0
3387DA:  ADD             R0, PC; ScriptParams_ptr
3387DC:  LDR             R0, [R0]; ScriptParams
3387DE:  VLDR            S20, [R0,#8]
3387E2:  VLDR            S16, [R0]
3387E6:  VCMPE.F32       S20, S0
3387EA:  VLDR            S18, [R0,#4]
3387EE:  VMRS            APSR_nzcv, FPSCR
3387F2:  BGT             loc_338804
3387F4:  VMOV            R0, S16; this
3387F8:  VMOV            R1, S18; float
3387FC:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
338800:  VMOV            S20, R0
338804:  LDR.W           R0, =(ScriptParams_ptr - 0x33880C)
338808:  ADD             R0, PC; ScriptParams_ptr
33880A:  LDR             R0, [R0]; ScriptParams
33880C:  VLDR            S22, [R0,#0xC]
338810:  LDR             R0, [R0,#(dword_81A918 - 0x81A908)]
338812:  CMP.W           R0, #0xFFFFFFFF
338816:  BGT             loc_33882C
338818:  LDR.W           R1, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x338822)
33881C:  NEGS            R0, R0
33881E:  ADD             R1, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
338820:  RSB.W           R0, R0, R0,LSL#3
338824:  LDR             R1, [R1]; CTheScripts::UsedObjectArray ...
338826:  ADD.W           R0, R1, R0,LSL#2
33882A:  LDR             R0, [R0,#0x18]; this
33882C:  VMOV            R2, S22; CVector *
338830:  MOVS            R1, #1
338832:  MOVS            R3, #0
338834:  MOVS            R6, #0x10
338836:  VSTR            S18, [SP,#0xE8+var_5C]
33883A:  ADD             R4, SP, #0xE8+var_B0
33883C:  VSTR            S16, [SP,#0xE8+var_60]
338840:  ADD             R5, SP, #0xE8+var_70
338842:  VSTR            S20, [SP,#0xE8+var_58]
338846:  STRD.W          R5, R6, [SP,#0xE8+var_E8]; bool
33884A:  STRD.W          R4, R1, [SP,#0xE8+var_E0]; __int16
33884E:  STRD.W          R3, R3, [SP,#0xE8+var_D8]; bool
338852:  MOVS            R3, #1; float
338854:  STRD.W          R1, R1, [SP,#0xE8+var_D0]; bool
338858:  ADD             R1, SP, #0xE8+var_60; unsigned int
33885A:  BLX             j__ZN6CWorld24FindObjectsOfTypeInRangeEjRK7CVectorfbPssPP7CEntitybbbbb; CWorld::FindObjectsOfTypeInRange(uint,CVector const&,float,bool,short *,short,CEntity **,bool,bool,bool,bool,bool)
33885E:  LDRSH.W         R1, [SP,#0xE8+var_70]
338862:  CMP             R1, #1
338864:  BLT.W           loc_338EB0
338868:  VADD.F32        S0, S22, S22
33886C:  MOVS            R3, #0
33886E:  MOVS            R2, #0
338870:  MOVS            R0, #0
338872:  LDR.W           R3, [R4,R3,LSL#2]
338876:  ADDS            R2, #1
338878:  LDR             R6, [R3,#0x14]
33887A:  ADD.W           R5, R6, #0x30 ; '0'
33887E:  CMP             R6, #0
338880:  IT EQ
338882:  ADDEQ           R5, R3, #4
338884:  VLDR            S2, [R5]
338888:  VLDR            S4, [R5,#4]
33888C:  VSUB.F32        S2, S2, S16
338890:  VLDR            S6, [R5,#8]
338894:  VSUB.F32        S4, S4, S18
338898:  VSUB.F32        S6, S6, S20
33889C:  VMUL.F32        S2, S2, S2
3388A0:  VMUL.F32        S4, S4, S4
3388A4:  VMUL.F32        S6, S6, S6
3388A8:  VADD.F32        S2, S2, S4
3388AC:  VADD.F32        S2, S2, S6
3388B0:  VSQRT.F32       S2, S2
3388B4:  VCMPE.F32       S2, S0
3388B8:  VMRS            APSR_nzcv, FPSCR
3388BC:  VMIN.F32        D0, D1, D0
3388C0:  IT LT
3388C2:  MOVLT           R0, R3
3388C4:  UXTH            R3, R2
3388C6:  CMP             R3, R1
3388C8:  BLT             loc_338872
3388CA:  CMP             R0, #0
3388CC:  BEQ.W           loc_338EB0
3388D0:  LDR.W           R1, =(ScriptParams_ptr - 0x3388DC)
3388D4:  LDRD.W          R2, R3, [R0,#0x1C]
3388D8:  ADD             R1, PC; ScriptParams_ptr
3388DA:  BIC.W           R6, R2, #1
3388DE:  LDR             R1, [R1]; ScriptParams
3388E0:  LDR             R1, [R1,#(dword_81A91C - 0x81A908)]
3388E2:  CMP             R1, #0
3388E4:  IT NE
3388E6:  ORRNE.W         R6, R2, #1
3388EA:  STRD.W          R6, R3, [R0,#0x1C]
3388EE:  B               loc_338EB0
3388F0:  MOVS            R0, #(stderr+1); jumptable 0033777E case 2190
3388F2:  BLX             j__ZN6CClock17OffsetClockByADayEj; CClock::OffsetClockByADay(uint)
3388F6:  B               loc_338EB0
3388F8:  MOV             R0, R8; jumptable 0033777E case 2192
3388FA:  BLX             j__ZN14CRunningScript24GetIndexOfGlobalVariableEv; CRunningScript::GetIndexOfGlobalVariable(void)
3388FE:  MOV             R5, R0
338900:  MOV             R0, R8; this
338902:  MOVS            R1, #1; __int16
338904:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
338908:  LDR.W           R0, =(ScriptParams_ptr - 0x338914)
33890C:  LDR.W           R1, =(_ZN12CUserDisplay10OnscnTimerE_ptr - 0x338916)
338910:  ADD             R0, PC; ScriptParams_ptr
338912:  ADD             R1, PC; _ZN12CUserDisplay10OnscnTimerE_ptr
338914:  LDR             R0, [R0]; ScriptParams
338916:  LDR             R2, [R0]; unsigned int
338918:  LDR             R0, [R1]; this
33891A:  MOV             R1, R5; unsigned int
33891C:  BLX             j__ZN14COnscreenTimer25SetClockBeepCountdownSecsEjj; COnscreenTimer::SetClockBeepCountdownSecs(uint,uint)
338920:  B               loc_338EB0
338922:  MOV             R0, R8; jumptable 0033777E case 2195
338924:  MOVS            R1, #2; __int16
338926:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33892A:  LDR.W           R0, =(ScriptParams_ptr - 0x338936)
33892E:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x338938)
338932:  ADD             R0, PC; ScriptParams_ptr
338934:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
338936:  LDR             R0, [R0]; ScriptParams
338938:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33893A:  LDR             R0, [R0]
33893C:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33893E:  CMP             R0, #0
338940:  BLT.W           loc_338D2E
338944:  LDR             R2, [R1,#4]
338946:  UXTB            R3, R0
338948:  LSRS            R0, R0, #8
33894A:  LDRB            R2, [R2,R0]
33894C:  CMP             R2, R3
33894E:  BNE.W           loc_338D2E
338952:  MOVW            R2, #0xA2C
338956:  LDR             R3, [R1]
338958:  MLA.W           R0, R0, R2, R3
33895C:  B               loc_338D30
33895E:  MOV             R0, R8; jumptable 0033777E case 2199
338960:  MOVS            R1, #2; __int16
338962:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
338966:  LDR.W           R0, =(ScriptParams_ptr - 0x33896E)
33896A:  ADD             R0, PC; ScriptParams_ptr
33896C:  LDR             R0, [R0]; ScriptParams
33896E:  LDR             R1, [R0]
338970:  CMP             R1, #0
338972:  BLT.W           loc_338D70
338976:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x338982)
33897A:  UXTB            R3, R1
33897C:  LSRS            R1, R1, #8
33897E:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
338980:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
338982:  LDR             R0, [R0]; CPools::ms_pVehiclePool
338984:  LDR             R2, [R0,#4]
338986:  LDRB            R2, [R2,R1]
338988:  CMP             R2, R3
33898A:  BNE.W           loc_338D70
33898E:  MOVW            R2, #0xA2C
338992:  LDR             R0, [R0]
338994:  MLA.W           R0, R1, R2, R0
338998:  B               loc_338D72
33899A:  LDR.W           R1, =(_ZN11CTheScripts28NumberOfEntriesInSwitchTableE_ptr - 0x3389A6)
33899E:  CMP.W           LR, #0
3389A2:  ADD             R1, PC; _ZN11CTheScripts28NumberOfEntriesInSwitchTableE_ptr
3389A4:  LDR             R1, [R1]; CTheScripts::NumberOfEntriesInSwitchTable ...
3389A6:  LDRH            R1, [R1]; CTheScripts::NumberOfEntriesInSwitchTable
3389A8:  BEQ             loc_3389F8
3389AA:  CMP.W           LR, #2
3389AE:  MOV             R2, LR
3389B0:  IT LS
3389B2:  MOVLS           R2, #2
3389B4:  LDR.W           R5, =(_ZN11CTheScripts15SwitchJumpTableE_ptr - 0x3389C2)
3389B8:  ADD             R2, R6
3389BA:  LDR.W           R6, =(ScriptParams_ptr - 0x3389C6)
3389BE:  ADD             R5, PC; _ZN11CTheScripts15SwitchJumpTableE_ptr
3389C0:  MOVS            R3, #0
3389C2:  ADD             R6, PC; ScriptParams_ptr
3389C4:  ADD.W           R12, R1, R2,LSR#1
3389C8:  LDR             R5, [R5]; CTheScripts::SwitchJumpTable ...
3389CA:  LDR             R6, [R6]; ScriptParams
3389CC:  ADD.W           R4, R6, R3,LSL#2
3389D0:  LDR.W           R0, [R6,R3,LSL#2]
3389D4:  UXTH            R2, R1
3389D6:  STR.W           R0, [R5,R2,LSL#3]
3389DA:  ADDS            R3, #2
3389DC:  ADD.W           R0, R5, R2,LSL#3
3389E0:  ADDS            R1, #1
3389E2:  LDR             R4, [R4,#4]
3389E4:  CMP             R3, LR
3389E6:  STR             R4, [R0,#4]
3389E8:  BCC             loc_3389CC
3389EA:  LDR.W           R0, =(_ZN11CTheScripts28NumberOfEntriesInSwitchTableE_ptr - 0x3389F6)
3389EE:  ADD.W           R1, R12, #1
3389F2:  ADD             R0, PC; _ZN11CTheScripts28NumberOfEntriesInSwitchTableE_ptr
3389F4:  LDR             R0, [R0]; CTheScripts::NumberOfEntriesInSwitchTable ...
3389F6:  STRH            R1, [R0]; CTheScripts::NumberOfEntriesInSwitchTable
3389F8:  LDR.W           R0, =(_ZN11CTheScripts35NumberOfEntriesStillToReadForSwitchE_ptr - 0x338A02)
3389FC:  MOVS            R2, #0
3389FE:  ADD             R0, PC; _ZN11CTheScripts35NumberOfEntriesStillToReadForSwitchE_ptr
338A00:  LDR             R0, [R0]; CTheScripts::NumberOfEntriesStillToReadForSwitch ...
338A02:  STRH            R2, [R0]; CTheScripts::NumberOfEntriesStillToReadForSwitch
338A04:  LDR.W           R0, =(_ZN11CTheScripts29ValueToCheckInSwitchStatementE_ptr - 0x338A10)
338A08:  ADD.W           R2, R1, #0xFF
338A0C:  ADD             R0, PC; _ZN11CTheScripts29ValueToCheckInSwitchStatementE_ptr
338A0E:  UXTB            R4, R2
338A10:  CMP             R4, #2
338A12:  LDR             R0, [R0]; CTheScripts::ValueToCheckInSwitchStatement ...
338A14:  LDR.W           R12, [R0]; CTheScripts::ValueToCheckInSwitchStatement
338A18:  BCC             loc_338A70
338A1A:  MOVS            R2, #0xFF
338A1C:  UXTAH.W         R1, R2, R1
338A20:  LDR.W           R2, =(_ZN11CTheScripts15SwitchJumpTableE_ptr - 0x338A2A)
338A24:  MOVS            R3, #0
338A26:  ADD             R2, PC; _ZN11CTheScripts15SwitchJumpTableE_ptr
338A28:  LDR             R5, [R2]; CTheScripts::SwitchJumpTable ...
338A2A:  LSRS            R2, R4, #1
338A2C:  LDR.W           R6, [R5,R2,LSL#3]
338A30:  CMP             R12, R6
338A32:  BEQ.W           loc_338F6E
338A36:  ITE GT
338A38:  MOVGT           R3, R2
338A3A:  MOVLE           R1, R2
338A3C:  UXTB            R2, R1
338A3E:  UXTB            R6, R3
338A40:  SUBS            R0, R2, R6
338A42:  UXTAB.W         R4, R2, R3
338A46:  CMP             R0, #1
338A48:  BGT             loc_338A2A
338A4A:  MOV             R4, R2
338A4C:  B               loc_338A72
338A4E:  MOVS            R5, #0
338A50:  LDR.W           R0, =(ScriptParams_ptr - 0x338A5A)
338A54:  ADD             R3, SP, #0xE8+var_BC
338A56:  ADD             R0, PC; ScriptParams_ptr
338A58:  LDR             R4, [R0]; ScriptParams
338A5A:  ADDS            R2, R4, #4
338A5C:  LDM             R2, {R0-R2}
338A5E:  STM             R3!, {R0-R2}
338A60:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
338A64:  ADD             R2, SP, #0xE8+var_BC; CVector *
338A66:  MOV             R1, R5; CEntity *
338A68:  BLX             j__ZN17CEventGlobalGroup13GetSoundLevelEP7CEntityR7CVector; CEventGlobalGroup::GetSoundLevel(CEntity *,CVector &)
338A6C:  STR             R0, [R4]
338A6E:  B               loc_338EA8
338A70:  MOVS            R6, #0
338A72:  LDR.W           R0, =(_ZN11CTheScripts15SwitchJumpTableE_ptr - 0x338A7A)
338A76:  ADD             R0, PC; _ZN11CTheScripts15SwitchJumpTableE_ptr
338A78:  LDR             R0, [R0]; CTheScripts::SwitchJumpTable ...
338A7A:  LDR.W           R0, [R0,R4,LSL#3]
338A7E:  CMP             R12, R0
338A80:  BNE.W           loc_338DB6
338A84:  LDR.W           R0, =(_ZN11CTheScripts15SwitchJumpTableE_ptr - 0x338A8C)
338A88:  ADD             R0, PC; _ZN11CTheScripts15SwitchJumpTableE_ptr
338A8A:  LDR             R0, [R0]; CTheScripts::SwitchJumpTable ...
338A8C:  ADD.W           R0, R0, R4,LSL#3
338A90:  B               loc_338F78
338A92:  MOVS            R6, #0
338A94:  ADD             R5, SP, #0xE8+var_B0
338A96:  MOV             R0, R8; this
338A98:  MOVS            R2, #0x18; unsigned __int8
338A9A:  MOV             R1, R5; char *
338A9C:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
338AA0:  LDR             R0, [R6,#0x18]; int
338AA2:  MOV             R1, R5; this
338AA4:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpPKc; RpAnimBlendClumpGetAssociation(RpClump *,char const*)
338AA8:  MOV             R5, R0
338AAA:  MOV             R0, R8; this
338AAC:  MOVS            R1, #1; __int16
338AAE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
338AB2:  CMP             R5, #0
338AB4:  BEQ.W           loc_338EB0
338AB8:  LDR.W           R0, =(ScriptParams_ptr - 0x338AC2)
338ABC:  MOVS            R6, #0
338ABE:  ADD             R0, PC; ScriptParams_ptr
338AC0:  LDR             R0, [R0]; ScriptParams
338AC2:  LDR             R0, [R0]
338AC4:  STR             R0, [R5,#0x24]
338AC6:  B               loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
338AC8:  MOVS            R5, #0
338ACA:  ADD             R1, SP, #0xE8+var_B0; char *
338ACC:  MOV             R0, R8; this
338ACE:  MOVS            R2, #0x18; unsigned __int8
338AD0:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
338AD4:  LDR             R0, [R5,#0x18]
338AD6:  CMP             R0, #0
338AD8:  BEQ.W           loc_338D9E
338ADC:  LDRB            R1, [R0]
338ADE:  CMP             R1, #2
338AE0:  BNE.W           loc_338D9E
338AE4:  BLX             j__Z29RpAnimBlendClumpIsInitializedP7RpClump; RpAnimBlendClumpIsInitialized(RpClump *)
338AE8:  CMP             R0, #1
338AEA:  BNE.W           loc_338D9E
338AEE:  LDR             R0, [R5,#0x18]; int
338AF0:  ADD             R1, SP, #0xE8+var_B0; this
338AF2:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpPKc; RpAnimBlendClumpGetAssociation(RpClump *,char const*)
338AF6:  B.W             loc_3380A4
338AFA:  MOVS            R6, #0
338AFC:  ADD             R5, SP, #0xE8+var_B0
338AFE:  MOV             R0, R8; this
338B00:  MOVS            R2, #0x18; unsigned __int8
338B02:  MOV             R1, R5; char *
338B04:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
338B08:  LDR             R0, [R6,#0x18]; int
338B0A:  MOV             R1, R5; this
338B0C:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpPKc; RpAnimBlendClumpGetAssociation(RpClump *,char const*)
338B10:  CMP             R0, #0
338B12:  BEQ.W           loc_338E9E
338B16:  LDR             R1, [R0,#0x14]
338B18:  VLDR            S0, [R0,#0x20]
338B1C:  VLDR            S2, [R1,#0x10]
338B20:  VDIV.F32        S0, S0, S2
338B24:  VMOV            R0, S0
338B28:  B               loc_338EA0
338B2A:  MOVS            R6, #0
338B2C:  ADD             R5, SP, #0xE8+var_B0
338B2E:  MOV             R0, R8; this
338B30:  MOVS            R2, #0x18; unsigned __int8
338B32:  MOV             R1, R5; char *
338B34:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
338B38:  LDR             R0, [R6,#0x18]; int
338B3A:  MOV             R1, R5; this
338B3C:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpPKc; RpAnimBlendClumpGetAssociation(RpClump *,char const*)
338B40:  MOV             R5, R0
338B42:  MOV             R0, R8; this
338B44:  MOVS            R1, #1; __int16
338B46:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
338B4A:  CMP             R5, #0
338B4C:  BEQ.W           loc_338EB0
338B50:  LDR.W           R0, =(ScriptParams_ptr - 0x338B5A)
338B54:  LDR             R1, [R5,#0x14]
338B56:  ADD             R0, PC; ScriptParams_ptr
338B58:  LDR             R0, [R0]; ScriptParams
338B5A:  VLDR            S0, [R1,#0x10]
338B5E:  VLDR            S2, [R0]
338B62:  MOV             R0, R5; this
338B64:  VMUL.F32        S0, S2, S0
338B68:  VMOV            R1, S0; float
338B6C:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
338B70:  B               loc_338EB0
338B72:  MOVS            R0, #0
338B74:  LDR.W           R1, =(ScriptParams_ptr - 0x338B82)
338B78:  MOVS            R6, #0
338B7A:  VLDR            S0, =50.0
338B7E:  ADD             R1, PC; ScriptParams_ptr
338B80:  LDR             R1, [R1]; ScriptParams
338B82:  VLDR            S4, [R1,#8]
338B86:  VLDR            S6, [R1,#0xC]
338B8A:  VLDR            S2, [R1,#4]
338B8E:  VDIV.F32        S6, S6, S0
338B92:  VDIV.F32        S4, S4, S0
338B96:  VDIV.F32        S0, S2, S0
338B9A:  VSTR            S0, [R0,#0x48]
338B9E:  VSTR            S4, [R0,#0x4C]
338BA2:  VSTR            S6, [R0,#0x50]
338BA6:  B               loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
338BA8:  MOVS            R4, #0
338BAA:  MOV             R0, R4; this
338BAC:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
338BB0:  LDR.W           R0, =(ScriptParams_ptr - 0x338BBC)
338BB4:  VLDR            S2, =3.1416
338BB8:  ADD             R0, PC; ScriptParams_ptr
338BBA:  VLDR            S4, =180.0
338BBE:  LDR             R0, [R0]; ScriptParams
338BC0:  VLDR            S0, [R0,#0xC]
338BC4:  LDR             R0, [R4,#0x14]; this
338BC6:  VMUL.F32        S0, S0, S2
338BCA:  CMP             R0, #0
338BCC:  VDIV.F32        S0, S0, S4
338BD0:  BEQ.W           loc_338ED4
338BD4:  LDR.W           R1, =(ScriptParams_ptr - 0x338BE4)
338BD8:  VMOV            R3, S0; float
338BDC:  VLDR            S16, [R0,#0x30]
338BE0:  ADD             R1, PC; ScriptParams_ptr
338BE2:  VLDR            S18, [R0,#0x34]
338BE6:  VLDR            S20, [R0,#0x38]
338BEA:  LDR             R1, [R1]; ScriptParams
338BEC:  VLDR            S6, [R1,#4]
338BF0:  VLDR            S8, [R1,#8]
338BF4:  VMUL.F32        S6, S6, S2
338BF8:  VMUL.F32        S2, S8, S2
338BFC:  VDIV.F32        S6, S6, S4
338C00:  VDIV.F32        S2, S2, S4
338C04:  VMOV            R1, S6; x
338C08:  VMOV            R2, S2; float
338C0C:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
338C10:  LDR             R0, [R4,#0x14]
338C12:  VLDR            S0, [R0,#0x30]
338C16:  VLDR            S2, [R0,#0x34]
338C1A:  VLDR            S4, [R0,#0x38]
338C1E:  VADD.F32        S0, S16, S0
338C22:  VADD.F32        S2, S18, S2
338C26:  VADD.F32        S4, S20, S4
338C2A:  VSTR            S0, [R0,#0x30]
338C2E:  VSTR            S2, [R0,#0x34]
338C32:  VSTR            S4, [R0,#0x38]
338C36:  B               loc_338ED8
338C38:  MOVS            R5, #0
338C3A:  MOVS            R0, #dword_20; this
338C3C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
338C40:  MOV             R1, R5; CPed *
338C42:  MOV             R6, R0
338C44:  BLX             j__ZN30CTaskComplexFollowPedFootstepsC2EP4CPed; CTaskComplexFollowPedFootsteps::CTaskComplexFollowPedFootsteps(CPed *)
338C48:  LDR.W           R0, =(ScriptParams_ptr - 0x338C56)
338C4C:  MOV             R2, R6
338C4E:  MOV.W           R3, #0x850
338C52:  ADD             R0, PC; ScriptParams_ptr
338C54:  B               loc_338CC0
338C56:  MOVS            R5, #0
338C58:  LDR.W           R0, =(ScriptParams_ptr - 0x338C60)
338C5C:  ADD             R0, PC; ScriptParams_ptr
338C5E:  LDR             R0, [R0]; ScriptParams
338C60:  VLDR            S0, [R0,#4]
338C64:  VCVT.F32.S32    S2, S0
338C68:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]
338C6A:  CMP             R0, #0
338C6C:  BEQ.W           loc_338EEC
338C70:  ADDW            R0, R5, #0x54C
338C74:  VLDR            S0, =0.0
338C78:  VLDR            S4, [R0]
338C7C:  VCMPE.F32       S4, S2
338C80:  VMRS            APSR_nzcv, FPSCR
338C84:  VSUB.F32        S6, S4, S2
338C88:  VSUB.F32        S2, S2, S4
338C8C:  IT LT
338C8E:  VMOVLT.F32      S6, S0
338C92:  IT LT
338C94:  VMOVLT.F32      S0, S2
338C98:  VSTR            S6, [R0]
338C9C:  B               loc_338EF0
338C9E:  MOVS            R5, #0
338CA0:  MOVS            R0, #dword_20; this
338CA2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
338CA6:  MOVS            R2, #0
338CA8:  MOV             R1, R5; CPed *
338CAA:  MOVT            R2, #0x4120; float
338CAE:  MOV             R6, R0
338CB0:  BLX             j__ZN28CTaskComplexWalkAlongsidePedC2EP4CPedf; CTaskComplexWalkAlongsidePed::CTaskComplexWalkAlongsidePed(CPed *,float)
338CB4:  LDR.W           R0, =(ScriptParams_ptr - 0x338CC2)
338CB8:  MOV             R2, R6; CTask *
338CBA:  MOVW            R3, #0x859; int
338CBE:  ADD             R0, PC; ScriptParams_ptr
338CC0:  LDR             R0, [R0]; ScriptParams
338CC2:  LDR             R1, [R0]; int
338CC4:  MOV             R0, R8; this
338CC6:  BLX             j__ZN14CRunningScript19GivePedScriptedTaskEiP5CTaski; CRunningScript::GivePedScriptedTask(int,CTask *,int)
338CCA:  B               loc_338EB0
338CCC:  MOVS            R0, #0; this
338CCE:  LDR.W           R1, =(ScriptParams_ptr - 0x338CDC)
338CD2:  MOVS            R2, #0; unsigned int
338CD4:  MOVS            R3, #1; bool
338CD6:  MOVS            R6, #0
338CD8:  ADD             R1, PC; ScriptParams_ptr
338CDA:  LDR             R1, [R1]; ScriptParams
338CDC:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]; CVehicle *
338CDE:  BLX             j__ZN17CVehicleRecording24StartPlaybackRecordedCarEP8CVehiclejbb; CVehicleRecording::StartPlaybackRecordedCar(CVehicle *,uint,bool,bool)
338CE2:  B               loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
338CE4:  MOVS            R4, #0
338CE6:  MOVS            R1, #1; int
338CE8:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
338CEC:  CMP             R0, #0
338CEE:  BLT.W           loc_338EB0
338CF2:  LDR.W           R1, =(_ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x338CFA)
338CF6:  ADD             R1, PC; _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr
338CF8:  LDR             R1, [R1]; CTheScripts::ScriptEffectSystemArray ...
338CFA:  ADD.W           R0, R1, R0,LSL#3
338CFE:  LDR             R0, [R0,#4]; this
338D00:  CMP             R0, #0
338D02:  BEQ.W           loc_338EB0
338D06:  LDR.W           R1, =(ScriptParams_ptr - 0x338D0E)
338D0A:  ADD             R1, PC; ScriptParams_ptr
338D0C:  LDR             R1, [R1]; ScriptParams
338D0E:  LDR             R2, [R1,#(dword_81A910 - 0x81A908)]; int
338D10:  MOV             R1, R4; CEntity *
338D12:  BLX             j__ZN10FxSystem_c12AttachToBoneEP7CEntityi; FxSystem_c::AttachToBone(CEntity *,int)
338D16:  B               loc_338EB0
338D18:  MOVS            R0, #0; this
338D1A:  LDR             R1, =(ScriptParams_ptr - 0x338D20)
338D1C:  ADD             R1, PC; ScriptParams_ptr
338D1E:  LDR             R3, [R1]; ScriptParams
338D20:  ADDS            R3, #4
338D22:  LDM             R3, {R1-R3}; float
338D24:  STRD.W          R6, R6, [SP,#0xE8+var_E8]; float
338D28:  BLX             j__ZN8CCarCtrl20SetCoordsOfScriptCarEP8CVehiclefffhh; CCarCtrl::SetCoordsOfScriptCar(CVehicle *,float,float,float,uchar,uchar)
338D2C:  B               loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
338D2E:  MOVS            R0, #0
338D30:  LDR             R2, =(ScriptParams_ptr - 0x338D36)
338D32:  ADD             R2, PC; ScriptParams_ptr
338D34:  LDR             R2, [R2]; ScriptParams
338D36:  LDR             R2, [R2,#(dword_81A90C - 0x81A908)]
338D38:  CMP             R2, #0
338D3A:  BLT.W           loc_338EB0
338D3E:  LDR             R3, [R1,#4]
338D40:  UXTB            R6, R2
338D42:  LSRS            R2, R2, #8
338D44:  LDRB            R3, [R3,R2]
338D46:  CMP             R3, R6
338D48:  BNE.W           loc_338EB0
338D4C:  CMP             R0, #0
338D4E:  MOV.W           R6, #0
338D52:  ITTTT NE
338D54:  MOVWNE          R3, #0xA2C
338D58:  LDRNE           R1, [R1]
338D5A:  MLANE.W         R1, R2, R3, R1
338D5E:  CMPNE           R1, #0
338D60:  BEQ.W           loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
338D64:  LDR             R2, [R0]
338D66:  LDR.W           R3, [R2,#0xF8]
338D6A:  MOVS            R2, #1
338D6C:  BLX             R3
338D6E:  B               loc_338EB0
338D70:  MOVS            R0, #0; this
338D72:  LDR             R1, =(ScriptParams_ptr - 0x338D78)
338D74:  ADD             R1, PC; ScriptParams_ptr
338D76:  LDR             R1, [R1]; ScriptParams
338D78:  LDR             R2, [R1,#(dword_81A90C - 0x81A908)]
338D7A:  CMP             R2, #0
338D7C:  BLT             loc_338DA2
338D7E:  LDR             R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x338D88)
338D80:  UXTB            R6, R2
338D82:  LSRS            R2, R2, #8
338D84:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
338D86:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
338D88:  LDR             R1, [R1]; CPools::ms_pObjectPool
338D8A:  LDR             R3, [R1,#4]
338D8C:  LDRB            R3, [R3,R2]
338D8E:  CMP             R3, R6
338D90:  BNE             loc_338DA2
338D92:  MOV.W           R3, #0x1A4
338D96:  LDR             R1, [R1]
338D98:  MLA.W           R1, R2, R3, R1
338D9C:  CBNZ            R0, loc_338DA8
338D9E:  MOVS            R1, #0
338DA0:  B               loc_338DAE
338DA2:  MOVS            R1, #0; CEntity *
338DA4:  CMP             R0, #0
338DA6:  BEQ             loc_338D9E
338DA8:  BLX             j__ZN9CPhysical18GetHasCollidedWithEP7CEntity; CPhysical::GetHasCollidedWith(CEntity *)
338DAC:  MOV             R1, R0; unsigned __int8
338DAE:  MOV             R0, R8; this
338DB0:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
338DB4:  B               loc_338EB0
338DB6:  LDR             R0, =(_ZN11CTheScripts15SwitchJumpTableE_ptr - 0x338DBE)
338DB8:  LDR             R2, =(_ZN11CTheScripts20SwitchDefaultAddressE_ptr - 0x338DC0)
338DBA:  ADD             R0, PC; _ZN11CTheScripts15SwitchJumpTableE_ptr
338DBC:  ADD             R2, PC; _ZN11CTheScripts20SwitchDefaultAddressE_ptr
338DBE:  LDR             R0, [R0]; CTheScripts::SwitchJumpTable ...
338DC0:  ADD.W           R1, R0, R6,LSL#3
338DC4:  LDR.W           R0, [R1],#4; CTheScripts::SwitchJumpTable
338DC8:  CMP             R12, R0
338DCA:  IT NE
338DCC:  LDRNE           R1, [R2]; CTheScripts::SwitchDefaultAddress ...
338DCE:  B               loc_338F7A
338DD0:  MOVS            R4, #0
338DD2:  LDR             R0, =(ScriptParams_ptr - 0x338DDA)
338DD4:  ADD             R5, SP, #0xE8+var_B0
338DD6:  ADD             R0, PC; ScriptParams_ptr
338DD8:  LDR             R0, [R0]; ScriptParams
338DDA:  LDR             R1, [R0,#(dword_81A90C - 0x81A908)]
338DDC:  MOV             R0, R5; this
338DDE:  CMP             R1, #0
338DE0:  IT NE
338DE2:  MOVNE           R1, #1; bool
338DE4:  BLX             j__ZN34CTaskSimpleSetKindaStayInSamePlaceC2Eb; CTaskSimpleSetKindaStayInSamePlace::CTaskSimpleSetKindaStayInSamePlace(bool)
338DE8:  MOV             R1, R4; CPed *
338DEA:  BLX             j__ZN34CTaskSimpleSetKindaStayInSamePlace10ProcessPedEP4CPed; CTaskSimpleSetKindaStayInSamePlace::ProcessPed(CPed *)
338DEE:  MOV             R0, R5; this
338DF0:  BLX             j__ZN34CTaskSimpleSetKindaStayInSamePlaceD2Ev; CTaskSimpleSetKindaStayInSamePlace::~CTaskSimpleSetKindaStayInSamePlace()
338DF4:  B               loc_338EB0
338DF6:  LDR             R0, =(g_interiorMan_ptr - 0x338E00)
338DF8:  MOVS            R1, #0; unsigned __int8
338DFA:  MOVS            R6, #0
338DFC:  ADD             R0, PC; g_interiorMan_ptr
338DFE:  LDR             R0, [R0]; g_interiorMan ; this
338E00:  BLX             j__ZN17InteriorManager_c12ActivatePedsEh; InteriorManager_c::ActivatePeds(uchar)
338E04:  B               loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
338E06:  MOVS            R0, #(byte_9+3); this
338E08:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
338E0C:  MOV             R4, R0
338E0E:  LDR             R0, =(ScriptParams_ptr - 0x338E14)
338E10:  ADD             R0, PC; ScriptParams_ptr
338E12:  LDR             R0, [R0]; ScriptParams
338E14:  LDR             R1, [R0,#(dword_81A90C - 0x81A908)]
338E16:  MOV             R0, R4; this
338E18:  CMP             R1, #0
338E1A:  IT NE
338E1C:  MOVNE           R1, #1; bool
338E1E:  BLX             j__ZN34CTaskSimpleSetKindaStayInSamePlaceC2Eb; CTaskSimpleSetKindaStayInSamePlace::CTaskSimpleSetKindaStayInSamePlace(bool)
338E22:  LDR             R0, =(_ZN14CTaskSequences18ms_iActiveSequenceE_ptr - 0x338E2A)
338E24:  LDR             R1, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x338E2C)
338E26:  ADD             R0, PC; _ZN14CTaskSequences18ms_iActiveSequenceE_ptr
338E28:  ADD             R1, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
338E2A:  LDR             R0, [R0]; CTaskSequences::ms_iActiveSequence ...
338E2C:  LDR             R1, [R1]; CTaskSequences::ms_taskSequence ...
338E2E:  LDR             R0, [R0]; CTaskSequences::ms_iActiveSequence
338E30:  ADD.W           R0, R1, R0,LSL#6; this
338E34:  MOV             R1, R4; CTask *
338E36:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
338E3A:  B               loc_338EB0
338E3C:  MOVS            R0, #0
338E3E:  LDR             R1, =(ScriptParams_ptr - 0x338E44)
338E40:  ADD             R1, PC; ScriptParams_ptr
338E42:  LDR             R2, [R1]; ScriptParams
338E44:  LDRH            R1, [R0,#0x30]
338E46:  LDR             R2, [R2,#(dword_81A914 - 0x81A908)]
338E48:  CMP             R2, #0
338E4A:  BEQ.W           loc_338F58
338E4E:  ORR.W           R1, R1, #0x100
338E52:  STRH            R1, [R0,#0x30]
338E54:  LDR             R0, [R0,#0x38]
338E56:  CBZ             R0, loc_338EB0
338E58:  LDRH            R1, [R0,#0x30]
338E5A:  ORR.W           R1, R1, #0x100
338E5E:  B               loc_338F6A
338E60:  LDR             R1, =(ScriptParams_ptr - 0x338E6A)
338E62:  MOV.W           R0, #0xFFFFFFFF
338E66:  ADD             R1, PC; ScriptParams_ptr
338E68:  B               loc_338EA4
338E6A:  MOVS            R0, #0; this
338E6C:  MOVS            R6, #0
338E6E:  BLX             j__ZN9CGangWars17SetGangWarsActiveEb; CGangWars::SetGangWarsActive(bool)
338E72:  B               loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
338E74:  LDR             R0, [R1,#0x14]
338E76:  ADD.W           R2, R0, #0x30 ; '0'
338E7A:  CMP             R0, #0
338E7C:  IT EQ
338E7E:  ADDEQ           R2, R1, #4
338E80:  VLDR            D16, [R2]
338E84:  LDR             R0, [R2,#8]
338E86:  STR             R0, [SP,#0xE8+var_C0]
338E88:  VSTR            D16, [SP,#0xE8+var_C8]
338E8C:  LDR             R0, =(ScriptParams_ptr - 0x338E94)
338E8E:  ADD             R3, SP, #0xE8+var_C8
338E90:  ADD             R0, PC; ScriptParams_ptr
338E92:  LDM             R3, {R1-R3}
338E94:  LDR             R0, [R0]; ScriptParams
338E96:  STM             R0!, {R1-R3}
338E98:  MOV             R0, R8
338E9A:  MOVS            R1, #3
338E9C:  B               loc_338EAC
338E9E:  MOVS            R0, #0
338EA0:  LDR             R1, =(ScriptParams_ptr - 0x338EA6)
338EA2:  ADD             R1, PC; ScriptParams_ptr
338EA4:  LDR             R1, [R1]; ScriptParams
338EA6:  STR             R0, [R1]
338EA8:  MOV             R0, R8; this
338EAA:  MOVS            R1, #1; __int16
338EAC:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
338EB0:  MOVS            R6, #0
338EB2:  LDR             R0, =(__stack_chk_guard_ptr - 0x338EBA); jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
338EB4:  LDR             R1, [SP,#0xE8+var_3C]
338EB6:  ADD             R0, PC; __stack_chk_guard_ptr
338EB8:  LDR             R0, [R0]; __stack_chk_guard
338EBA:  LDR             R0, [R0]
338EBC:  SUBS            R0, R0, R1
338EBE:  ITTTT EQ
338EC0:  SXTBEQ          R0, R6
338EC2:  ADDEQ           SP, SP, #0xB0
338EC4:  VPOPEQ          {D8-D11}
338EC8:  POPEQ.W         {R8,R9,R11}
338ECC:  IT EQ
338ECE:  POPEQ           {R4-R7,PC}
338ED0:  BLX             __stack_chk_fail
338ED4:  VSTR            S0, [R4,#0x10]
338ED8:  MOV             R0, R4; this
338EDA:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
338EDE:  B               loc_338EB0
338EE0:  DCFS 50.0
338EE4:  DCFS 3.1416
338EE8:  DCFS 180.0
338EEC:  VMOV.F32        S0, S2
338EF0:  ADDW            R0, R5, #0x544
338EF4:  MOVS            R6, #0
338EF6:  VLDR            S2, [R0]
338EFA:  VSUB.F32        S0, S2, S0
338EFE:  VCMPE.F32       S0, #0.0
338F02:  VSTR            S0, [R0]
338F06:  VMRS            APSR_nzcv, FPSCR
338F0A:  BGT             loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
338F0C:  STR             R6, [R0]
338F0E:  MOVS            R0, #word_28; this
338F10:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
338F14:  MOV             R4, R0
338F16:  MOV.W           R0, #0x40800000
338F1A:  STRD.W          R0, R6, [SP,#0xE8+var_E8]; float
338F1E:  MOV             R0, R4; int
338F20:  MOVS            R1, #0; int
338F22:  MOVS            R2, #0; int
338F24:  MOVS            R3, #0xF; int
338F26:  STRD.W          R6, R6, [SP,#0xE8+var_E0]; int
338F2A:  STRD.W          R6, R6, [SP,#0xE8+var_D8]; int
338F2E:  BLX             j__ZN15CTaskComplexDieC2E11eWeaponType12AssocGroupId11AnimationIdffbbib; CTaskComplexDie::CTaskComplexDie(eWeaponType,AssocGroupId,AnimationId,float,float,bool,bool,int,bool)
338F32:  ADD.W           R8, SP, #0xE8+var_B0
338F36:  MOVS            R1, #3; int
338F38:  MOV             R2, R4; CTask *
338F3A:  MOVS            R3, #0; bool
338F3C:  MOV             R0, R8; this
338F3E:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
338F42:  LDR.W           R0, [R5,#0x440]
338F46:  MOV             R1, R8; CEvent *
338F48:  MOVS            R2, #0; bool
338F4A:  ADDS            R0, #0x68 ; 'h'; this
338F4C:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
338F50:  MOV             R0, R8; this
338F52:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
338F56:  B               loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
338F58:  BIC.W           R1, R1, #0x100
338F5C:  STRH            R1, [R0,#0x30]
338F5E:  LDR             R0, [R0,#0x38]
338F60:  CMP             R0, #0
338F62:  BEQ             loc_338EB0
338F64:  LDRH            R1, [R0,#0x30]
338F66:  BIC.W           R1, R1, #0x100
338F6A:  STRH            R1, [R0,#0x30]
338F6C:  B               loc_338EB0
338F6E:  LDR             R0, =(_ZN11CTheScripts15SwitchJumpTableE_ptr - 0x338F74)
338F70:  ADD             R0, PC; _ZN11CTheScripts15SwitchJumpTableE_ptr
338F72:  LDR             R0, [R0]; CTheScripts::SwitchJumpTable ...
338F74:  ADD.W           R0, R0, R2,LSL#3
338F78:  ADDS            R1, R0, #4
338F7A:  LDR             R0, =(_ZN11CTheScripts29ValueToCheckInSwitchStatementE_ptr - 0x338F84)
338F7C:  LDR             R2, =(_ZN11CTheScripts20SwitchDefaultAddressE_ptr - 0x338F88)
338F7E:  LDR             R3, =(_ZN11CTheScripts28NumberOfEntriesInSwitchTableE_ptr - 0x338F8C)
338F80:  ADD             R0, PC; _ZN11CTheScripts29ValueToCheckInSwitchStatementE_ptr
338F82:  LDR             R6, =(_ZN11CTheScripts35NumberOfEntriesStillToReadForSwitchE_ptr - 0x338F8E)
338F84:  ADD             R2, PC; _ZN11CTheScripts20SwitchDefaultAddressE_ptr
338F86:  LDR             R5, =(_ZN11CTheScripts19SwitchDefaultExistsE_ptr - 0x338F92)
338F88:  ADD             R3, PC; _ZN11CTheScripts28NumberOfEntriesInSwitchTableE_ptr
338F8A:  ADD             R6, PC; _ZN11CTheScripts35NumberOfEntriesStillToReadForSwitchE_ptr
338F8C:  LDR             R0, [R0]; CTheScripts::ValueToCheckInSwitchStatement ...
338F8E:  ADD             R5, PC; _ZN11CTheScripts19SwitchDefaultExistsE_ptr
338F90:  LDR             R1, [R1]; int
338F92:  LDR             R4, [R6]; CTheScripts::NumberOfEntriesStillToReadForSwitch ...
338F94:  MOVS            R6, #0
338F96:  LDR             R2, [R2]; CTheScripts::SwitchDefaultAddress ...
338F98:  LDR             R3, [R3]; CTheScripts::NumberOfEntriesInSwitchTable ...
338F9A:  LDR             R5, [R5]; CTheScripts::SwitchDefaultExists ...
338F9C:  STR             R6, [R0]; CTheScripts::ValueToCheckInSwitchStatement
338F9E:  MOV             R0, R8; this
338FA0:  STRH            R6, [R4]; CTheScripts::NumberOfEntriesStillToReadForSwitch
338FA2:  STRB            R6, [R5]; CTheScripts::SwitchDefaultExists
338FA4:  STR             R6, [R2]; CTheScripts::SwitchDefaultAddress
338FA6:  STRH            R6, [R3]; CTheScripts::NumberOfEntriesInSwitchTable
338FA8:  BLX             j__ZN14CRunningScript8UpdatePCEi; CRunningScript::UpdatePC(int)
338FAC:  B               loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
338FAE:  LDR             R1, =(ScriptParams_ptr - 0x338FB8)
338FB0:  MOV.W           R0, #0xFFFFFFFF
338FB4:  ADD             R1, PC; ScriptParams_ptr
338FB6:  B               loc_338EA4
338FB8:  MOV.W           R0, #0xFFFFFFFF
338FBC:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x338FC8)
338FBE:  MOV.W           R2, #0x2D4
338FC2:  MOVS            R6, #0
338FC4:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
338FC6:  LDR             R1, [R1]; CPedGroups::ms_groups ...
338FC8:  MLA.W           R1, R4, R2, R1
338FCC:  STR.W           R0, [R1,#0x2CC]
338FD0:  B               loc_338EB2; jumptable 0033777E cases 2104,2107,2120-2124,2127,2135,2140,2141,2143,2146,2147,2154,2157-2160,2167,2176,2178,2181,2182,2191,2193,2194,2196-2198
