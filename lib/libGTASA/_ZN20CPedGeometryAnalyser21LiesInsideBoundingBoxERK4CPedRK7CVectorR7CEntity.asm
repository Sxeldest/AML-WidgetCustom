; =========================================================
; Game Engine Function: _ZN20CPedGeometryAnalyser21LiesInsideBoundingBoxERK4CPedRK7CVectorR7CEntity
; Address            : 0x4B17FC - 0x4B195C
; =========================================================

4B17FC:  PUSH            {R4,R5,R7,LR}
4B17FE:  ADD             R7, SP, #8
4B1800:  SUB             SP, SP, #0x70; float *
4B1802:  MOV             R4, R1
4B1804:  LDR             R1, [R2,#0x14]
4B1806:  VLDR            S0, [R4]
4B180A:  ADD.W           R3, R1, #0x30 ; '0'
4B180E:  CMP             R1, #0
4B1810:  IT EQ
4B1812:  ADDEQ           R3, R2, #4
4B1814:  VLDR            D16, [R4,#4]
4B1818:  VLDR            S2, [R3]
4B181C:  VLDR            D17, [R3,#4]
4B1820:  VSUB.F32        S0, S0, S2
4B1824:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4B1832)
4B1826:  VSUB.F32        D16, D16, D17
4B182A:  LDRSH.W         R3, [R2,#0x26]
4B182E:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4B1830:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
4B1832:  VMUL.F32        D1, D16, D16
4B1836:  VMUL.F32        S0, S0, S0
4B183A:  LDR.W           R1, [R1,R3,LSL#2]
4B183E:  LDR             R1, [R1,#0x2C]
4B1840:  VLDR            S4, [R1,#0x24]
4B1844:  VADD.F32        S0, S0, S2
4B1848:  VMUL.F32        S4, S4, S4
4B184C:  VADD.F32        S0, S0, S3
4B1850:  VCMPE.F32       S0, S4
4B1854:  VMRS            APSR_nzcv, FPSCR
4B1858:  BGE             loc_4B1956
4B185A:  LDR             R1, [R0,#0x14]
4B185C:  ADD             R5, SP, #0x78+var_38
4B185E:  ADD.W           R3, R1, #0x30 ; '0'
4B1862:  CMP             R1, #0
4B1864:  IT EQ
4B1866:  ADDEQ           R3, R0, #4; CVector *
4B1868:  MOV             R1, R2; CEntity *
4B186A:  LDR             R0, [R3,#8]; this
4B186C:  MOV             R2, R5; CEntity *
4B186E:  BLX             j__ZN20CPedGeometryAnalyser39ComputeEntityBoundingBoxCornersUncachedEfR7CEntityP7CVector; CPedGeometryAnalyser::ComputeEntityBoundingBoxCornersUncached(float,CEntity &,CVector *)
4B1872:  ADD             R2, SP, #0x78+var_68; CVector *
4B1874:  MOV             R3, SP; CVector *
4B1876:  MOV             R1, R5; float
4B1878:  BLX             j__ZN20CPedGeometryAnalyser38ComputeEntityBoundingBoxPlanesUncachedEfPK7CVectorPS0_Pf; CPedGeometryAnalyser::ComputeEntityBoundingBoxPlanesUncached(float,CVector const*,CVector*,float *)
4B187C:  VLDR            S0, [R4]
4B1880:  VLDR            S6, [SP,#0x78+var_68]
4B1884:  VLDR            S4, [R4,#4]
4B1888:  VLDR            S8, [SP,#0x78+var_64]
4B188C:  VMUL.F32        S6, S0, S6
4B1890:  VLDR            S2, [R4,#8]
4B1894:  VMUL.F32        S8, S4, S8
4B1898:  VLDR            S10, [SP,#0x78+var_60]
4B189C:  VMUL.F32        S10, S2, S10
4B18A0:  VADD.F32        S6, S6, S8
4B18A4:  VLDR            S8, [SP,#0x78+var_78]
4B18A8:  VADD.F32        S6, S6, S10
4B18AC:  VADD.F32        S6, S8, S6
4B18B0:  VCMPE.F32       S6, #0.0
4B18B4:  VMRS            APSR_nzcv, FPSCR
4B18B8:  BLT             loc_4B1950
4B18BA:  VLDR            S6, [SP,#0x78+var_5C]
4B18BE:  VLDR            S8, [SP,#0x78+var_58]
4B18C2:  VMUL.F32        S6, S0, S6
4B18C6:  VLDR            S10, [SP,#0x78+var_54]
4B18CA:  VMUL.F32        S8, S4, S8
4B18CE:  VMUL.F32        S10, S2, S10
4B18D2:  VADD.F32        S6, S6, S8
4B18D6:  VLDR            S8, [SP,#0x78+var_74]
4B18DA:  VADD.F32        S6, S6, S10
4B18DE:  VADD.F32        S6, S8, S6
4B18E2:  VCMPE.F32       S6, #0.0
4B18E6:  VMRS            APSR_nzcv, FPSCR
4B18EA:  BLT             loc_4B1950
4B18EC:  VLDR            S6, [SP,#0x78+var_50]
4B18F0:  VLDR            S8, [SP,#0x78+var_4C]
4B18F4:  VMUL.F32        S6, S0, S6
4B18F8:  VLDR            S10, [SP,#0x78+var_48]
4B18FC:  VMUL.F32        S8, S4, S8
4B1900:  VMUL.F32        S10, S2, S10
4B1904:  VADD.F32        S6, S6, S8
4B1908:  VLDR            S8, [SP,#0x78+var_70]
4B190C:  VADD.F32        S6, S6, S10
4B1910:  VADD.F32        S6, S8, S6
4B1914:  VCMPE.F32       S6, #0.0
4B1918:  VMRS            APSR_nzcv, FPSCR
4B191C:  BLT             loc_4B1950
4B191E:  VLDR            S6, [SP,#0x78+var_44]
4B1922:  VLDR            S8, [SP,#0x78+var_40]
4B1926:  VMUL.F32        S0, S0, S6
4B192A:  VLDR            S10, [SP,#0x78+var_3C]
4B192E:  VMUL.F32        S4, S4, S8
4B1932:  VMUL.F32        S2, S2, S10
4B1936:  VADD.F32        S0, S0, S4
4B193A:  VADD.F32        S0, S0, S2
4B193E:  VLDR            S2, [SP,#0x78+var_6C]
4B1942:  VADD.F32        S0, S2, S0
4B1946:  VCMPE.F32       S0, #0.0
4B194A:  VMRS            APSR_nzcv, FPSCR
4B194E:  BGE             loc_4B1956
4B1950:  MOVS            R0, #1
4B1952:  ADD             SP, SP, #0x70 ; 'p'
4B1954:  POP             {R4,R5,R7,PC}
4B1956:  MOVS            R0, #0
4B1958:  ADD             SP, SP, #0x70 ; 'p'
4B195A:  POP             {R4,R5,R7,PC}
