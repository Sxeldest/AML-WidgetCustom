; =========================================================
; Game Engine Function: sub_1DBEA4
; Address            : 0x1DBEA4 - 0x1DBFC8
; =========================================================

1DBEA4:  PUSH            {R4-R6,R10,R11,LR}
1DBEA8:  ADD             R11, SP, #0x10
1DBEAC:  MOV             R6, R3
1DBEB0:  MOV             R4, R1
1DBEB4:  MOV             R5, R0
1DBEB8:  CMP             R2, #0xE
1DBEBC:  BEQ             loc_1DBF30
1DBEC0:  CMP             R2, #0xB
1DBEC4:  BNE             loc_1DBFB4
1DBEC8:  VLDR            S0, [R6]
1DBECC:  VABS.F32        S2, S0
1DBED0:  VLDR            S0, =+Inf
1DBED4:  VCMP.F32        S2, S0
1DBED8:  VMRS            APSR_nzcv, FPSCR
1DBEDC:  BEQ             loc_1DBFA4
1DBEE0:  VLDR            S2, [R6,#4]
1DBEE4:  VABS.F32        S2, S2
1DBEE8:  VCMP.F32        S2, S0
1DBEEC:  VMRS            APSR_nzcv, FPSCR
1DBEF0:  BEQ             loc_1DBFA4
1DBEF4:  VLDR            S2, [R6,#8]
1DBEF8:  VABS.F32        S2, S2
1DBEFC:  VCMP.F32        S2, S0
1DBF00:  VMRS            APSR_nzcv, FPSCR
1DBF04:  BEQ             loc_1DBFA4
1DBF08:  LDR             R0, [R4,#0xFC]
1DBF0C:  ADD             R0, R0, #8; mutex
1DBF10:  BL              j_EnterCriticalSection
1DBF14:  LDR             R0, [R6]
1DBF18:  STR             R0, [R5,#0x40]
1DBF1C:  LDR             R0, [R6,#4]
1DBF20:  STR             R0, [R5,#0x44]
1DBF24:  LDR             R0, [R6,#8]
1DBF28:  STR             R0, [R5,#0x48]
1DBF2C:  B               loc_1DBF94
1DBF30:  VLDR            S0, [R6]
1DBF34:  VABS.F32        S2, S0
1DBF38:  VLDR            S0, =+Inf
1DBF3C:  VCMP.F32        S2, S0
1DBF40:  VMRS            APSR_nzcv, FPSCR
1DBF44:  BEQ             loc_1DBFA4
1DBF48:  VLDR            S2, [R6,#4]
1DBF4C:  VABS.F32        S2, S2
1DBF50:  VCMP.F32        S2, S0
1DBF54:  VMRS            APSR_nzcv, FPSCR
1DBF58:  BEQ             loc_1DBFA4
1DBF5C:  VLDR            S2, [R6,#8]
1DBF60:  VABS.F32        S2, S2
1DBF64:  VCMP.F32        S2, S0
1DBF68:  VMRS            APSR_nzcv, FPSCR
1DBF6C:  BEQ             loc_1DBFA4
1DBF70:  LDR             R0, [R4,#0xFC]
1DBF74:  ADD             R0, R0, #8; mutex
1DBF78:  BL              j_EnterCriticalSection
1DBF7C:  LDR             R0, [R6]
1DBF80:  STR             R0, [R5,#0x4C]
1DBF84:  LDR             R0, [R6,#4]
1DBF88:  STR             R0, [R5,#0x50]
1DBF8C:  LDR             R0, [R6,#8]
1DBF90:  STR             R0, [R5,#0x54]
1DBF94:  LDR             R0, [R4,#0xFC]
1DBF98:  ADD             R0, R0, #8; mutex
1DBF9C:  POP             {R4-R6,R10,R11,LR}
1DBFA0:  B               j_LeaveCriticalSection
1DBFA4:  MOV             R0, R4
1DBFA8:  MOVW            R1, #0xA003
1DBFAC:  POP             {R4-R6,R10,R11,LR}
1DBFB0:  B               j_alSetError
1DBFB4:  LDR             R3, [R6]
1DBFB8:  MOV             R0, R5
1DBFBC:  MOV             R1, R4
1DBFC0:  POP             {R4-R6,R10,R11,LR}
1DBFC4:  B               sub_1DBB08
