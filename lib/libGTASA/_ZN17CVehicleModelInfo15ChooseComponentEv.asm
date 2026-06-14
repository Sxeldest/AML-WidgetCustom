; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo15ChooseComponentEv
; Address            : 0x387B40 - 0x387C18
; =========================================================

387B40:  PUSH            {R4,R5,R7,LR}
387B42:  ADD             R7, SP, #8
387B44:  VPUSH           {D8}
387B48:  SUB             SP, SP, #0x18
387B4A:  MOV             R4, R0
387B4C:  LDR             R0, =(_ZN17CVehicleModelInfo13ms_compsToUseE_ptr - 0x387B52)
387B4E:  ADD             R0, PC; _ZN17CVehicleModelInfo13ms_compsToUseE_ptr
387B50:  LDR             R0, [R0]; CVehicleModelInfo::ms_compsToUse ...
387B52:  LDRSB.W         R0, [R0]; CVehicleModelInfo::ms_compsToUse
387B56:  ADDS            R1, R0, #2
387B58:  BNE             loc_387B96
387B5A:  LDR             R1, [R4,#0x6C]
387B5C:  UBFX.W          R0, R1, #0xC, #4
387B60:  CBZ             R0, loc_387BA2
387B62:  CMP             R0, #2
387B64:  BNE             loc_387B86
387B66:  LDR             R0, =(_ZN8CWeather14OldWeatherTypeE_ptr - 0x387B6C)
387B68:  ADD             R0, PC; _ZN8CWeather14OldWeatherTypeE_ptr
387B6A:  LDR             R0, [R0]; CWeather::OldWeatherType ...
387B6C:  LDRH            R0, [R0]; CWeather::OldWeatherType
387B6E:  CMP             R0, #8
387B70:  IT NE
387B72:  CMPNE           R0, #0x10
387B74:  BEQ             loc_387B86
387B76:  LDR             R0, =(_ZN8CWeather14NewWeatherTypeE_ptr - 0x387B7C)
387B78:  ADD             R0, PC; _ZN8CWeather14NewWeatherTypeE_ptr
387B7A:  LDR             R0, [R0]; CWeather::NewWeatherType ...
387B7C:  LDRH            R0, [R0]; CWeather::NewWeatherType
387B7E:  CMP             R0, #0x10
387B80:  IT NE
387B82:  CMPNE           R0, #8
387B84:  BNE             loc_387BA2
387B86:  LSRS            R0, R1, #0xC
387B88:  BFC.W           R1, #0xC, #0x14; int
387B8C:  AND.W           R0, R0, #0xF; int
387B90:  BLX             j__Z15ChooseComponentii; ChooseComponent(int,int)
387B94:  B               loc_387C10
387B96:  LDR             R1, =(_ZN17CVehicleModelInfo13ms_compsToUseE_ptr - 0x387B9E)
387B98:  MOVS            R2, #0xFE
387B9A:  ADD             R1, PC; _ZN17CVehicleModelInfo13ms_compsToUseE_ptr
387B9C:  LDR             R1, [R1]; CVehicleModelInfo::ms_compsToUse ...
387B9E:  STRB            R2, [R1]; CVehicleModelInfo::ms_compsToUse
387BA0:  B               loc_387C10
387BA2:  BLX             rand
387BA6:  UXTH            R0, R0
387BA8:  VLDR            S16, =0.000015259
387BAC:  VMOV            S0, R0
387BB0:  VMOV.F32        S2, #3.0
387BB4:  VCVT.F32.S32    S0, S0
387BB8:  VMUL.F32        S0, S0, S16
387BBC:  VMUL.F32        S0, S0, S2
387BC0:  VCVT.S32.F32    S0, S0
387BC4:  VMOV            R0, S0
387BC8:  CMP             R0, #1
387BCA:  BGT             loc_387C0C
387BCC:  LDR             R1, [R4,#0x74]
387BCE:  LDR             R0, [R4,#0x6C]; unsigned int
387BD0:  MOV             R4, SP
387BD2:  MOV             R2, R4; int *
387BD4:  LDRSB.W         R1, [R1,#0x324]; int
387BD8:  BLX             j__Z33GetListOfComponentsNotUsedByRulesjiPi; GetListOfComponentsNotUsedByRules(uint,int,int *)
387BDC:  MOV             R5, R0
387BDE:  CBZ             R5, loc_387C0C
387BE0:  BLX             rand
387BE4:  UXTH            R0, R0
387BE6:  VMOV            S2, R5
387BEA:  VMOV            S0, R0
387BEE:  VCVT.F32.S32    S0, S0
387BF2:  VCVT.F32.S32    S2, S2
387BF6:  VMUL.F32        S0, S0, S16
387BFA:  VMUL.F32        S0, S0, S2
387BFE:  VCVT.S32.F32    S0, S0
387C02:  VMOV            R0, S0
387C06:  LDR.W           R0, [R4,R0,LSL#2]
387C0A:  B               loc_387C10
387C0C:  MOV.W           R0, #0xFFFFFFFF
387C10:  ADD             SP, SP, #0x18
387C12:  VPOP            {D8}
387C16:  POP             {R4,R5,R7,PC}
