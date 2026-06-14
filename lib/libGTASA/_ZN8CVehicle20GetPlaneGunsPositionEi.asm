; =========================================================
; Game Engine Function: _ZN8CVehicle20GetPlaneGunsPositionEi
; Address            : 0x58F71C - 0x58F860
; =========================================================

58F71C:  LDR.W           R12, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x58F728)
58F720:  LDRSH.W         R3, [R1,#0x26]
58F724:  ADD             R12, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
58F726:  LDR.W           R1, [R12]; CModelInfo::ms_modelInfoPtrs ...
58F72A:  UXTH.W          R12, R3
58F72E:  LDR.W           R1, [R1,R3,LSL#2]
58F732:  LDR             R1, [R1,#0x74]
58F734:  VLDR            D16, [R1,#0x9C]
58F738:  LDR.W           R1, [R1,#0xA4]
58F73C:  STR             R1, [R0,#8]
58F73E:  VSTR            D16, [R0]
58F742:  VLDR            S0, [R0]
58F746:  VCMP.F32        S0, #0.0
58F74A:  VMRS            APSR_nzcv, FPSCR
58F74E:  BNE.W           loc_58F80C
58F752:  VLDR            S0, [R0,#4]
58F756:  VCMP.F32        S0, #0.0
58F75A:  VMRS            APSR_nzcv, FPSCR
58F75E:  ITTT EQ
58F760:  VLDREQ          S0, [R0,#8]
58F764:  VCMPEQ.F32      S0, #0.0
58F768:  VMRSEQ          APSR_nzcv, FPSCR
58F76C:  BNE.W           loc_58F80C
58F770:  CMP.W           R3, #0x208
58F774:  BGE             loc_58F7AA
58F776:  SUB.W           R1, R3, #0x1D0; switch 34 cases
58F77A:  CMP             R1, #0x21 ; '!'
58F77C:  BHI             def_58F77E; jumptable 0058F77E default case
58F77E:  TBB.W           [PC,R1]; switch jump
58F782:  DCB 0x11; jump table for switch statement
58F783:  DCB 0x32
58F784:  DCB 0x32
58F785:  DCB 0x32
58F786:  DCB 0x32
58F787:  DCB 0x32
58F788:  DCB 0x32
58F789:  DCB 0x32
58F78A:  DCB 0x32
58F78B:  DCB 0x32
58F78C:  DCB 0x32
58F78D:  DCB 0x32
58F78E:  DCB 0x29
58F78F:  DCB 0x32
58F790:  DCB 0x32
58F791:  DCB 0x32
58F792:  DCB 0x32
58F793:  DCB 0x32
58F794:  DCB 0x32
58F795:  DCB 0x32
58F796:  DCB 0x32
58F797:  DCB 0x32
58F798:  DCB 0x32
58F799:  DCB 0x2C
58F79A:  DCB 0x32
58F79B:  DCB 0x32
58F79C:  DCB 0x32
58F79D:  DCB 0x32
58F79E:  DCB 0x32
58F79F:  DCB 0x32
58F7A0:  DCB 0x32
58F7A1:  DCB 0x32
58F7A2:  DCB 0x32
58F7A3:  DCB 0x2F
58F7A4:  LDR             R1, =(dword_A13178 - 0x58F7AA); jumptable 0058F77E case 464
58F7A6:  ADD             R1, PC; dword_A13178
58F7A8:  B               loc_58F800
58F7AA:  BEQ             loc_58F7F0
58F7AC:  CMP.W           R3, #0x224
58F7B0:  BEQ             loc_58F7F6
58F7B2:  CMP.W           R3, #0x240
58F7B6:  BNE             loc_58F7E6; jumptable 0058F77E cases 465-475,477-486,488-496
58F7B8:  LDR             R1, =(dword_A13168 - 0x58F7BE)
58F7BA:  ADD             R1, PC; dword_A13168
58F7BC:  B               loc_58F800
58F7BE:  MOVW            R1, #0x1A9; jumptable 0058F77E default case
58F7C2:  CMP             R3, R1
58F7C4:  BEQ             loc_58F7FC
58F7C6:  MOVW            R1, #0x1BF
58F7CA:  CMP             R3, R1
58F7CC:  BNE             loc_58F7E6; jumptable 0058F77E cases 465-475,477-486,488-496
58F7CE:  LDR             R1, =(dword_A13120 - 0x58F7D4)
58F7D0:  ADD             R1, PC; dword_A13120
58F7D2:  B               loc_58F800
58F7D4:  LDR             R1, =(dword_A13140 - 0x58F7DA); jumptable 0058F77E case 476
58F7D6:  ADD             R1, PC; dword_A13140
58F7D8:  B               loc_58F800
58F7DA:  LDR             R1, =(dword_A13100 - 0x58F7E0); jumptable 0058F77E case 487
58F7DC:  ADD             R1, PC; dword_A13100
58F7DE:  B               loc_58F800
58F7E0:  LDR             R1, =(dword_A13110 - 0x58F7E6); jumptable 0058F77E case 497
58F7E2:  ADD             R1, PC; dword_A13110
58F7E4:  B               loc_58F800
58F7E6:  MOVS            R1, #0; jumptable 0058F77E cases 465-475,477-486,488-496
58F7E8:  STRD.W          R1, R1, [R0]
58F7EC:  STR             R1, [R0,#8]
58F7EE:  B               loc_58F80C
58F7F0:  LDR             R1, =(dword_A13158 - 0x58F7F6)
58F7F2:  ADD             R1, PC; dword_A13158
58F7F4:  B               loc_58F800
58F7F6:  LDR             R1, =(dword_A13130 - 0x58F7FC)
58F7F8:  ADD             R1, PC; dword_A13130
58F7FA:  B               loc_58F800
58F7FC:  LDR             R1, =(dword_A130F0 - 0x58F802)
58F7FE:  ADD             R1, PC; dword_A130F0
58F800:  VLDR            D16, [R1]
58F804:  LDR             R1, [R1,#8]
58F806:  STR             R1, [R0,#8]
58F808:  VSTR            D16, [R0]
58F80C:  CMP.W           R12, #0x1DC
58F810:  IT NE
58F812:  BXNE            LR
58F814:  SUBS            R1, R2, #1
58F816:  VMOV            S0, R1
58F81A:  LDR             R1, =(dword_A1314C - 0x58F824)
58F81C:  VCVT.F32.S32    S0, S0
58F820:  ADD             R1, PC; dword_A1314C
58F822:  VLDR            S8, [R0,#4]
58F826:  VLDR            S2, [R1]
58F82A:  VLDR            S4, [R1,#4]
58F82E:  VLDR            S6, [R1,#8]
58F832:  VLDR            S10, [R0,#8]
58F836:  VMUL.F32        S4, S4, S0
58F83A:  VMUL.F32        S2, S2, S0
58F83E:  VMUL.F32        S0, S6, S0
58F842:  VLDR            S6, [R0]
58F846:  VADD.F32        S4, S4, S8
58F84A:  VADD.F32        S2, S2, S6
58F84E:  VADD.F32        S0, S0, S10
58F852:  VSTR            S2, [R0]
58F856:  VSTR            S4, [R0,#4]
58F85A:  VSTR            S0, [R0,#8]
58F85E:  BX              LR
