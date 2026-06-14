; =========================================================
; Game Engine Function: _ZN9CRenderer21ShouldModelBeStreamedEP7CEntityRK7CVectorf
; Address            : 0x411908 - 0x4119DE
; =========================================================

411908:  PUSH            {R4-R7,LR}
41190A:  ADD             R7, SP, #0xC
41190C:  PUSH.W          {R8}
411910:  MOV             R5, R0
411912:  MOV             R4, R2
411914:  LDRB.W          R0, [R5,#0x33]
411918:  MOV             R6, R1
41191A:  CMP             R0, #0xD
41191C:  BEQ             loc_41192A
41191E:  LDR             R1, =(_ZN5CGame8currAreaE_ptr - 0x411924)
411920:  ADD             R1, PC; _ZN5CGame8currAreaE_ptr
411922:  LDR             R1, [R1]; CGame::currArea ...
411924:  LDR             R1, [R1]; CGame::currArea
411926:  CMP             R1, R0
411928:  BNE             loc_4119D6
41192A:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x411934)
41192C:  LDRSH.W         R1, [R5,#0x26]
411930:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
411932:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
411934:  LDR.W           R8, [R0,R1,LSL#2]
411938:  LDR.W           R0, [R8]
41193C:  LDR             R1, [R0,#0x18]
41193E:  MOV             R0, R8
411940:  BLX             R1
411942:  CBZ             R0, loc_411952
411944:  LDRB            R2, [R0]; unsigned __int8
411946:  LDRB            R1, [R0,#1]; unsigned __int8
411948:  MOV             R0, R2; this
41194A:  BLX             j__ZN6CClock16GetIsTimeInRangeEhh; CClock::GetIsTimeInRange(uchar,uchar)
41194E:  CMP             R0, #1
411950:  BNE             loc_4119D6
411952:  LDR             R0, [R5,#0x14]
411954:  VMOV            S2, R4
411958:  VLDR            S0, [R6]
41195C:  ADD.W           R1, R0, #0x30 ; '0'
411960:  CMP             R0, #0
411962:  IT EQ
411964:  ADDEQ           R1, R5, #4
411966:  VLDR            D16, [R6,#4]
41196A:  VLDR            S4, [R1]
41196E:  VLDR            D17, [R1,#4]
411972:  VSUB.F32        S0, S4, S0
411976:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x411984)
411978:  VSUB.F32        D16, D17, D16
41197C:  LDRSH.W         R1, [R5,#0x26]
411980:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
411982:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
411984:  VMUL.F32        D2, D16, D16
411988:  VMUL.F32        S0, S0, S0
41198C:  LDR.W           R0, [R0,R1,LSL#2]
411990:  LDR             R0, [R0,#0x2C]
411992:  VADD.F32        S0, S0, S4
411996:  VADD.F32        S0, S0, S5
41199A:  VLDR            S4, [R0,#0x24]
41199E:  MOVS            R0, #0
4119A0:  VADD.F32        S2, S4, S2
4119A4:  VSQRT.F32       S0, S0
4119A8:  VCMPE.F32       S0, S2
4119AC:  VMRS            APSR_nzcv, FPSCR
4119B0:  BGT             loc_4119D0
4119B2:  LDR             R1, =(TheCamera_ptr - 0x4119BC)
4119B4:  VLDR            S2, [R8,#0x30]
4119B8:  ADD             R1, PC; TheCamera_ptr
4119BA:  LDR             R1, [R1]; TheCamera
4119BC:  VLDR            S4, [R1,#0xEC]
4119C0:  VMUL.F32        S2, S2, S4
4119C4:  VCMPE.F32       S2, S0
4119C8:  VMRS            APSR_nzcv, FPSCR
4119CC:  IT GT
4119CE:  MOVGT           R0, #1
4119D0:  POP.W           {R8}
4119D4:  POP             {R4-R7,PC}
4119D6:  MOVS            R0, #0
4119D8:  POP.W           {R8}
4119DC:  POP             {R4-R7,PC}
