; =========================================================
; Game Engine Function: _Z14emu_glColor4svPKs
; Address            : 0x1B6A28 - 0x1B6B8A
; =========================================================

1B6A28:  PUSH            {R4-R7,LR}
1B6A2A:  ADD             R7, SP, #0xC
1B6A2C:  PUSH.W          {R8-R11}
1B6A30:  SUB             SP, SP, #4
1B6A32:  LDR             R1, =(curEmulatorStateFlags_ptr - 0x1B6A3C)
1B6A34:  LDRH.W          R8, [R0]
1B6A38:  ADD             R1, PC; curEmulatorStateFlags_ptr
1B6A3A:  LDR             R1, [R1]; curEmulatorStateFlags
1B6A3C:  LDRB            R1, [R1,#(curEmulatorStateFlags+3 - 0x6B7098)]
1B6A3E:  LSLS            R1, R1, #0x19
1B6A40:  BMI             loc_1B6AE6
1B6A42:  SXTH.W          R1, R8
1B6A46:  VLDR            S6, =32677.0
1B6A4A:  VMOV            S0, R1
1B6A4E:  VCVT.F32.S32    S0, S0
1B6A52:  LDRSH.W         R1, [R0,#2]
1B6A56:  LDRSH.W         R2, [R0,#4]
1B6A5A:  LDRSH.W         R0, [R0,#6]
1B6A5E:  VMOV            S2, R0
1B6A62:  LDR             R0, =(GlobalColor_ptr - 0x1B6A6C)
1B6A64:  VCVT.F32.S32    S4, S2
1B6A68:  ADD             R0, PC; GlobalColor_ptr
1B6A6A:  VMOV            S2, R2
1B6A6E:  LDR             R0, [R0]; GlobalColor
1B6A70:  VCVT.F32.S32    S8, S2
1B6A74:  VMOV            S2, R1
1B6A78:  VCVT.F32.S32    S10, S2
1B6A7C:  VDIV.F32        S2, S0, S6
1B6A80:  VDIV.F32        S0, S4, S6
1B6A84:  VDIV.F32        S4, S8, S6
1B6A88:  VDIV.F32        S6, S10, S6
1B6A8C:  VLDR            S8, [R0]
1B6A90:  VCMP.F32        S8, S2
1B6A94:  VMRS            APSR_nzcv, FPSCR
1B6A98:  BNE             loc_1B6AC4
1B6A9A:  VLDR            S8, [R0,#4]
1B6A9E:  VCMP.F32        S8, S6
1B6AA2:  VMRS            APSR_nzcv, FPSCR
1B6AA6:  ITTT EQ
1B6AA8:  VLDREQ          S8, [R0,#8]
1B6AAC:  VCMPEQ.F32      S8, S4
1B6AB0:  VMRSEQ          APSR_nzcv, FPSCR
1B6AB4:  BNE             loc_1B6AC4
1B6AB6:  VLDR            S8, [R0,#0xC]
1B6ABA:  VCMP.F32        S8, S0
1B6ABE:  VMRS            APSR_nzcv, FPSCR
1B6AC2:  BEQ             loc_1B6B82
1B6AC4:  LDR             R0, =(GlobalColor_ptr - 0x1B6ACC)
1B6AC6:  LDR             R1, =(GlobalColorDirty_ptr - 0x1B6ACE)
1B6AC8:  ADD             R0, PC; GlobalColor_ptr
1B6ACA:  ADD             R1, PC; GlobalColorDirty_ptr
1B6ACC:  LDR             R0, [R0]; GlobalColor
1B6ACE:  LDR             R1, [R1]; GlobalColorDirty
1B6AD0:  VSTR            S2, [R0]
1B6AD4:  VSTR            S6, [R0,#4]
1B6AD8:  VSTR            S4, [R0,#8]
1B6ADC:  VSTR            S0, [R0,#0xC]
1B6AE0:  MOVS            R0, #1
1B6AE2:  STRB            R0, [R1]
1B6AE4:  B               loc_1B6B82
1B6AE6:  LDR             R1, =(Imm_ptr - 0x1B6AF0)
1B6AE8:  LDRH.W          R10, [R0,#6]
1B6AEC:  ADD             R1, PC; Imm_ptr
1B6AEE:  LDRH            R6, [R0,#4]
1B6AF0:  LDRH.W          R11, [R0,#2]
1B6AF4:  LDR             R1, [R1]; Imm
1B6AF6:  LDR             R0, [R1,#(dword_6B32FC - 0x6B32A4)]
1B6AF8:  CBNZ            R0, loc_1B6B0C
1B6AFA:  LDR             R0, =(Imm_ptr - 0x1B6B04)
1B6AFC:  MOVS            R2, #3
1B6AFE:  MOVS            R3, #4
1B6B00:  ADD             R0, PC; Imm_ptr
1B6B02:  LDR             R1, [R0]; Imm
1B6B04:  MOVS            R0, #8
1B6B06:  STRD.W          R3, R0, [R1,#(dword_6B32F8 - 0x6B32A4)]
1B6B0A:  STR             R2, [R1,#(dword_6B3300 - 0x6B32A4)]
1B6B0C:  LDR             R1, =(Imm_ptr - 0x1B6B12)
1B6B0E:  ADD             R1, PC; Imm_ptr
1B6B10:  LDR             R1, [R1]; Imm
1B6B12:  LDRD.W          R2, R4, [R1,#(dword_6B32F0 - 0x6B32A4)]
1B6B16:  ADD.W           R9, R4, R0
1B6B1A:  CMP             R2, R9
1B6B1C:  BGE             loc_1B6B60
1B6B1E:  LDR             R0, =(Imm_ptr - 0x1B6B2A)
1B6B20:  ADD.W           R1, R9, R9,LSL#1
1B6B24:  STR             R6, [SP,#0x20+var_20]
1B6B26:  ADD             R0, PC; Imm_ptr
1B6B28:  LDR             R6, [R0]; Imm
1B6B2A:  ADD.W           R0, R1, R1,LSR#31
1B6B2E:  ASRS            R0, R0, #1; byte_count
1B6B30:  STR             R0, [R6,#(dword_6B32F0 - 0x6B32A4)]
1B6B32:  BLX             malloc
1B6B36:  LDR             R6, [R6,#(dword_6B32EC - 0x6B32A4)]
1B6B38:  MOV             R5, R0
1B6B3A:  CBZ             R6, loc_1B6B54
1B6B3C:  MOV             R0, R5; void *
1B6B3E:  MOV             R1, R6; void *
1B6B40:  MOV             R2, R4; size_t
1B6B42:  BLX             memcpy_1
1B6B46:  MOV             R0, R6; p
1B6B48:  BLX             free
1B6B4C:  LDR             R0, =(Imm_ptr - 0x1B6B52)
1B6B4E:  ADD             R0, PC; Imm_ptr
1B6B50:  LDR             R0, [R0]; Imm
1B6B52:  LDR             R4, [R0,#(dword_6B32F4 - 0x6B32A4)]
1B6B54:  LDR             R0, =(Imm_ptr - 0x1B6B5C)
1B6B56:  LDR             R6, [SP,#0x20+var_20]
1B6B58:  ADD             R0, PC; Imm_ptr
1B6B5A:  LDR             R0, [R0]; Imm
1B6B5C:  STR             R5, [R0,#(dword_6B32EC - 0x6B32A4)]
1B6B5E:  B               loc_1B6B68
1B6B60:  LDR             R0, =(Imm_ptr - 0x1B6B66)
1B6B62:  ADD             R0, PC; Imm_ptr
1B6B64:  LDR             R0, [R0]; Imm
1B6B66:  LDR             R5, [R0,#(dword_6B32EC - 0x6B32A4)]
1B6B68:  LDR             R0, =(Imm_ptr - 0x1B6B6E)
1B6B6A:  ADD             R0, PC; Imm_ptr
1B6B6C:  LDR             R0, [R0]; Imm
1B6B6E:  STR.W           R9, [R0,#(dword_6B32F4 - 0x6B32A4)]
1B6B72:  ADDS            R0, R5, R4
1B6B74:  STRH.W          R8, [R5,R4]
1B6B78:  STRH.W          R11, [R0,#2]
1B6B7C:  STRH            R6, [R0,#4]
1B6B7E:  STRH.W          R10, [R0,#6]
1B6B82:  ADD             SP, SP, #4
1B6B84:  POP.W           {R8-R11}
1B6B88:  POP             {R4-R7,PC}
