; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity19ProcessEngineDamageER14cVehicleParams
; Address            : 0x3B1864 - 0x3B1A2C
; =========================================================

3B1864:  PUSH            {R4-R7,LR}
3B1866:  ADD             R7, SP, #0xC
3B1868:  PUSH.W          {R8-R11}
3B186C:  SUB             SP, SP, #4
3B186E:  VPUSH           {D8}
3B1872:  SUB             SP, SP, #0x10
3B1874:  MOV             R10, R1
3B1876:  MOV             R4, R0
3B1878:  LDR.W           R0, [R10,#0x10]
3B187C:  VLDR            S2, =250.0
3B1880:  ADDW            R0, R0, #0x4CC
3B1884:  VLDR            S0, [R0]
3B1888:  MOVS            R0, #1
3B188A:  VCMPE.F32       S0, S2
3B188E:  VMRS            APSR_nzcv, FPSCR
3B1892:  BLT             loc_3B18BC
3B1894:  VLDR            S2, =390.0
3B1898:  MOV.W           R9, #1
3B189C:  VCMPE.F32       S0, S2
3B18A0:  VMRS            APSR_nzcv, FPSCR
3B18A4:  BLT             loc_3B18D4
3B18A6:  VLDR            S2, =460.0
3B18AA:  MOV.W           R9, #0
3B18AE:  VCMPE.F32       S0, S2
3B18B2:  VMRS            APSR_nzcv, FPSCR
3B18B6:  BGE             loc_3B18C2
3B18B8:  MOVS            R0, #1
3B18BA:  B               loc_3B18D4
3B18BC:  MOV.W           R9, #1
3B18C0:  B               loc_3B18D4
3B18C2:  VLDR            S2, =650.0
3B18C6:  MOVS            R0, #0
3B18C8:  VCMPE.F32       S0, S2
3B18CC:  VMRS            APSR_nzcv, FPSCR
3B18D0:  IT LT
3B18D2:  MOVLT           R0, #1
3B18D4:  LDR             R1, [R4,#4]
3B18D6:  LDR.W           R2, [R10,#0x14]
3B18DA:  LDRB.W          R8, [R4,#0x80]
3B18DE:  LDR.W           R1, [R1,#0x42C]
3B18E2:  CBZ             R2, loc_3B1908
3B18E4:  VLDR            S0, [R2,#0x58]
3B18E8:  VMOV.F32        S16, #1.0
3B18EC:  VLDR            S2, [R10,#0x1C]
3B18F0:  VDIV.F32        S0, S2, S0
3B18F4:  VABS.F32        S0, S0
3B18F8:  VCMPE.F32       S0, S16
3B18FC:  VMRS            APSR_nzcv, FPSCR
3B1900:  IT LE
3B1902:  VMOVLE.F32      S16, S0
3B1906:  B               loc_3B190C
3B1908:  VLDR            S16, =0.0
3B190C:  LDRB.W          R6, [R4,#0xA8]
3B1910:  AND.W           R5, R1, #0x40000000
3B1914:  CBZ             R0, loc_3B1964
3B1916:  CMP             R5, #0
3B1918:  IT EQ
3B191A:  CMPEQ           R6, #0
3B191C:  BNE             loc_3B1964
3B191E:  VMOV.F32        S0, #3.0
3B1922:  VLDR            S2, =0.2
3B1926:  VMOV.F32        S4, #-24.0
3B192A:  VLDR            S6, =0.9
3B192E:  VMUL.F32        S2, S16, S2
3B1932:  MOV.W           R0, #0x3F800000
3B1936:  STR             R0, [SP,#0x38+var_2C]; float
3B1938:  MOVS            R0, #0x1C
3B193A:  STR             R0, [SP,#0x38+var_38]; __int16
3B193C:  MOV             R0, R4; this
3B193E:  MOVS            R1, #9; __int16
3B1940:  MOVS            R2, #5; __int16
3B1942:  MOVS            R3, #0x8F; __int16
3B1944:  VMUL.F32        S0, S16, S0
3B1948:  VADD.F32        S2, S2, S6
3B194C:  VADD.F32        S0, S0, S4
3B1950:  VSTR            S2, [SP,#0x38+var_34]
3B1954:  VSTR            S0, [SP,#0x38+var_30]
3B1958:  BLX             j__ZN21CAEVehicleAudioEntity25UpdateGenericVehicleSoundEssssfff; CAEVehicleAudioEntity::UpdateGenericVehicleSound(short,short,short,short,float,float,float)
3B195C:  ORRS.W          R0, R9, R5
3B1960:  BNE             loc_3B1988
3B1962:  B               loc_3B199A
3B1964:  LDR.W           R0, [R4,#0x130]; this
3B1968:  CBZ             R0, loc_3B1982
3B196A:  MOVS            R1, #4; unsigned __int16
3B196C:  MOVS            R2, #0; unsigned __int16
3B196E:  MOV.W           R11, #0
3B1972:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3B1976:  LDR.W           R0, [R4,#0x130]; this
3B197A:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3B197E:  STR.W           R11, [R4,#0x130]
3B1982:  ORRS.W          R0, R9, R5
3B1986:  BEQ             loc_3B199A
3B1988:  ORRS.W          R0, R6, R8
3B198C:  BNE             loc_3B199A
3B198E:  LDR.W           R0, [R10,#0x10]
3B1992:  LDRB.W          R0, [R0,#0x42C]
3B1996:  LSLS            R0, R0, #0x1B
3B1998:  BMI             loc_3B19B8
3B199A:  LDR.W           R0, [R4,#0x138]; this
3B199E:  CBZ             R0, loc_3B1A1E
3B19A0:  MOVS            R1, #4; unsigned __int16
3B19A2:  MOVS            R2, #0; unsigned __int16
3B19A4:  MOVS            R5, #0
3B19A6:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3B19AA:  LDR.W           R0, [R4,#0x138]; this
3B19AE:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3B19B2:  STR.W           R5, [R4,#0x138]
3B19B6:  B               loc_3B1A1E
3B19B8:  VMOV.F32        S0, #6.0
3B19BC:  VLDR            S2, =0.3
3B19C0:  VMOV.F32        S4, #-24.0
3B19C4:  VLDR            S6, =0.9
3B19C8:  VMUL.F32        S2, S16, S2
3B19CC:  LDR             R0, [R4,#4]
3B19CE:  MOVS            R1, #0xA; __int16
3B19D0:  MOVS            R2, #0x13; __int16
3B19D2:  MOVS            R3, #0x8A; __int16
3B19D4:  LDR.W           R0, [R0,#0x42C]
3B19D8:  VMUL.F32        S0, S16, S0
3B19DC:  ANDS.W          R0, R0, #0x40000000
3B19E0:  MOVW            R0, #0
3B19E4:  VADD.F32        S2, S2, S6
3B19E8:  MOVT            R0, #0x4020
3B19EC:  VMOV.F32        S6, #-6.0
3B19F0:  VADD.F32        S0, S0, S4
3B19F4:  VLDR            S4, =0.7
3B19F8:  VMUL.F32        S4, S2, S4
3B19FC:  VADD.F32        S6, S0, S6
3B1A00:  ITT EQ
3B1A02:  VMOVEQ.F32      S4, S2
3B1A06:  VMOVEQ.F32      S6, S0
3B1A0A:  STR             R0, [SP,#0x38+var_2C]; float
3B1A0C:  MOVS            R0, #2
3B1A0E:  STR             R0, [SP,#0x38+var_38]; __int16
3B1A10:  MOV             R0, R4; this
3B1A12:  VSTR            S4, [SP,#0x38+var_34]
3B1A16:  VSTR            S6, [SP,#0x38+var_30]
3B1A1A:  BLX             j__ZN21CAEVehicleAudioEntity25UpdateGenericVehicleSoundEssssfff; CAEVehicleAudioEntity::UpdateGenericVehicleSound(short,short,short,short,float,float,float)
3B1A1E:  ADD             SP, SP, #0x10
3B1A20:  VPOP            {D8}
3B1A24:  ADD             SP, SP, #4
3B1A26:  POP.W           {R8-R11}
3B1A2A:  POP             {R4-R7,PC}
