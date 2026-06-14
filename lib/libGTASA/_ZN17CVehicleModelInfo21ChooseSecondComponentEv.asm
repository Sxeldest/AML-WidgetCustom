; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo21ChooseSecondComponentEv
; Address            : 0x387C2C - 0x387D2E
; =========================================================

387C2C:  PUSH            {R4,R5,R7,LR}
387C2E:  ADD             R7, SP, #8
387C30:  VPUSH           {D8}
387C34:  SUB             SP, SP, #0x18
387C36:  MOV             R4, R0
387C38:  LDR             R0, =(_ZN17CVehicleModelInfo13ms_compsToUseE_ptr - 0x387C3E)
387C3A:  ADD             R0, PC; _ZN17CVehicleModelInfo13ms_compsToUseE_ptr
387C3C:  LDR             R0, [R0]; CVehicleModelInfo::ms_compsToUse ...
387C3E:  LDRSB.W         R0, [R0,#(_ZN17CVehicleModelInfo13ms_compsToUseE+1 - 0x6869A0)]; CVehicleModelInfo::ms_compsToUse
387C42:  ADDS            R1, R0, #2
387C44:  BNE             loc_387C80
387C46:  LDR             R1, [R4,#0x6C]
387C48:  MOVS            R0, #0
387C4A:  CMP.W           R0, R1,LSR#28
387C4E:  BEQ             loc_387C8C
387C50:  LSRS            R0, R1, #0x1C; int
387C52:  CMP             R0, #2
387C54:  BNE             loc_387C76
387C56:  LDR             R2, =(_ZN8CWeather14OldWeatherTypeE_ptr - 0x387C5C)
387C58:  ADD             R2, PC; _ZN8CWeather14OldWeatherTypeE_ptr
387C5A:  LDR             R2, [R2]; CWeather::OldWeatherType ...
387C5C:  LDRH            R2, [R2]; CWeather::OldWeatherType
387C5E:  CMP             R2, #8
387C60:  IT NE
387C62:  CMPNE           R2, #0x10
387C64:  BEQ             loc_387C76
387C66:  LDR             R2, =(_ZN8CWeather14NewWeatherTypeE_ptr - 0x387C6C)
387C68:  ADD             R2, PC; _ZN8CWeather14NewWeatherTypeE_ptr
387C6A:  LDR             R2, [R2]; CWeather::NewWeatherType ...
387C6C:  LDRH            R2, [R2]; CWeather::NewWeatherType
387C6E:  CMP             R2, #0x10
387C70:  IT NE
387C72:  CMPNE           R2, #8
387C74:  BNE             loc_387C8C
387C76:  UBFX.W          R1, R1, #0x10, #0xC; int
387C7A:  BLX             j__Z15ChooseComponentii; ChooseComponent(int,int)
387C7E:  B               loc_387D26
387C80:  LDR             R1, =(_ZN17CVehicleModelInfo13ms_compsToUseE_ptr - 0x387C88)
387C82:  MOVS            R2, #0xFE
387C84:  ADD             R1, PC; _ZN17CVehicleModelInfo13ms_compsToUseE_ptr
387C86:  LDR             R1, [R1]; CVehicleModelInfo::ms_compsToUse ...
387C88:  STRB            R2, [R1,#(_ZN17CVehicleModelInfo13ms_compsToUseE+1 - 0x6869A0)]; CVehicleModelInfo::ms_compsToUse
387C8A:  B               loc_387D26
387C8C:  UBFX.W          R0, R1, #0xC, #4
387C90:  CMP             R0, #0
387C92:  BEQ             loc_387D22
387C94:  CMP             R0, #2
387C96:  BNE             loc_387CB8
387C98:  LDR             R0, =(_ZN8CWeather14OldWeatherTypeE_ptr - 0x387C9E)
387C9A:  ADD             R0, PC; _ZN8CWeather14OldWeatherTypeE_ptr
387C9C:  LDR             R0, [R0]; CWeather::OldWeatherType ...
387C9E:  LDRH            R0, [R0]; CWeather::OldWeatherType
387CA0:  CMP             R0, #8
387CA2:  IT NE
387CA4:  CMPNE           R0, #0x10
387CA6:  BEQ             loc_387CB8
387CA8:  LDR             R0, =(_ZN8CWeather14NewWeatherTypeE_ptr - 0x387CAE)
387CAA:  ADD             R0, PC; _ZN8CWeather14NewWeatherTypeE_ptr
387CAC:  LDR             R0, [R0]; CWeather::NewWeatherType ...
387CAE:  LDRH            R0, [R0]; CWeather::NewWeatherType
387CB0:  CMP             R0, #0x10
387CB2:  IT NE
387CB4:  CMPNE           R0, #8
387CB6:  BNE             loc_387D22
387CB8:  BLX             rand
387CBC:  UXTH            R0, R0
387CBE:  VLDR            S16, =0.000015259
387CC2:  VMOV            S0, R0
387CC6:  VMOV.F32        S2, #3.0
387CCA:  VCVT.F32.S32    S0, S0
387CCE:  VMUL.F32        S0, S0, S16
387CD2:  VMUL.F32        S0, S0, S2
387CD6:  VCVT.S32.F32    S0, S0
387CDA:  VMOV            R0, S0
387CDE:  CMP             R0, #1
387CE0:  BGT             loc_387D22
387CE2:  LDR             R1, [R4,#0x74]
387CE4:  LDR             R0, [R4,#0x6C]; unsigned int
387CE6:  MOV             R4, SP
387CE8:  MOV             R2, R4; int *
387CEA:  LDRSB.W         R1, [R1,#0x324]; int
387CEE:  BLX             j__Z33GetListOfComponentsNotUsedByRulesjiPi; GetListOfComponentsNotUsedByRules(uint,int,int *)
387CF2:  MOV             R5, R0
387CF4:  CBZ             R5, loc_387D22
387CF6:  BLX             rand
387CFA:  UXTH            R0, R0
387CFC:  VMOV            S2, R5
387D00:  VMOV            S0, R0
387D04:  VCVT.F32.S32    S0, S0
387D08:  VCVT.F32.S32    S2, S2
387D0C:  VMUL.F32        S0, S0, S16
387D10:  VMUL.F32        S0, S0, S2
387D14:  VCVT.S32.F32    S0, S0
387D18:  VMOV            R0, S0
387D1C:  LDR.W           R0, [R4,R0,LSL#2]
387D20:  B               loc_387D26
387D22:  MOV.W           R0, #0xFFFFFFFF
387D26:  ADD             SP, SP, #0x18
387D28:  VPOP            {D8}
387D2C:  POP             {R4,R5,R7,PC}
