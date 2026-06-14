; =========================================================
; Game Engine Function: _ZN6CEvent23CalcSoundLevelIncrementEff
; Address            : 0x36FCF0 - 0x36FD70
; =========================================================

36FCF0:  PUSH            {R4,R5,R7,LR}
36FCF2:  ADD             R7, SP, #8
36FCF4:  VPUSH           {D8-D9}
36FCF8:  VMOV            S16, R1
36FCFC:  VCMP.F32        S16, #0.0
36FD00:  VMRS            APSR_nzcv, FPSCR
36FD04:  BNE             loc_36FD0C
36FD06:  VLDR            S16, =0.0
36FD0A:  B               loc_36FD66
36FD0C:  VMOV            S0, R0
36FD10:  VCMP.F32        S0, #0.0
36FD14:  VMRS            APSR_nzcv, FPSCR
36FD18:  BEQ             loc_36FD66
36FD1A:  VLDR            S18, =0.1
36FD1E:  MOVS            R4, #0x41200000
36FD24:  VMUL.F32        S0, S0, S18
36FD28:  MOV             R0, R4; x
36FD2A:  VMOV            R1, S0; y
36FD2E:  BLX             powf
36FD32:  VMUL.F32        S0, S16, S18
36FD36:  MOV             R5, R0
36FD38:  MOV             R0, R4; x
36FD3A:  VMOV            R1, S0; y
36FD3E:  BLX             powf
36FD42:  VMOV            S0, R0
36FD46:  VMOV            S2, R5
36FD4A:  VADD.F32        S0, S2, S0
36FD4E:  VDIV.F32        S0, S0, S2
36FD52:  VMOV            R0, S0; x
36FD56:  BLX             log10f
36FD5A:  VMOV.F32        S0, #10.0
36FD5E:  VMOV            S2, R0
36FD62:  VMUL.F32        S16, S2, S0
36FD66:  VMOV            R0, S16
36FD6A:  VPOP            {D8-D9}
36FD6E:  POP             {R4,R5,R7,PC}
