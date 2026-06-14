; =========================================================
; Game Engine Function: _Z20emu_SetAltRTContrastffffff
; Address            : 0x1BC86C - 0x1BC94C
; =========================================================

1BC86C:  PUSH            {R7,LR}
1BC86E:  MOV             R7, SP
1BC870:  LDR.W           R12, =(contrastMult_ptr - 0x1BC884)
1BC874:  VMOV            S2, R2
1BC878:  LDR.W           LR, =(usingGrading_ptr - 0x1BC88A)
1BC87C:  VMOV            S6, R0
1BC880:  ADD             R12, PC; contrastMult_ptr
1BC882:  VMOV            S4, R1
1BC886:  ADD             LR, PC; usingGrading_ptr
1BC888:  VMOV            S0, R3
1BC88C:  LDR.W           R2, [R12]; contrastMult
1BC890:  MOVS            R0, #0
1BC892:  LDR.W           R1, [LR]; usingGrading
1BC896:  VLDR            S14, [R2]
1BC89A:  VLDR            S12, [R2,#4]
1BC89E:  VCMP.F32        S14, S6
1BC8A2:  VLDR            S10, [R2,#8]
1BC8A6:  VLDR            S8, [R2,#0xC]
1BC8AA:  VMRS            APSR_nzcv, FPSCR
1BC8AE:  STRB            R0, [R1]
1BC8B0:  BNE             loc_1BC8D4
1BC8B2:  VCMP.F32        S12, S4
1BC8B6:  VMRS            APSR_nzcv, FPSCR
1BC8BA:  ITT EQ
1BC8BC:  VCMPEQ.F32      S10, S2
1BC8C0:  VMRSEQ          APSR_nzcv, FPSCR
1BC8C4:  BNE             loc_1BC8D4
1BC8C6:  VMOV.F32        S10, #1.0
1BC8CA:  VCMP.F32        S8, S10
1BC8CE:  VMRS            APSR_nzcv, FPSCR
1BC8D2:  BEQ             loc_1BC8EC
1BC8D4:  LDR             R0, =(contrastMult_ptr - 0x1BC8DE)
1BC8D6:  MOV.W           R1, #0x3F800000
1BC8DA:  ADD             R0, PC; contrastMult_ptr
1BC8DC:  LDR             R0, [R0]; contrastMult
1BC8DE:  VSTR            S6, [R0]
1BC8E2:  VSTR            S4, [R0,#4]
1BC8E6:  VSTR            S2, [R0,#8]
1BC8EA:  STR             R1, [R0,#(dword_67A128 - 0x67A11C)]
1BC8EC:  LDR             R0, =(contrastAdd_ptr - 0x1BC8F6)
1BC8EE:  VLDR            S2, [R7,#0xC]
1BC8F2:  ADD             R0, PC; contrastAdd_ptr
1BC8F4:  VLDR            S4, [R7,#8]
1BC8F8:  LDR             R0, [R0]; contrastAdd
1BC8FA:  VLDR            S6, [R0]
1BC8FE:  VCMP.F32        S6, S0
1BC902:  VMRS            APSR_nzcv, FPSCR
1BC906:  BNE             loc_1BC934
1BC908:  VLDR            S6, [R0,#4]
1BC90C:  VCMP.F32        S6, S4
1BC910:  VMRS            APSR_nzcv, FPSCR
1BC914:  ITTT EQ
1BC916:  VLDREQ          S6, [R0,#8]
1BC91A:  VCMPEQ.F32      S6, S2
1BC91E:  VMRSEQ          APSR_nzcv, FPSCR
1BC922:  BNE             loc_1BC934
1BC924:  VLDR            S6, [R0,#0xC]
1BC928:  VCMP.F32        S6, #0.0
1BC92C:  VMRS            APSR_nzcv, FPSCR
1BC930:  IT EQ
1BC932:  POPEQ           {R7,PC}
1BC934:  LDR             R0, =(contrastAdd_ptr - 0x1BC93C)
1BC936:  MOVS            R1, #0
1BC938:  ADD             R0, PC; contrastAdd_ptr
1BC93A:  LDR             R0, [R0]; contrastAdd
1BC93C:  VSTR            S0, [R0]
1BC940:  VSTR            S4, [R0,#4]
1BC944:  VSTR            S2, [R0,#8]
1BC948:  STR             R1, [R0,#(dword_6B4070 - 0x6B4064)]
1BC94A:  POP             {R7,PC}
