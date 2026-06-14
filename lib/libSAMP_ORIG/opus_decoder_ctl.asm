; =========================================================
; Game Engine Function: opus_decoder_ctl
; Address            : 0xB1D08 - 0xB1E82
; =========================================================

B1D08:  SUB             SP, SP, #8
B1D0A:  PUSH            {R4-R7,LR}
B1D0C:  ADD             R7, SP, #0xC
B1D0E:  PUSH.W          {R11}
B1D12:  SUB             SP, SP, #8
B1D14:  MOV             R4, R0
B1D16:  LDR             R0, =(__stack_chk_guard_ptr - 0xB1D22)
B1D18:  STR             R3, [R7,#var_sC]
B1D1A:  SUBW            R1, R1, #0xFA9; switch 39 cases
B1D1E:  ADD             R0, PC; __stack_chk_guard_ptr
B1D20:  MOV             R5, #0xFFFFFFFB
B1D24:  CMP             R1, #0x26 ; '&'
B1D26:  LDR             R0, [R0]; __stack_chk_guard
B1D28:  LDR             R0, [R0]
B1D2A:  STR             R2, [R7,#var_s8]
B1D2C:  ADD.W           R2, R7, #8
B1D30:  STR             R0, [SP,#0x18+var_14]
B1D32:  LDRD.W          R0, R6, [R4]
B1D36:  STR             R2, [SP,#0x18+var_18]
B1D38:  BHI.W           def_B1D3E; jumptable 000B1D3E default case, cases 4010-4027,4030,4032,4035-4038,4040-4044
B1D3C:  ADD             R0, R4
B1D3E:  TBB.W           [PC,R1]; switch jump
B1D42:  DCB 0x14; jump table for switch statement
B1D43:  DCB 0x8A
B1D44:  DCB 0x8A
B1D45:  DCB 0x8A
B1D46:  DCB 0x8A
B1D47:  DCB 0x8A
B1D48:  DCB 0x8A
B1D49:  DCB 0x8A
B1D4A:  DCB 0x8A
B1D4B:  DCB 0x8A
B1D4C:  DCB 0x8A
B1D4D:  DCB 0x8A
B1D4E:  DCB 0x8A
B1D4F:  DCB 0x8A
B1D50:  DCB 0x8A
B1D51:  DCB 0x8A
B1D52:  DCB 0x8A
B1D53:  DCB 0x8A
B1D54:  DCB 0x8A
B1D55:  DCB 0x1C
B1D56:  DCB 0x3A
B1D57:  DCB 0x8A
B1D58:  DCB 0x42
B1D59:  DCB 0x8A
B1D5A:  DCB 0x4A
B1D5B:  DCB 0x57
B1D5C:  DCB 0x8A
B1D5D:  DCB 0x8A
B1D5E:  DCB 0x8A
B1D5F:  DCB 0x8A
B1D60:  DCB 0x64
B1D61:  DCB 0x8A
B1D62:  DCB 0x8A
B1D63:  DCB 0x8A
B1D64:  DCB 0x8A
B1D65:  DCB 0x8A
B1D66:  DCB 0x6B
B1D67:  DCB 0x74
B1D68:  DCB 0x7D
B1D69:  ALIGN 2
B1D6A:  LDR             R0, [SP,#0x18+var_18]; jumptable 000B1D3E case 4009
B1D6C:  ADDS            R1, R0, #4
B1D6E:  STR             R1, [SP,#0x18+var_18]
B1D70:  LDR             R0, [R0]
B1D72:  CMP             R0, #0
B1D74:  BEQ             loc_B1E52
B1D76:  LDR             R1, [R4,#0x34]
B1D78:  B               loc_B1E24
B1D7A:  MOVS            R5, #0; jumptable 000B1D3E case 4028
B1D7C:  MOVW            R1, #0xFBC
B1D80:  STRD.W          R5, R5, [R4,#0x30]
B1D84:  STRD.W          R5, R5, [R4,#0x38]
B1D88:  STRD.W          R5, R5, [R4,#0x40]
B1D8C:  STRD.W          R5, R5, [R4,#0x48]
B1D90:  BLX             j_opus_custom_decoder_ctl
B1D94:  ADDS            R0, R4, R6
B1D96:  BLX             j_silk_InitDecoder
B1D9A:  MOVW            R2, #0x851F
B1D9E:  LDRD.W          R0, R1, [R4,#8]
B1DA2:  MOVT            R2, #0x51EB
B1DA6:  STR             R0, [R4,#0x30]
B1DA8:  SMMUL.W         R1, R1, R2
B1DAC:  ASRS            R0, R1, #7
B1DAE:  ADD.W           R0, R0, R1,LSR#31
B1DB2:  STR             R0, [R4,#0x40]
B1DB4:  B               def_B1D3E; jumptable 000B1D3E default case, cases 4010-4027,4030,4032,4035-4038,4040-4044
B1DB6:  LDR             R0, [SP,#0x18+var_18]; jumptable 000B1D3E case 4029
B1DB8:  ADDS            R1, R0, #4
B1DBA:  STR             R1, [SP,#0x18+var_18]
B1DBC:  LDR             R0, [R0]
B1DBE:  CMP             R0, #0
B1DC0:  BEQ             loc_B1E52
B1DC2:  LDR             R1, [R4,#0xC]
B1DC4:  B               loc_B1E24
B1DC6:  LDR             R0, [SP,#0x18+var_18]; jumptable 000B1D3E case 4031
B1DC8:  ADDS            R1, R0, #4
B1DCA:  STR             R1, [SP,#0x18+var_18]
B1DCC:  LDR             R0, [R0]
B1DCE:  CMP             R0, #0
B1DD0:  BEQ             loc_B1E52
B1DD2:  LDR             R1, [R4,#0x4C]
B1DD4:  B               loc_B1E24
B1DD6:  LDR             R1, [SP,#0x18+var_18]; jumptable 000B1D3E case 4033
B1DD8:  ADDS            R2, R1, #4
B1DDA:  STR             R2, [SP,#0x18+var_18]
B1DDC:  LDR             R2, [R1]
B1DDE:  CBZ             R2, loc_B1E52
B1DE0:  LDR             R1, [R4,#0x3C]
B1DE2:  MOVW            R3, #0x3EA
B1DE6:  CMP             R1, R3
B1DE8:  BNE             loc_B1E7A
B1DEA:  MOVW            R1, #0xFC1
B1DEE:  B               loc_B1E4A
B1DF0:  LDR             R0, [SP,#0x18+var_18]; jumptable 000B1D3E case 4034
B1DF2:  MOVS            R2, #0
B1DF4:  ADDS            R1, R0, #4
B1DF6:  STR             R1, [SP,#0x18+var_18]
B1DF8:  LDR             R0, [R0]
B1DFA:  ADD.W           R1, R0, #0x8000
B1DFE:  CMP.W           R2, R1,LSR#16
B1E02:  BNE             loc_B1E52
B1E04:  STR             R0, [R4,#0x28]
B1E06:  MOVS            R5, #0
B1E08:  B               def_B1D3E; jumptable 000B1D3E default case, cases 4010-4027,4030,4032,4035-4038,4040-4044
B1E0A:  LDR             R0, [SP,#0x18+var_18]; jumptable 000B1D3E case 4039
B1E0C:  ADDS            R1, R0, #4
B1E0E:  STR             R1, [SP,#0x18+var_18]
B1E10:  LDR             R0, [R0]
B1E12:  CBZ             R0, loc_B1E52
B1E14:  LDR             R1, [R4,#0x48]
B1E16:  B               loc_B1E24
B1E18:  LDR             R0, [SP,#0x18+var_18]; jumptable 000B1D3E case 4045
B1E1A:  ADDS            R1, R0, #4
B1E1C:  STR             R1, [SP,#0x18+var_18]
B1E1E:  LDR             R0, [R0]
B1E20:  CBZ             R0, loc_B1E52
B1E22:  LDR             R1, [R4,#0x28]
B1E24:  STR             R1, [R0]
B1E26:  MOVS            R5, #0
B1E28:  B               def_B1D3E; jumptable 000B1D3E default case, cases 4010-4027,4030,4032,4035-4038,4040-4044
B1E2A:  LDR             R1, [SP,#0x18+var_18]; jumptable 000B1D3E case 4046
B1E2C:  ADDS            R2, R1, #4
B1E2E:  STR             R2, [SP,#0x18+var_18]
B1E30:  LDR             R2, [R1]
B1E32:  CMP             R2, #1
B1E34:  BHI             loc_B1E52
B1E36:  MOVW            R1, #0xFCE
B1E3A:  B               loc_B1E4A
B1E3C:  LDR             R1, [SP,#0x18+var_18]; jumptable 000B1D3E case 4047
B1E3E:  ADDS            R2, R1, #4
B1E40:  STR             R2, [SP,#0x18+var_18]
B1E42:  LDR             R2, [R1]
B1E44:  CBZ             R2, loc_B1E52
B1E46:  MOVW            R1, #0xFCF
B1E4A:  BLX             j_opus_custom_decoder_ctl
B1E4E:  MOV             R5, R0
B1E50:  B               def_B1D3E; jumptable 000B1D3E default case, cases 4010-4027,4030,4032,4035-4038,4040-4044
B1E52:  MOV.W           R5, #0xFFFFFFFF
B1E56:  LDR             R0, =(__stack_chk_guard_ptr - 0xB1E5E); jumptable 000B1D3E default case, cases 4010-4027,4030,4032,4035-4038,4040-4044
B1E58:  LDR             R1, [SP,#0x18+var_14]
B1E5A:  ADD             R0, PC; __stack_chk_guard_ptr
B1E5C:  LDR             R0, [R0]; __stack_chk_guard
B1E5E:  LDR             R0, [R0]
B1E60:  SUBS            R0, R0, R1
B1E62:  ITTTT EQ
B1E64:  MOVEQ           R0, R5
B1E66:  ADDEQ           SP, SP, #8
B1E68:  POPEQ.W         {R11}
B1E6C:  POPEQ.W         {R4-R7,LR}
B1E70:  ITT EQ
B1E72:  ADDEQ           SP, SP, #8
B1E74:  BXEQ            LR
B1E76:  BLX             __stack_chk_fail
B1E7A:  LDR             R0, [R4,#0x24]
B1E7C:  MOVS            R5, #0
B1E7E:  STR             R0, [R2]
B1E80:  B               def_B1D3E; jumptable 000B1D3E default case, cases 4010-4027,4030,4032,4035-4038,4040-4044
