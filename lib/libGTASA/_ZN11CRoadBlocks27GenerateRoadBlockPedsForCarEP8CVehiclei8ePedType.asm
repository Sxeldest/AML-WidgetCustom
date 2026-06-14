; =========================================================
; Game Engine Function: _ZN11CRoadBlocks27GenerateRoadBlockPedsForCarEP8CVehiclei8ePedType
; Address            : 0x326750 - 0x326DD4
; =========================================================

326750:  PUSH            {R4-R7,LR}
326752:  ADD             R7, SP, #0xC
326754:  PUSH.W          {R8-R11}
326758:  SUB             SP, SP, #4
32675A:  VPUSH           {D8-D15}
32675E:  SUB             SP, SP, #0x150; float
326760:  STR             R0, [SP,#0x1B0+var_178]
326762:  ADR.W           R0, dword_326DE0
326766:  VLD1.64         {D16-D17}, [R0@128]
32676A:  ADR.W           R0, dword_326DF0
32676E:  ADD.W           R8, SP, #0x1B0+var_F0
326772:  MOV             R9, R1
326774:  VLD1.64         {D18-D19}, [R0@128]
326778:  ADR.W           R0, dword_326E00
32677C:  MOV             R1, R8
32677E:  ADD             R6, SP, #0x1B0+var_138
326780:  VLD1.64         {D20-D21}, [R0@128]
326784:  ADR.W           R0, dword_326E10
326788:  MOV             R5, R2
32678A:  VLD1.64         {D22-D23}, [R0@128]
32678E:  ADR.W           R0, dword_326E20
326792:  VLD1.64         {D24-D25}, [R0@128]
326796:  ADR.W           R0, dword_326E30
32679A:  VLD1.64         {D26-D27}, [R0@128]
32679E:  ADR.W           R0, dword_326E40
3267A2:  VLD1.64         {D28-D29}, [R0@128]
3267A6:  MOVS            R0, #0
3267A8:  STRD.W          R0, R0, [SP,#0x1B0+var_68]
3267AC:  VST1.32         {D16-D17}, [R1]!
3267B0:  VST1.32         {D18-D19}, [R1]
3267B4:  ADD.W           R1, R8, #0x20 ; ' '
3267B8:  VST1.32         {D20-D21}, [R1]
3267BC:  ADD.W           R1, R8, #0x30 ; '0'
3267C0:  VST1.32         {D22-D23}, [R1]
3267C4:  MOV             R1, R6
3267C6:  STRD.W          R0, R0, [SP,#0x1B0+var_B0]
3267CA:  VST1.32         {D24-D25}, [R1]!
3267CE:  VST1.32         {D26-D27}, [R1]
3267D2:  ADD.W           R1, R6, #0x20 ; ' '
3267D6:  VST1.32         {D28-D29}, [R1]
3267DA:  ADD.W           R1, R6, #0x30 ; '0'
3267DE:  VST1.32         {D22-D23}, [R1]
3267E2:  MOVS            R1, #0; bool
3267E4:  STRD.W          R0, R0, [SP,#0x1B0+var_F8]
3267E8:  MOV.W           R0, #0xFFFFFFFF; int
3267EC:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3267F0:  CMP             R0, #0
3267F2:  ITTT NE
3267F4:  MOVNE.W         R0, #0xFFFFFFFF; int
3267F8:  MOVNE           R1, #0; bool
3267FA:  BLXNE           j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3267FE:  CMP             R5, #6
326800:  BNE             loc_32682E
326802:  LDR             R0, [SP,#0x1B0+var_178]
326804:  LDRSH.W         R0, [R0,#0x26]
326808:  CMP.W           R0, #0x1EA
32680C:  BGE             loc_326866
32680E:  MOVW            R1, #0x1AB
326812:  CMP             R0, R1
326814:  BEQ             loc_32688A
326816:  MOVW            R1, #0x1B1
32681A:  CMP             R0, R1
32681C:  BNE             loc_3268A6
32681E:  MOVS            R0, #1
326820:  STR             R0, [SP,#0x1B0+var_17C]
326822:  MOVS            R0, #5
326824:  STR             R0, [SP,#0x1B0+var_188]
326826:  MOVW            R0, #0x11F
32682A:  STR             R0, [SP,#0x1B0+var_190]
32682C:  B               loc_3269B4
32682E:  SUBS            R0, R5, #7
326830:  CMP             R0, #9
326832:  BHI             loc_326884
326834:  LDR.W           R0, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x32683C)
326838:  ADD             R0, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
32683A:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo ...
32683C:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo
32683E:  LDRB            R1, [R0]; __int16
326840:  CBZ             R1, loc_3268B4
326842:  MOVS            R0, #0
326844:  STR             R0, [SP,#0x1B0+var_17C]
326846:  MOVS            R0, #0; this
326848:  BLX             j__ZN6CGangs18ChooseGangPedModelEs; CGangs::ChooseGangPedModel(short)
32684C:  MOV             R1, R0
32684E:  ADDS            R0, #1
326850:  STR             R1, [SP,#0x1B0+var_190]
326852:  BNE.W           loc_3269B2
326856:  LDR.W           R0, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x326862)
32685A:  MOV.W           R1, #0xFFFFFFFF
32685E:  ADD             R0, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
326860:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo ...
326862:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo
326864:  B               loc_3268B6
326866:  MOVW            R1, #0x257
32686A:  CMP             R0, R1
32686C:  BEQ             loc_32689A
32686E:  CMP.W           R0, #0x1EA
326872:  BNE             loc_3268A6
326874:  MOVS            R0, #1
326876:  STR             R0, [SP,#0x1B0+var_17C]
326878:  MOVS            R0, #4
32687A:  STR             R0, [SP,#0x1B0+var_188]
32687C:  MOV.W           R0, #0x11E
326880:  STR             R0, [SP,#0x1B0+var_190]
326882:  B               loc_3269B4
326884:  MOVS            R0, #0
326886:  STR             R0, [SP,#0x1B0+var_190]
326888:  B               loc_3268AC
32688A:  MOVS            R0, #1
32688C:  STR             R0, [SP,#0x1B0+var_17C]
32688E:  MOVS            R0, #2
326890:  STR             R0, [SP,#0x1B0+var_188]
326892:  MOVW            R0, #0x11D
326896:  STR             R0, [SP,#0x1B0+var_190]
326898:  B               loc_3269B4
32689A:  MOVS            R0, #1
32689C:  STR             R0, [SP,#0x1B0+var_17C]
32689E:  MOVS            R0, #0
3268A0:  STR             R0, [SP,#0x1B0+var_190]
3268A2:  MOVS            R0, #0
3268A4:  B               loc_3269B2
3268A6:  MOVS            R0, #0
3268A8:  STR             R0, [SP,#0x1B0+var_190]
3268AA:  MOVS            R0, #0
3268AC:  STR             R0, [SP,#0x1B0+var_188]
3268AE:  MOVS            R0, #0
3268B0:  STR             R0, [SP,#0x1B0+var_17C]
3268B2:  B               loc_3269B4
3268B4:  MOVS            R1, #0; __int16
3268B6:  LDRB            R2, [R0,#1]
3268B8:  CBZ             R2, loc_3268D6
3268BA:  MOVS            R0, #(stderr+1); this
3268BC:  BLX             j__ZN6CGangs18ChooseGangPedModelEs; CGangs::ChooseGangPedModel(short)
3268C0:  MOV             R1, R0
3268C2:  ADDS            R0, #1
3268C4:  STR             R1, [SP,#0x1B0+var_190]
3268C6:  BNE             loc_3269AE
3268C8:  LDR.W           R0, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x3268D4)
3268CC:  MOV.W           R1, #0xFFFFFFFF; __int16
3268D0:  ADD             R0, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
3268D2:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo ...
3268D4:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo
3268D6:  LDRB            R2, [R0,#2]
3268D8:  CBZ             R2, loc_3268F6
3268DA:  MOVS            R0, #(stderr+2); this
3268DC:  BLX             j__ZN6CGangs18ChooseGangPedModelEs; CGangs::ChooseGangPedModel(short)
3268E0:  MOV             R1, R0
3268E2:  ADDS            R0, #1
3268E4:  STR             R1, [SP,#0x1B0+var_190]
3268E6:  BNE             loc_3269AE
3268E8:  LDR.W           R0, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x3268F4)
3268EC:  MOV.W           R1, #0xFFFFFFFF; __int16
3268F0:  ADD             R0, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
3268F2:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo ...
3268F4:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo
3268F6:  LDRB            R2, [R0,#3]
3268F8:  CBZ             R2, loc_326916
3268FA:  MOVS            R0, #(stderr+3); this
3268FC:  BLX             j__ZN6CGangs18ChooseGangPedModelEs; CGangs::ChooseGangPedModel(short)
326900:  MOV             R1, R0
326902:  ADDS            R0, #1
326904:  STR             R1, [SP,#0x1B0+var_190]
326906:  BNE             loc_3269AE
326908:  LDR.W           R0, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x326914)
32690C:  MOV.W           R1, #0xFFFFFFFF; __int16
326910:  ADD             R0, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
326912:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo ...
326914:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo
326916:  LDRB            R2, [R0,#4]
326918:  CBZ             R2, loc_326936
32691A:  MOVS            R0, #byte_4; this
32691C:  BLX             j__ZN6CGangs18ChooseGangPedModelEs; CGangs::ChooseGangPedModel(short)
326920:  MOV             R1, R0
326922:  ADDS            R0, #1
326924:  STR             R1, [SP,#0x1B0+var_190]
326926:  BNE             loc_3269AE
326928:  LDR.W           R0, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x326934)
32692C:  MOV.W           R1, #0xFFFFFFFF; __int16
326930:  ADD             R0, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
326932:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo ...
326934:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo
326936:  LDRB            R2, [R0,#5]
326938:  CBZ             R2, loc_326956
32693A:  MOVS            R0, #byte_5; this
32693C:  BLX             j__ZN6CGangs18ChooseGangPedModelEs; CGangs::ChooseGangPedModel(short)
326940:  MOV             R1, R0
326942:  ADDS            R0, #1
326944:  STR             R1, [SP,#0x1B0+var_190]
326946:  BNE             loc_3269AE
326948:  LDR.W           R0, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x326954)
32694C:  MOV.W           R1, #0xFFFFFFFF; __int16
326950:  ADD             R0, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
326952:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo ...
326954:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo
326956:  LDRB            R2, [R0,#6]
326958:  CBZ             R2, loc_326976
32695A:  MOVS            R0, #byte_6; this
32695C:  BLX             j__ZN6CGangs18ChooseGangPedModelEs; CGangs::ChooseGangPedModel(short)
326960:  MOV             R1, R0
326962:  ADDS            R0, #1
326964:  STR             R1, [SP,#0x1B0+var_190]
326966:  BNE             loc_3269AE
326968:  LDR.W           R0, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x326974)
32696C:  MOV.W           R1, #0xFFFFFFFF; __int16
326970:  ADD             R0, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
326972:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo ...
326974:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo
326976:  LDRB            R2, [R0,#7]
326978:  CBZ             R2, loc_326996
32697A:  MOVS            R0, #byte_7; this
32697C:  BLX             j__ZN6CGangs18ChooseGangPedModelEs; CGangs::ChooseGangPedModel(short)
326980:  MOV             R1, R0
326982:  ADDS            R0, #1
326984:  STR             R1, [SP,#0x1B0+var_190]
326986:  BNE             loc_3269AE
326988:  LDR.W           R0, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x326994)
32698C:  MOV.W           R1, #0xFFFFFFFF; __int16
326990:  ADD             R0, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
326992:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo ...
326994:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo
326996:  LDRB            R2, [R0,#8]
326998:  CMP             R2, #0
32699A:  BEQ.W           loc_326DA8
32699E:  MOVS            R0, #byte_8; this
3269A0:  BLX             j__ZN6CGangs18ChooseGangPedModelEs; CGangs::ChooseGangPedModel(short)
3269A4:  MOV             R1, R0
3269A6:  ADDS            R0, #1
3269A8:  STR             R1, [SP,#0x1B0+var_190]
3269AA:  BEQ.W           loc_326D9C
3269AE:  MOVS            R0, #0
3269B0:  STR             R0, [SP,#0x1B0+var_17C]
3269B2:  STR             R0, [SP,#0x1B0+var_188]
3269B4:  LDR             R4, [SP,#0x1B0+var_178]
3269B6:  MOV             R0, R4; this
3269B8:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
3269BC:  VLDR            S16, [R0,#0x24]
3269C0:  MOVS            R0, #0; this
3269C2:  BLX             j__ZN10CStreaming21GetDefaultCopCarModelEj; CStreaming::GetDefaultCopCarModel(uint)
3269C6:  LDRB.W          R1, [R4,#0x4B8]
3269CA:  MOVS            R4, #1
3269CC:  CMP             R1, #0
3269CE:  BEQ.W           loc_326D7C
3269D2:  LDR.W           R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3269E6)
3269D6:  CMP.W           R9, #2
3269DA:  VMOV.F32        S22, #8.0
3269DE:  VLDR            S20, =0.000015259
3269E2:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3269E4:  VMOV.I32        Q6, #0
3269E8:  VLDR            S28, =100.0
3269EC:  MOV.W           R10, #0
3269F0:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
3269F2:  LDR.W           R0, [R1,R0,LSL#2]
3269F6:  MOV.W           R1, #0
3269FA:  LDR             R0, [R0,#0x2C]
3269FC:  VLDR            S0, [R0,#0x24]
326A00:  IT NE
326A02:  MOVNE           R1, #1
326A04:  LDR.W           R0, =(_ZN6CGangs4GangE_ptr - 0x326A12)
326A08:  LDR             R2, [SP,#0x1B0+var_17C]
326A0A:  VDIV.F32        S16, S16, S0
326A0E:  ADD             R0, PC; _ZN6CGangs4GangE_ptr
326A10:  EOR.W           R2, R2, #1
326A14:  ORRS            R1, R2
326A16:  LDR             R0, [R0]; CGangs::Gang ...
326A18:  STR             R1, [SP,#0x1B0+var_180]
326A1A:  ADD.W           R1, R9, R9,LSL#1
326A1E:  ADD.W           R0, R0, R5,LSL#4
326A22:  LDR.W           R9, [SP,#0x1B0+var_178]
326A26:  ADD.W           R2, R8, R1,LSL#3
326A2A:  ADD.W           R1, R6, R1,LSL#3
326A2E:  ADD.W           R11, R1, #4
326A32:  SUB.W           R1, R0, #0x6C ; 'l'
326A36:  STR             R1, [SP,#0x1B0+var_18C]
326A38:  SUB.W           R1, R0, #0x68 ; 'h'
326A3C:  STR             R1, [SP,#0x1B0+var_19C]
326A3E:  SUBS            R0, #0x64 ; 'd'
326A40:  LDR.W           R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x326A50)
326A44:  ADDS            R2, #8
326A46:  STR             R0, [SP,#0x1B0+var_194]
326A48:  ADD             R6, SP, #0x1B0+var_170
326A4A:  LDR             R0, [SP,#0x1B0+var_190]
326A4C:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
326A4E:  LDR             R1, [R1]; CStreaming::ms_aInfoForModel ...
326A50:  ADD.W           R0, R0, R0,LSL#2
326A54:  ADD.W           R0, R1, R0,LSL#2
326A58:  ADDS            R0, #0x10
326A5A:  STR             R0, [SP,#0x1B0+var_1A0]
326A5C:  LDR.W           R0, =(_ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr - 0x326A64)
326A60:  ADD             R0, PC; _ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr
326A62:  LDR             R0, [R0]; CTaskComplexWander::ms_fTargetRadius ...
326A64:  VLDR            S18, [R0]
326A68:  LDR.W           R0, =(_ZTV21CTaskComplexWanderCop_ptr - 0x326A70)
326A6C:  ADD             R0, PC; _ZTV21CTaskComplexWanderCop_ptr
326A6E:  LDR             R0, [R0]; `vtable for'CTaskComplexWanderCop ...
326A70:  ADDS            R0, #8
326A72:  STR             R0, [SP,#0x1B0+var_198]
326A74:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x326A7C)
326A78:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
326A7A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
326A7C:  STR             R0, [SP,#0x1B0+var_184]
326A7E:  LDR             R0, [SP,#0x1B0+var_17C]
326A80:  STR             R2, [SP,#0x1B0+var_174]
326A82:  CMP             R0, #1
326A84:  BNE             loc_326A98
326A86:  LDR.W           R1, [R9,#0x14]
326A8A:  VLDR            S0, [R11,#-4]
326A8E:  VLDR            S2, [R11]
326A92:  VLDR            S4, [R11,#4]
326A96:  B               loc_326AA8
326A98:  LDR.W           R1, [R9,#0x14]
326A9C:  VLDR            S0, [R2,#-8]
326AA0:  VLDR            S2, [R2,#-4]
326AA4:  VLDR            S4, [R2]
326AA8:  VMUL.F32        S2, S16, S2
326AAC:  ADD             R2, SP, #0x1B0+var_154
326AAE:  VMUL.F32        S0, S16, S0
326AB2:  MOV             R0, R6
326AB4:  VMUL.F32        S4, S16, S4
326AB8:  VSTR            S2, [SP,#0x1B0+var_150]
326ABC:  VSTR            S0, [SP,#0x1B0+var_154]
326AC0:  VSTR            S4, [SP,#0x1B0+var_14C]
326AC4:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
326AC8:  VLDR            D16, [SP,#0x1B0+var_170]
326ACC:  CMP             R5, #6
326ACE:  LDR             R0, [SP,#0x1B0+var_168]
326AD0:  STR             R0, [SP,#0x1B0+var_140]
326AD2:  VSTR            D16, [SP,#0x1B0+var_148]
326AD6:  BNE             loc_326AFC
326AD8:  LDR             R0, [SP,#0x1B0+var_188]
326ADA:  CMP             R0, #0
326ADC:  ITTT NE
326ADE:  LDRNE           R0, [SP,#0x1B0+var_1A0]
326AE0:  LDRBNE          R0, [R0]
326AE2:  CMPNE           R0, #1
326AE4:  BNE             loc_326B10
326AE6:  MOVW            R0, #(elf_hash_bucket+0x6D0); this
326AEA:  BLX             j__ZN4CPednwEj; CPed::operator new(uint)
326AEE:  LDR             R4, [SP,#0x1B0+var_188]
326AF0:  MOV             R8, R0
326AF2:  MOV             R1, R4
326AF4:  BLX             j__ZN7CCopPedC2E8eCopType; CCopPed::CCopPed(eCopType)
326AF8:  CBNZ            R4, loc_326B28
326AFA:  B               loc_326B20
326AFC:  MOVW            R0, #(elf_hash_bucket+0x6A8); this
326B00:  BLX             j__ZN4CPednwEj; CPed::operator new(uint)
326B04:  LDR             R2, [SP,#0x1B0+var_190]
326B06:  MOV             R1, R5
326B08:  MOV             R8, R0
326B0A:  BLX             j__ZN12CCivilianPedC2E8ePedTypej; CCivilianPed::CCivilianPed(ePedType,uint)
326B0E:  B               loc_326B20
326B10:  MOVW            R0, #(elf_hash_bucket+0x6D0); this
326B14:  BLX             j__ZN4CPednwEj; CPed::operator new(uint)
326B18:  MOVS            R1, #0
326B1A:  MOV             R8, R0
326B1C:  BLX             j__ZN7CCopPedC2E8eCopType; CCopPed::CCopPed(eCopType)
326B20:  MOV             R0, R8
326B22:  MOVS            R1, #0x16
326B24:  BLX             j__ZN4CPed16SetCurrentWeaponE11eWeaponType; CPed::SetCurrentWeapon(eWeaponType)
326B28:  ADD             R0, SP, #0x1B0+var_148; this
326B2A:  BLX             j__ZN13CPedPlacement15FindZCoorForPedEP7CVector; CPedPlacement::FindZCoorForPed(CVector *)
326B2E:  LDRD.W          R2, R1, [SP,#0x1B0+var_148]
326B32:  LDR.W           R3, [R8,#0x14]
326B36:  LDR             R0, [SP,#0x1B0+var_140]
326B38:  CMP             R3, #0
326B3A:  BEQ             loc_326B4C
326B3C:  STR             R2, [R3,#0x30]
326B3E:  LDR.W           R2, [R8,#0x14]
326B42:  STR             R1, [R2,#0x34]
326B44:  LDR.W           R1, [R8,#0x14]
326B48:  ADDS            R1, #0x38 ; '8'
326B4A:  B               loc_326B54
326B4C:  STRD.W          R2, R1, [R8,#4]
326B50:  ADD.W           R1, R8, #0xC; unsigned int
326B54:  STR             R0, [R1]
326B56:  LDR.W           R0, [R8,#0x14]; this
326B5A:  CBZ             R0, loc_326BA2
326B5C:  MOVW            R3, #0xFDB
326B60:  MOVS            R1, #0; x
326B62:  MOVS            R2, #0; float
326B64:  MOVT            R3, #0xBFC9; float
326B68:  VLDR            S30, [R0,#0x30]
326B6C:  VLDR            S17, [R0,#0x34]
326B70:  VLDR            S19, [R0,#0x38]
326B74:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
326B78:  LDR.W           R0, [R8,#0x14]
326B7C:  VLDR            S0, [R0,#0x30]
326B80:  VLDR            S2, [R0,#0x34]
326B84:  VLDR            S4, [R0,#0x38]
326B88:  VADD.F32        S0, S30, S0
326B8C:  VADD.F32        S2, S17, S2
326B90:  VADD.F32        S4, S19, S4
326B94:  VSTR            S0, [R0,#0x30]
326B98:  VSTR            S2, [R0,#0x34]
326B9C:  VSTR            S4, [R0,#0x38]
326BA0:  B               loc_326BAE
326BA2:  MOV             R0, #0xBFC90FDB
326BAA:  STR.W           R0, [R8,#0x10]
326BAE:  CMP             R5, #6
326BB0:  MOV             R6, R5
326BB2:  BNE             loc_326C22
326BB4:  MOVS            R0, #1
326BB6:  LDR.W           R5, [R8,#0x440]
326BBA:  STRB.W          R0, [R8,#0x7A4]
326BBE:  MOVS            R0, #dword_50; this
326BC0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
326BC4:  MOV             R4, R0
326BC6:  BLX             rand
326BCA:  UXTH            R0, R0
326BCC:  MOVS            R1, #1; int
326BCE:  VMOV            S0, R0
326BD2:  MOVS            R3, #1; bool
326BD4:  VCVT.F32.S32    S0, S0
326BD8:  VMUL.F32        S0, S0, S20
326BDC:  VMUL.F32        S0, S0, S22
326BE0:  VCVT.S32.F32    S0, S0
326BE4:  VSTR            S18, [SP,#0x1B0+var_1B0]
326BE8:  VMOV            R0, S0
326BEC:  UXTB            R2, R0; unsigned __int8
326BEE:  MOV             R0, R4; this
326BF0:  BLX             j__ZN18CTaskComplexWanderC2Eihbf; CTaskComplexWander::CTaskComplexWander(int,uchar,bool,float)
326BF4:  ADD.W           R0, R4, #0x38 ; '8'
326BF8:  MOVS            R2, #3; int
326BFA:  MOVS            R3, #0; bool
326BFC:  VST1.32         {D12-D13}, [R0]
326C00:  MOVS            R0, #0
326C02:  STR.W           R0, [R4,#0x32]
326C06:  STR.W           R0, [R4,#0x2E]
326C0A:  LDR             R1, [SP,#0x1B0+var_198]
326C0C:  STR             R1, [R4]
326C0E:  MOV             R1, R4; CTask *
326C10:  STRD.W          R0, R0, [R4,#0x28]
326C14:  STR.W           R0, [R4,#0x4A]
326C18:  STR.W           R0, [R4,#0x46]
326C1C:  ADDS            R0, R5, #4; this
326C1E:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
326C22:  MOVS            R0, #dword_20; this
326C24:  LDR.W           R5, [R8,#0x440]
326C28:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
326C2C:  MOV             R4, R0
326C2E:  MOV.W           R0, #0x41000000
326C32:  STR             R0, [SP,#0x1B0+var_1B0]; float
326C34:  MOV             R0, R4; this
326C36:  MOVS            R1, #0; int
326C38:  MOVS            R2, #1; bool
326C3A:  MOVS            R3, #0; bool
326C3C:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
326C40:  ADDS            R0, R5, #4; this
326C42:  MOV             R1, R4; CTask *
326C44:  MOVS            R2, #4; int
326C46:  MOVS            R3, #0; bool
326C48:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
326C4C:  LDR             R1, [SP,#0x1B0+var_184]
326C4E:  MOVW            R2, #0x2710
326C52:  LDR.W           R0, [R8,#0x484]
326C56:  LDR             R1, [R1]
326C58:  STR.W           R9, [R8,#0x590]
326C5C:  ADD             R1, R2
326C5E:  STR.W           R1, [R8,#0x550]
326C62:  LDR             R2, [SP,#0x1B0+var_180]
326C64:  BIC.W           R1, R0, #0x3200000
326C68:  ORR.W           R1, R1, #0x1200000
326C6C:  CMP             R2, #0
326C6E:  IT NE
326C70:  ORRNE.W         R1, R0, #0x3200000
326C74:  MOV             R0, R9; this
326C76:  STR.W           R1, [R8,#0x484]
326C7A:  ADD.W           R1, R8, #0x590; CEntity **
326C7E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
326C82:  LDR.W           R1, [R8,#0x488]
326C86:  LDR.W           R0, [R8,#0x18]
326C8A:  ORR.W           R1, R1, #0x40 ; '@'
326C8E:  STR.W           R1, [R8,#0x488]
326C92:  MOVS            R1, #0
326C94:  BLX             j__ZN18CVisibilityPlugins13SetClumpAlphaEP7RpClumpi; CVisibilityPlugins::SetClumpAlpha(RpClump *,int)
326C98:  CMP             R6, #6
326C9A:  MOV             R5, R6
326C9C:  ADD             R6, SP, #0x1B0+var_170
326C9E:  BEQ             loc_326D12
326CA0:  BLX             rand
326CA4:  UXTH            R0, R0
326CA6:  VMOV            S0, R0
326CAA:  VCVT.F32.S32    S0, S0
326CAE:  LDR             R0, [SP,#0x1B0+var_194]
326CB0:  LDR.W           R9, [R0]
326CB4:  CMP.W           R9, #0
326CB8:  VMUL.F32        S0, S0, S20
326CBC:  VMUL.F32        S0, S0, S28
326CC0:  VCVT.S32.F32    S0, S0
326CC4:  VMOV            R0, S0
326CC8:  BEQ             loc_326CD8
326CCA:  LDR             R1, [SP,#0x1B0+var_18C]
326CCC:  CMP             R0, #0x21 ; '!'
326CCE:  BLT             loc_326CEC
326CD0:  LDR             R1, [SP,#0x1B0+var_19C]
326CD2:  CMP             R0, #0x42 ; 'B'
326CD4:  BLT             loc_326CEC
326CD6:  B               loc_326CF6
326CD8:  LDR             R1, [SP,#0x1B0+var_19C]
326CDA:  LDR.W           R9, [R1]
326CDE:  LDR             R1, [SP,#0x1B0+var_18C]
326CE0:  CMP.W           R9, #0
326CE4:  BEQ             loc_326CEC
326CE6:  LDR             R1, [SP,#0x1B0+var_18C]
326CE8:  CMP             R0, #0x31 ; '1'
326CEA:  BGT             loc_326CF6
326CEC:  LDR.W           R9, [R1]
326CF0:  CMP.W           R9, #0
326CF4:  BEQ             loc_326D12
326CF6:  MOV             R0, R8
326CF8:  MOV             R1, R9
326CFA:  MOVW            R2, #0x61A9
326CFE:  BLX             j__ZN4CPed17GiveDelayedWeaponE11eWeaponTypej; CPed::GiveDelayedWeapon(eWeaponType,uint)
326D02:  MOV             R0, R9
326D04:  MOVS            R1, #1
326D06:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
326D0A:  LDR             R1, [R0,#0x14]; int
326D0C:  MOV             R0, R8; this
326D0E:  BLX             j__ZN4CPed16SetCurrentWeaponEi; CPed::SetCurrentWeapon(int)
326D12:  MOV             R0, R8; this
326D14:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
326D18:  MOVS            R0, #dword_38; this
326D1A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
326D1E:  MOV             R4, R0
326D20:  MOV.W           R0, #0xFFFFFFFF; int
326D24:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
326D28:  MOV             R1, R0; CPed *
326D2A:  MOVS            R2, #0
326D2C:  MOVS            R0, #1
326D2E:  STRD.W          R2, R2, [SP,#0x1B0+var_1B0]; unsigned int
326D32:  STR             R0, [SP,#0x1B0+var_1A8]; int
326D34:  MOV             R0, R4; this
326D36:  MOV.W           R2, #0xFFFFFFFF; int
326D3A:  MOVS            R3, #0; unsigned int
326D3C:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
326D40:  MOV             R0, R6; this
326D42:  MOVS            R1, #3; int
326D44:  MOV             R2, R4; CTask *
326D46:  MOVS            R3, #0; bool
326D48:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
326D4C:  LDR.W           R0, [R8,#0x440]
326D50:  MOV             R1, R6; CEvent *
326D52:  MOVS            R2, #0; bool
326D54:  ADDS            R0, #0x68 ; 'h'; this
326D56:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
326D5A:  MOV             R0, R6; this
326D5C:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
326D60:  LDR.W           R9, [SP,#0x1B0+var_178]
326D64:  ADD.W           R11, R11, #0xC
326D68:  LDR             R2, [SP,#0x1B0+var_174]
326D6A:  ADD.W           R10, R10, #1
326D6E:  LDRB.W          R0, [R9,#0x4B8]
326D72:  ADDS            R2, #0xC
326D74:  CMP             R10, R0
326D76:  BLT.W           loc_326A7E
326D7A:  MOVS            R4, #1
326D7C:  ADD             R0, SP, #0x1B0+var_A8; this
326D7E:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
326D82:  MOV             R0, R4
326D84:  ADD             SP, SP, #0x150
326D86:  VPOP            {D8-D15}
326D8A:  ADD             SP, SP, #4
326D8C:  POP.W           {R8-R11}
326D90:  POP             {R4-R7,PC}
326D92:  ALIGN 4
326D94:  DCFS 0.000015259
326D98:  DCFS 100.0
326D9C:  LDR             R0, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x326DA6)
326D9E:  MOV.W           R1, #0xFFFFFFFF; __int16
326DA2:  ADD             R0, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
326DA4:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo ...
326DA6:  LDR             R0, [R0]; CPopCycle::m_pCurrZoneInfo
326DA8:  LDRB            R0, [R0,#9]
326DAA:  CBZ             R0, loc_326DC4
326DAC:  MOVS            R0, #byte_9; this
326DAE:  BLX             j__ZN6CGangs18ChooseGangPedModelEs; CGangs::ChooseGangPedModel(short)
326DB2:  MOV             R1, R0
326DB4:  ADDS            R0, #1
326DB6:  MOV.W           R0, #0
326DBA:  STR             R1, [SP,#0x1B0+var_190]
326DBC:  STR             R0, [SP,#0x1B0+var_17C]
326DBE:  BNE.W           loc_3269B2
326DC2:  B               loc_326DD0
326DC4:  ADDS            R0, R1, #1
326DC6:  MOV.W           R0, #0
326DCA:  STR             R0, [SP,#0x1B0+var_190]
326DCC:  BNE.W           loc_326888
326DD0:  MOVS            R4, #0
326DD2:  B               loc_326D7C
