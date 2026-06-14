; =========================================================
; Game Engine Function: _ZN11CAutomobile19ProcessAutoBusDoorsEv
; Address            : 0x555C4C - 0x555DD2
; =========================================================

555C4C:  PUSH            {R4,R6,R7,LR}
555C4E:  ADD             R7, SP, #8
555C50:  SUB             SP, SP, #8
555C52:  MOV             R4, R0
555C54:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x555C5A)
555C56:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
555C58:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
555C5A:  LDR.W           R0, [R4,#0x884]
555C5E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
555C60:  CMP             R0, R1
555C62:  BLS             loc_555CAA
555C64:  SUB.W           R0, R0, #0x1F4
555C68:  CMP             R1, R0
555C6A:  BLS.W           loc_555D90
555C6E:  LDR             R0, [R4]
555C70:  MOVS            R1, #2
555C72:  LDR.W           R2, [R0,#0x88]
555C76:  MOV             R0, R4
555C78:  BLX             R2
555C7A:  CMP             R0, #0
555C7C:  ITT EQ
555C7E:  LDRBEQ.W        R0, [R4,#0x48A]
555C82:  MOVSEQ.W        R0, R0,LSL#31
555C86:  BNE             loc_555D58
555C88:  LDR             R0, [R4]
555C8A:  MOVS            R1, #2
555C8C:  LDR.W           R2, [R0,#0x84]
555C90:  MOV             R0, R4
555C92:  BLX             R2
555C94:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x555C9C)
555C96:  CMP             R0, #0
555C98:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
555C9A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
555C9C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
555C9E:  BEQ             loc_555D1E
555CA0:  VLDR            S0, =0.0
555CA4:  STR.W           R1, [R4,#0x884]
555CA8:  B               loc_555D40
555CAA:  LDR.W           R0, [R4,#0x888]
555CAE:  CMP             R0, #0
555CB0:  BEQ             loc_555D90
555CB2:  LDR             R0, [R4]
555CB4:  MOVS            R1, #2
555CB6:  LDR.W           R2, [R0,#0x88]
555CBA:  MOV             R0, R4
555CBC:  BLX             R2
555CBE:  CMP             R0, #0
555CC0:  ITT EQ
555CC2:  LDRBEQ.W        R0, [R4,#0x48A]
555CC6:  MOVSEQ.W        R0, R0,LSL#31
555CCA:  BNE             loc_555CE4
555CCC:  LDR             R0, [R4]
555CCE:  MOVS            R1, #0
555CD0:  MOVS            R2, #0xA
555CD2:  MOVS            R3, #2
555CD4:  LDR.W           R12, [R0,#0x70]
555CD8:  MOVS            R0, #1
555CDA:  STRD.W          R1, R0, [SP,#0x10+var_10]
555CDE:  MOV             R0, R4
555CE0:  MOVS            R1, #0
555CE2:  BLX             R12
555CE4:  LDR             R0, [R4]
555CE6:  MOVS            R1, #3
555CE8:  LDR.W           R2, [R0,#0x88]
555CEC:  MOV             R0, R4
555CEE:  BLX             R2
555CF0:  CBNZ            R0, loc_555D12
555CF2:  LDRB.W          R0, [R4,#0x48A]
555CF6:  LSLS            R0, R0, #0x1D
555CF8:  BMI             loc_555D12
555CFA:  LDR             R0, [R4]
555CFC:  MOVS            R1, #0
555CFE:  MOVS            R2, #8
555D00:  MOVS            R3, #3
555D02:  LDR.W           R12, [R0,#0x70]
555D06:  MOVS            R0, #1
555D08:  STRD.W          R1, R0, [SP,#0x10+var_10]
555D0C:  MOV             R0, R4
555D0E:  MOVS            R1, #0
555D10:  BLX             R12
555D12:  MOVS            R0, #0
555D14:  STR.W           R0, [R4,#0x884]
555D18:  STR.W           R0, [R4,#0x888]
555D1C:  B               loc_555D90
555D1E:  LDR.W           R0, [R4,#0x884]
555D22:  ADD.W           R1, R1, #0x1F4
555D26:  VLDR            S2, =-500.0
555D2A:  SUBS            R0, R1, R0
555D2C:  VMOV            S0, R0
555D30:  VCVT.F32.U32    S0, S0
555D34:  VDIV.F32        S0, S0, S2
555D38:  VMOV.F32        S2, #1.0
555D3C:  VADD.F32        S0, S0, S2
555D40:  LDR             R0, [R4]
555D42:  MOVS            R1, #0
555D44:  MOVS            R2, #0xA
555D46:  MOVS            R3, #2
555D48:  LDR.W           R12, [R0,#0x70]
555D4C:  MOVS            R0, #1
555D4E:  STR             R0, [SP,#0x10+var_C]
555D50:  MOV             R0, R4
555D52:  VSTR            S0, [SP,#0x10+var_10]
555D56:  BLX             R12
555D58:  LDR             R0, [R4]
555D5A:  MOVS            R1, #3
555D5C:  LDR.W           R2, [R0,#0x88]
555D60:  MOV             R0, R4
555D62:  BLX             R2
555D64:  CBNZ            R0, loc_555D90
555D66:  LDRB.W          R0, [R4,#0x48A]
555D6A:  LSLS            R0, R0, #0x1D
555D6C:  BMI             loc_555D90
555D6E:  LDR             R0, [R4]
555D70:  MOVS            R1, #3
555D72:  LDR.W           R2, [R0,#0x84]
555D76:  MOV             R0, R4
555D78:  BLX             R2
555D7A:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x555D82)
555D7C:  CMP             R0, #0
555D7E:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
555D80:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
555D82:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
555D84:  BEQ             loc_555D94
555D86:  VLDR            S0, =0.0
555D8A:  STR.W           R1, [R4,#0x884]
555D8E:  B               loc_555DB6
555D90:  ADD             SP, SP, #8
555D92:  POP             {R4,R6,R7,PC}
555D94:  LDR.W           R0, [R4,#0x884]
555D98:  ADD.W           R1, R1, #0x1F4
555D9C:  VLDR            S2, =-500.0
555DA0:  SUBS            R0, R1, R0
555DA2:  VMOV            S0, R0
555DA6:  VCVT.F32.U32    S0, S0
555DAA:  VDIV.F32        S0, S0, S2
555DAE:  VMOV.F32        S2, #1.0
555DB2:  VADD.F32        S0, S0, S2
555DB6:  LDR             R0, [R4]
555DB8:  MOVS            R1, #0
555DBA:  MOVS            R2, #8
555DBC:  MOVS            R3, #3
555DBE:  LDR.W           R12, [R0,#0x70]
555DC2:  MOVS            R0, #1
555DC4:  STR             R0, [SP,#0x10+var_C]
555DC6:  MOV             R0, R4
555DC8:  VSTR            S0, [SP,#0x10+var_10]
555DCC:  BLX             R12
555DCE:  ADD             SP, SP, #8
555DD0:  POP             {R4,R6,R7,PC}
