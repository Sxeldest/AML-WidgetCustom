; =========================================================
; Game Engine Function: _Z14emu_glColor4fvPKf
; Address            : 0x1B6754 - 0x1B6876
; =========================================================

1B6754:  PUSH            {R4-R7,LR}
1B6756:  ADD             R7, SP, #0xC
1B6758:  PUSH.W          {R8}
1B675C:  VPUSH           {D8-D11}
1B6760:  LDR             R1, =(curEmulatorStateFlags_ptr - 0x1B676A)
1B6762:  VLDR            S22, [R0]
1B6766:  ADD             R1, PC; curEmulatorStateFlags_ptr
1B6768:  VLDR            S20, [R0,#4]
1B676C:  VLDR            S18, [R0,#8]
1B6770:  LDR             R1, [R1]; curEmulatorStateFlags
1B6772:  VLDR            S16, [R0,#0xC]
1B6776:  LDRB            R1, [R1,#(curEmulatorStateFlags+3 - 0x6B7098)]
1B6778:  LSLS            R0, R1, #0x19
1B677A:  BMI             loc_1B67DC
1B677C:  LDR             R0, =(GlobalColor_ptr - 0x1B6782)
1B677E:  ADD             R0, PC; GlobalColor_ptr
1B6780:  LDR             R0, [R0]; GlobalColor
1B6782:  VLDR            S0, [R0]
1B6786:  VCMP.F32        S0, S22
1B678A:  VMRS            APSR_nzcv, FPSCR
1B678E:  BNE             loc_1B67BA
1B6790:  VLDR            S0, [R0,#4]
1B6794:  VCMP.F32        S0, S20
1B6798:  VMRS            APSR_nzcv, FPSCR
1B679C:  ITTT EQ
1B679E:  VLDREQ          S0, [R0,#8]
1B67A2:  VCMPEQ.F32      S0, S18
1B67A6:  VMRSEQ          APSR_nzcv, FPSCR
1B67AA:  BNE             loc_1B67BA
1B67AC:  VLDR            S0, [R0,#0xC]
1B67B0:  VCMP.F32        S0, S16
1B67B4:  VMRS            APSR_nzcv, FPSCR
1B67B8:  BEQ             loc_1B686C
1B67BA:  LDR             R0, =(GlobalColor_ptr - 0x1B67C2)
1B67BC:  LDR             R1, =(GlobalColorDirty_ptr - 0x1B67C4)
1B67BE:  ADD             R0, PC; GlobalColor_ptr
1B67C0:  ADD             R1, PC; GlobalColorDirty_ptr
1B67C2:  LDR             R0, [R0]; GlobalColor
1B67C4:  LDR             R1, [R1]; GlobalColorDirty
1B67C6:  VSTR            S22, [R0]
1B67CA:  VSTR            S20, [R0,#4]
1B67CE:  VSTR            S18, [R0,#8]
1B67D2:  VSTR            S16, [R0,#0xC]
1B67D6:  MOVS            R0, #1
1B67D8:  STRB            R0, [R1]
1B67DA:  B               loc_1B686C
1B67DC:  LDR             R0, =(Imm_ptr - 0x1B67E2)
1B67DE:  ADD             R0, PC; Imm_ptr
1B67E0:  LDR             R0, [R0]; Imm
1B67E2:  LDR             R0, [R0,#(dword_6B32FC - 0x6B32A4)]
1B67E4:  CBNZ            R0, loc_1B67F8
1B67E6:  LDR             R0, =(Imm_ptr - 0x1B67F0)
1B67E8:  MOVS            R2, #0
1B67EA:  MOVS            R3, #4
1B67EC:  ADD             R0, PC; Imm_ptr
1B67EE:  LDR             R1, [R0]; Imm
1B67F0:  MOVS            R0, #0x10
1B67F2:  STRD.W          R3, R0, [R1,#(dword_6B32F8 - 0x6B32A4)]
1B67F6:  STR             R2, [R1,#(dword_6B3300 - 0x6B32A4)]
1B67F8:  LDR             R1, =(Imm_ptr - 0x1B67FE)
1B67FA:  ADD             R1, PC; Imm_ptr
1B67FC:  LDR             R1, [R1]; Imm
1B67FE:  LDRD.W          R2, R4, [R1,#(dword_6B32F0 - 0x6B32A4)]
1B6802:  ADD.W           R8, R4, R0
1B6806:  CMP             R2, R8
1B6808:  BGE             loc_1B6848
1B680A:  LDR             R0, =(Imm_ptr - 0x1B6814)
1B680C:  ADD.W           R1, R8, R8,LSL#1
1B6810:  ADD             R0, PC; Imm_ptr
1B6812:  LDR             R6, [R0]; Imm
1B6814:  ADD.W           R0, R1, R1,LSR#31
1B6818:  ASRS            R0, R0, #1; byte_count
1B681A:  STR             R0, [R6,#(dword_6B32F0 - 0x6B32A4)]
1B681C:  BLX             malloc
1B6820:  LDR             R6, [R6,#(dword_6B32EC - 0x6B32A4)]
1B6822:  MOV             R5, R0
1B6824:  CBZ             R6, loc_1B683E
1B6826:  MOV             R0, R5; void *
1B6828:  MOV             R1, R6; void *
1B682A:  MOV             R2, R4; size_t
1B682C:  BLX             memcpy_1
1B6830:  MOV             R0, R6; p
1B6832:  BLX             free
1B6836:  LDR             R0, =(Imm_ptr - 0x1B683C)
1B6838:  ADD             R0, PC; Imm_ptr
1B683A:  LDR             R0, [R0]; Imm
1B683C:  LDR             R4, [R0,#(dword_6B32F4 - 0x6B32A4)]
1B683E:  LDR             R0, =(Imm_ptr - 0x1B6844)
1B6840:  ADD             R0, PC; Imm_ptr
1B6842:  LDR             R0, [R0]; Imm
1B6844:  STR             R5, [R0,#(dword_6B32EC - 0x6B32A4)]
1B6846:  B               loc_1B6850
1B6848:  LDR             R0, =(Imm_ptr - 0x1B684E)
1B684A:  ADD             R0, PC; Imm_ptr
1B684C:  LDR             R0, [R0]; Imm
1B684E:  LDR             R5, [R0,#(dword_6B32EC - 0x6B32A4)]
1B6850:  LDR             R0, =(Imm_ptr - 0x1B6856)
1B6852:  ADD             R0, PC; Imm_ptr
1B6854:  LDR             R0, [R0]; Imm
1B6856:  STR.W           R8, [R0,#(dword_6B32F4 - 0x6B32A4)]
1B685A:  ADDS            R0, R5, R4
1B685C:  VSTR            S22, [R0]
1B6860:  VSTR            S20, [R0,#4]
1B6864:  VSTR            S18, [R0,#8]
1B6868:  VSTR            S16, [R0,#0xC]
1B686C:  VPOP            {D8-D11}
1B6870:  POP.W           {R8}
1B6874:  POP             {R4-R7,PC}
