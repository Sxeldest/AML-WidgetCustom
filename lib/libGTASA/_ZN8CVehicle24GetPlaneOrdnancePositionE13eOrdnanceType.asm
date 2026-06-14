; =========================================================
; Game Engine Function: _ZN8CVehicle24GetPlaneOrdnancePositionE13eOrdnanceType
; Address            : 0x58F924 - 0x58F9E0
; =========================================================

58F924:  LDR             R3, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x58F92E)
58F926:  LDRSH.W         R1, [R1,#0x26]
58F92A:  ADD             R3, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
58F92C:  LDR             R3, [R3]; CModelInfo::ms_modelInfoPtrs ...
58F92E:  LDR.W           R3, [R3,R1,LSL#2]
58F932:  LDR             R3, [R3,#0x74]
58F934:  VLDR            D16, [R3,#0x9C]
58F938:  LDR.W           R3, [R3,#0xA4]
58F93C:  VSTR            D16, [R0]
58F940:  VLDR            S0, [R0]
58F944:  STR             R3, [R0,#8]
58F946:  VCMP.F32        S0, #0.0
58F94A:  VMRS            APSR_nzcv, FPSCR
58F94E:  BNE             locret_58F9B6
58F950:  VLDR            S0, [R0,#4]
58F954:  VCMP.F32        S0, #0.0
58F958:  VMRS            APSR_nzcv, FPSCR
58F95C:  ITTT EQ
58F95E:  VLDREQ          S0, [R0,#8]
58F962:  VCMPEQ.F32      S0, #0.0
58F966:  VMRSEQ          APSR_nzcv, FPSCR
58F96A:  BNE             locret_58F9B6
58F96C:  CMP.W           R1, #0x1DC
58F970:  BGE             loc_58F98E
58F972:  MOVW            R2, #0x1A9
58F976:  CMP             R1, R2
58F978:  BEQ             loc_58F9A2
58F97A:  MOVW            R2, #0x1BF
58F97E:  CMP             R1, R2
58F980:  BEQ             loc_58F9B8
58F982:  CMP.W           R1, #0x1D0
58F986:  BNE             loc_58F9AE
58F988:  LDR             R1, =(dword_A131E8 - 0x58F98E)
58F98A:  ADD             R1, PC; dword_A131E8
58F98C:  B               loc_58F9D2
58F98E:  BEQ             loc_58F9A8
58F990:  CMP.W           R1, #0x208
58F994:  BEQ             loc_58F9BE
58F996:  CMP.W           R1, #0x240
58F99A:  BNE             loc_58F9AE
58F99C:  LDR             R1, =(dword_A131D8 - 0x58F9A2)
58F99E:  ADD             R1, PC; dword_A131D8
58F9A0:  B               loc_58F9D2
58F9A2:  LDR             R1, =(dword_A13188 - 0x58F9A8)
58F9A4:  ADD             R1, PC; dword_A13188
58F9A6:  B               loc_58F9D2
58F9A8:  LDR             R1, =(dword_A131A8 - 0x58F9AE)
58F9AA:  ADD             R1, PC; dword_A131A8
58F9AC:  B               loc_58F9D2
58F9AE:  MOVS            R1, #0
58F9B0:  STRD.W          R1, R1, [R0]
58F9B4:  STR             R1, [R0,#8]
58F9B6:  BX              LR
58F9B8:  LDR             R1, =(dword_A13198 - 0x58F9BE)
58F9BA:  ADD             R1, PC; dword_A13198
58F9BC:  B               loc_58F9D2
58F9BE:  CMP             R2, #2
58F9C0:  BEQ             loc_58F9CE
58F9C2:  CMP             R2, #1
58F9C4:  IT NE
58F9C6:  BXNE            LR
58F9C8:  LDR             R1, =(dword_A131B8 - 0x58F9CE)
58F9CA:  ADD             R1, PC; dword_A131B8
58F9CC:  B               loc_58F9D2
58F9CE:  LDR             R1, =(unk_A131C8 - 0x58F9D4)
58F9D0:  ADD             R1, PC; unk_A131C8
58F9D2:  VLDR            D16, [R1]
58F9D6:  LDR             R1, [R1,#8]
58F9D8:  STR             R1, [R0,#8]
58F9DA:  VSTR            D16, [R0]
58F9DE:  BX              LR
