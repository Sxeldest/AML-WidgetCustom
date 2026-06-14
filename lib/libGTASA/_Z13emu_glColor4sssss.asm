; =========================================================
; Game Engine Function: _Z13emu_glColor4sssss
; Address            : 0x1B68A8 - 0x1B69F2
; =========================================================

1B68A8:  PUSH            {R4-R7,LR}
1B68AA:  ADD             R7, SP, #0xC
1B68AC:  PUSH.W          {R8-R11}
1B68B0:  SUB             SP, SP, #4
1B68B2:  MOV             R11, R0
1B68B4:  LDR             R0, =(curEmulatorStateFlags_ptr - 0x1B68BE)
1B68B6:  MOV             R10, R2
1B68B8:  MOV             R9, R1
1B68BA:  ADD             R0, PC; curEmulatorStateFlags_ptr
1B68BC:  LDR             R0, [R0]; curEmulatorStateFlags
1B68BE:  LDRB            R0, [R0,#(curEmulatorStateFlags+3 - 0x6B7098)]
1B68C0:  LSLS            R0, R0, #0x19
1B68C2:  BMI             loc_1B6958
1B68C4:  VMOV            S0, R11
1B68C8:  VLDR            S6, =32677.0
1B68CC:  VMOV            S2, R10
1B68D0:  LDR             R0, =(GlobalColor_ptr - 0x1B68DE)
1B68D2:  VCVT.F32.S32    S0, S0
1B68D6:  VCVT.F32.S32    S4, S2
1B68DA:  ADD             R0, PC; GlobalColor_ptr
1B68DC:  VMOV            S2, R3
1B68E0:  LDR             R0, [R0]; GlobalColor
1B68E2:  VCVT.F32.S32    S8, S2
1B68E6:  VMOV            S2, R9
1B68EA:  VCVT.F32.S32    S10, S2
1B68EE:  VDIV.F32        S2, S0, S6
1B68F2:  VDIV.F32        S0, S8, S6
1B68F6:  VDIV.F32        S4, S4, S6
1B68FA:  VDIV.F32        S6, S10, S6
1B68FE:  VLDR            S8, [R0]
1B6902:  VCMP.F32        S8, S2
1B6906:  VMRS            APSR_nzcv, FPSCR
1B690A:  BNE             loc_1B6936
1B690C:  VLDR            S8, [R0,#4]
1B6910:  VCMP.F32        S8, S6
1B6914:  VMRS            APSR_nzcv, FPSCR
1B6918:  ITTT EQ
1B691A:  VLDREQ          S8, [R0,#8]
1B691E:  VCMPEQ.F32      S8, S4
1B6922:  VMRSEQ          APSR_nzcv, FPSCR
1B6926:  BNE             loc_1B6936
1B6928:  VLDR            S8, [R0,#0xC]
1B692C:  VCMP.F32        S8, S0
1B6930:  VMRS            APSR_nzcv, FPSCR
1B6934:  BEQ             loc_1B69EA
1B6936:  LDR             R0, =(GlobalColor_ptr - 0x1B693E)
1B6938:  LDR             R1, =(GlobalColorDirty_ptr - 0x1B6940)
1B693A:  ADD             R0, PC; GlobalColor_ptr
1B693C:  ADD             R1, PC; GlobalColorDirty_ptr
1B693E:  LDR             R0, [R0]; GlobalColor
1B6940:  LDR             R1, [R1]; GlobalColorDirty
1B6942:  VSTR            S2, [R0]
1B6946:  VSTR            S6, [R0,#4]
1B694A:  VSTR            S4, [R0,#8]
1B694E:  VSTR            S0, [R0,#0xC]
1B6952:  MOVS            R0, #1
1B6954:  STRB            R0, [R1]
1B6956:  B               loc_1B69EA
1B6958:  LDR             R0, =(Imm_ptr - 0x1B695E)
1B695A:  ADD             R0, PC; Imm_ptr
1B695C:  LDR             R0, [R0]; Imm
1B695E:  LDR             R0, [R0,#(dword_6B32FC - 0x6B32A4)]
1B6960:  CBNZ            R0, loc_1B6974
1B6962:  LDR             R0, =(Imm_ptr - 0x1B696C)
1B6964:  MOVS            R2, #3
1B6966:  MOVS            R6, #4
1B6968:  ADD             R0, PC; Imm_ptr
1B696A:  LDR             R1, [R0]; Imm
1B696C:  MOVS            R0, #8
1B696E:  STRD.W          R6, R0, [R1,#(dword_6B32F8 - 0x6B32A4)]
1B6972:  STR             R2, [R1,#(dword_6B3300 - 0x6B32A4)]
1B6974:  LDR             R1, =(Imm_ptr - 0x1B697A)
1B6976:  ADD             R1, PC; Imm_ptr
1B6978:  LDR             R1, [R1]; Imm
1B697A:  LDRD.W          R2, R5, [R1,#(dword_6B32F0 - 0x6B32A4)]
1B697E:  ADD.W           R8, R5, R0
1B6982:  CMP             R2, R8
1B6984:  BGE             loc_1B69C8
1B6986:  LDR             R0, =(Imm_ptr - 0x1B6992)
1B6988:  ADD.W           R1, R8, R8,LSL#1
1B698C:  STR             R3, [SP,#0x20+var_20]
1B698E:  ADD             R0, PC; Imm_ptr
1B6990:  LDR             R4, [R0]; Imm
1B6992:  ADD.W           R0, R1, R1,LSR#31
1B6996:  ASRS            R0, R0, #1; byte_count
1B6998:  STR             R0, [R4,#(dword_6B32F0 - 0x6B32A4)]
1B699A:  BLX             malloc
1B699E:  LDR             R4, [R4,#(dword_6B32EC - 0x6B32A4)]
1B69A0:  MOV             R6, R0
1B69A2:  CBZ             R4, loc_1B69BC
1B69A4:  MOV             R0, R6; void *
1B69A6:  MOV             R1, R4; void *
1B69A8:  MOV             R2, R5; size_t
1B69AA:  BLX             memcpy_1
1B69AE:  MOV             R0, R4; p
1B69B0:  BLX             free
1B69B4:  LDR             R0, =(Imm_ptr - 0x1B69BA)
1B69B6:  ADD             R0, PC; Imm_ptr
1B69B8:  LDR             R0, [R0]; Imm
1B69BA:  LDR             R5, [R0,#(dword_6B32F4 - 0x6B32A4)]
1B69BC:  LDR             R0, =(Imm_ptr - 0x1B69C4)
1B69BE:  LDR             R3, [SP,#0x20+var_20]
1B69C0:  ADD             R0, PC; Imm_ptr
1B69C2:  LDR             R0, [R0]; Imm
1B69C4:  STR             R6, [R0,#(dword_6B32EC - 0x6B32A4)]
1B69C6:  B               loc_1B69D0
1B69C8:  LDR             R0, =(Imm_ptr - 0x1B69CE)
1B69CA:  ADD             R0, PC; Imm_ptr
1B69CC:  LDR             R0, [R0]; Imm
1B69CE:  LDR             R6, [R0,#(dword_6B32EC - 0x6B32A4)]
1B69D0:  LDR             R0, =(Imm_ptr - 0x1B69D6)
1B69D2:  ADD             R0, PC; Imm_ptr
1B69D4:  LDR             R0, [R0]; Imm
1B69D6:  STR.W           R8, [R0,#(dword_6B32F4 - 0x6B32A4)]
1B69DA:  ADDS            R0, R6, R5
1B69DC:  STRH.W          R11, [R6,R5]
1B69E0:  STRH.W          R9, [R0,#2]
1B69E4:  STRH.W          R10, [R0,#4]
1B69E8:  STRH            R3, [R0,#6]
1B69EA:  ADD             SP, SP, #4
1B69EC:  POP.W           {R8-R11}
1B69F0:  POP             {R4-R7,PC}
