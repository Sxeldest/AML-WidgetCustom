; =========================================================
; Game Engine Function: _ZN6CStats10ModifyStatEtf
; Address            : 0x4158DC - 0x4159A6
; =========================================================

4158DC:  VMOV            S0, R1; unsigned __int16
4158E0:  VCMPE.F32       S0, #0.0
4158E4:  VMRS            APSR_nzcv, FPSCR
4158E8:  IT GE
4158EA:  BGE             _ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
4158EC:  VLDR            S2, =-0.0
4158F0:  VCMPE.F32       S0, S2
4158F4:  VMRS            APSR_nzcv, FPSCR
4158F8:  IT GE
4158FA:  BXGE            LR
4158FC:  CMP             R0, #0x51 ; 'Q'
4158FE:  BHI             loc_415920
415900:  LDR             R1, =(_ZN6CStats14StatTypesFloatE_ptr - 0x41590A)
415902:  VLDR            S4, =0.0
415906:  ADD             R1, PC; _ZN6CStats14StatTypesFloatE_ptr
415908:  LDR             R1, [R1]; CStats::StatTypesFloat ...
41590A:  ADD.W           R1, R1, R0,LSL#2
41590E:  VLDR            S2, [R1]
415912:  VADD.F32        S0, S2, S0
415916:  VMAX.F32        D0, D0, D2
41591A:  VSTR            S0, [R1]
41591E:  B               loc_415960
415920:  LDR             R1, =(_ZN6CStats12StatTypesIntE_ptr - 0x415932)
415922:  VNEG.F32        S0, S0
415926:  MOVW            R12, #0xFE20
41592A:  VLDR            S2, =0.0
41592E:  ADD             R1, PC; _ZN6CStats12StatTypesIntE_ptr
415930:  MOVT            R12, #0xFFFF
415934:  LDR             R1, [R1]; CStats::StatTypesInt ...
415936:  ADD.W           R1, R1, R0,LSL#2; bool
41593A:  LDR.W           R3, [R1,R12]
41593E:  VCVT.S32.F32    S0, S0
415942:  VMOV            R2, S0
415946:  SUBS            R2, R3, R2
415948:  VMOV            S0, R2
41594C:  VCVT.F32.S32    S0, S0
415950:  VMAX.F32        D0, D0, D1
415954:  VCVT.S32.F32    S0, S0
415958:  VMOV            R2, S0
41595C:  STR.W           R2, [R1,R12]
415960:  UXTB            R0, R0
415962:  CMP             R0, #0xA5
415964:  BNE             loc_4159A2
415966:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x41596C)
415968:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
41596A:  LDR             R0, [R0]; CStats::StatTypesInt ...
41596C:  LDR.W           R0, [R0,#(dword_9649E0 - 0x96492C)]
415970:  CMP.W           R0, #0xFFFFFFFF
415974:  BGT             loc_4159A2
415976:  PUSH            {R7,LR}
415978:  MOV             R7, SP
41597A:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x415988)
41597C:  VMOV.F32        S0, #-23.0
415980:  VLDR            S4, =0.0
415984:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
415986:  LDR             R0, [R0]; CStats::StatTypesFloat ...
415988:  VLDR            S2, [R0,#0x54]
41598C:  VADD.F32        S0, S2, S0
415990:  VMAX.F32        D0, D0, D2
415994:  VSTR            S0, [R0,#0x54]
415998:  MOVS            R0, #0; this
41599A:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
41599E:  POP.W           {R7,LR}
4159A2:  MOVS            R0, #0; this
4159A4:  B               _ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
