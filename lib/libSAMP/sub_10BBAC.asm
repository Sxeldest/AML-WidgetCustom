; =========================================================
; Game Engine Function: sub_10BBAC
; Address            : 0x10BBAC - 0x10BCF8
; =========================================================

10BBAC:  PUSH            {R4-R7,LR}
10BBAE:  ADD             R7, SP, #0xC
10BBB0:  PUSH.W          {R8-R11}
10BBB4:  SUB             SP, SP, #4
10BBB6:  VPUSH           {D8-D12}
10BBBA:  SUB             SP, SP, #0x78
10BBBC:  LDR             R4, [R0,#0x50]
10BBBE:  MOV             R1, R0
10BBC0:  STR             R0, [SP,#0xC0+var_A8]
10BBC2:  CMP             R4, #0
10BBC4:  BEQ.W           loc_10BCEA
10BBC8:  VMOV.F32        S16, #15.0
10BBCC:  LDR             R0, [SP,#0xC0+var_A8]
10BBCE:  ADD.W           R10, SP, #0xC0+var_58
10BBD2:  ADD.W           R8, SP, #0xC0+var_54
10BBD6:  ADD.W           R6, R0, #0x48 ; 'H'
10BBDA:  LDR             R0, =(unk_B400A - 0x10BBEC)
10BBDC:  ADD.W           R9, SP, #0xC0+var_50
10BBE0:  VLDR            S18, =0.0475
10BBE4:  VLDR            S20, =0.53
10BBE8:  ADD             R0, PC; unk_B400A
10BBEA:  STR             R0, [SP,#0xC0+var_B4]
10BBEC:  MOV             R11, R4
10BBEE:  LDRH.W          R0, [R11,#8]!
10BBF2:  BL              sub_15E5D4
10BBF6:  CMP             R0, #0
10BBF8:  BEQ             loc_10BCD8
10BBFA:  MOV             R5, R0
10BBFC:  BL              sub_F8D40
10BC00:  VMOV            S22, R0
10BC04:  VCMP.F32        S22, S16
10BC08:  VMRS            APSR_nzcv, FPSCR
10BC0C:  BGT             loc_10BCE2
10BC0E:  ADD             R1, SP, #0xC0+var_98
10BC10:  MOV             R0, R5
10BC12:  BL              sub_F8910
10BC16:  ADD             R2, SP, #0xC0+var_A4
10BC18:  MOV             R0, R5
10BC1A:  MOVS            R1, #5
10BC1C:  BL              sub_104D90
10BC20:  LDR             R0, [SP,#0xC0+var_A0]
10BC22:  STR             R0, [SP,#0xC0+var_AC]
10BC24:  LDR             R0, [SP,#0xC0+var_A4]
10BC26:  STR             R0, [SP,#0xC0+var_B0]
10BC28:  VLDR            S24, [SP,#0xC0+var_9C]
10BC2C:  BL              sub_F0B30
10BC30:  STRD.W          R8, R10, [SP,#0xC0+var_C0]
10BC34:  MOV             R5, R0
10BC36:  LDR.W           R8, [SP,#0xC0+var_B4]
10BC3A:  MOV             R0, R9
10BC3C:  MOV             R1, R6
10BC3E:  MOV             R2, R11
10BC40:  STR.W           R11, [SP,#0xC0+var_54]
10BC44:  MOV             R3, R8
10BC46:  BL              sub_10C0B8
10BC4A:  LDR             R0, [SP,#0xC0+var_50]
10BC4C:  LDR             R0, [R0,#0xC]
10BC4E:  SUBS            R0, R5, R0
10BC50:  CMP             R0, #0xC9
10BC52:  BCC             loc_10BC92
10BC54:  MOV             R0, R9
10BC56:  MOV             R1, R6
10BC58:  MOV             R2, R11
10BC5A:  MOV             R3, R8
10BC5C:  ADD             R5, SP, #0xC0+var_54
10BC5E:  STR.W           R11, [SP,#0xC0+var_54]
10BC62:  STRD.W          R5, R10, [SP,#0xC0+var_C0]
10BC66:  BL              sub_10C0B8
10BC6A:  LDR             R0, [SP,#0xC0+var_50]
10BC6C:  LDR             R1, [R0,#0x10]
10BC6E:  ADDS            R1, #1
10BC70:  STR             R1, [R0,#0x10]
10BC72:  BL              sub_F0B30
10BC76:  STR             R0, [SP,#0xC0+var_B8]
10BC78:  MOV             R0, R9
10BC7A:  MOV             R1, R6
10BC7C:  MOV             R2, R11
10BC7E:  MOV             R3, R8
10BC80:  STR.W           R11, [SP,#0xC0+var_54]
10BC84:  STRD.W          R5, R10, [SP,#0xC0+var_C0]
10BC88:  BL              sub_10C0B8
10BC8C:  LDR             R0, [SP,#0xC0+var_50]
10BC8E:  LDR             R1, [SP,#0xC0+var_B8]
10BC90:  STR             R1, [R0,#0xC]
10BC92:  VMOV.F32        S0, S20
10BC96:  MOV             R0, R9
10BC98:  MOV             R1, R6
10BC9A:  MOV             R2, R11
10BC9C:  MOV             R3, R8
10BC9E:  ADD             R5, SP, #0xC0+var_54
10BCA0:  STR.W           R11, [SP,#0xC0+var_54]
10BCA4:  STRD.W          R5, R10, [SP,#0xC0+var_C0]
10BCA8:  VMLA.F32        S0, S22, S18
10BCAC:  VADD.F32        S22, S0, S24
10BCB0:  BL              sub_10C0B8
10BCB4:  VMOV            R3, S22
10BCB8:  LDR             R0, [SP,#0xC0+var_50]
10BCBA:  LDR             R0, [R0,#0x10]
10BCBC:  ASRS            R1, R0, #0x1F
10BCBE:  ADD.W           R1, R0, R1,LSR#30
10BCC2:  BIC.W           R1, R1, #3
10BCC6:  SUBS            R0, R0, R1
10BCC8:  STR             R0, [SP,#0xC0+var_C0]
10BCCA:  LDR             R0, [SP,#0xC0+var_A8]
10BCCC:  LDRD.W          R1, R2, [SP,#0xC0+var_B0]
10BCD0:  BL              sub_10BD04
10BCD4:  MOV             R8, R5
10BCD6:  B               loc_10BCE2
10BCD8:  LDRH.W          R1, [R11]
10BCDC:  LDR             R0, [SP,#0xC0+var_A8]
10BCDE:  BL              sub_10BD3C
10BCE2:  LDR             R4, [R4]
10BCE4:  CMP             R4, #0
10BCE6:  BNE.W           loc_10BBEC
10BCEA:  ADD             SP, SP, #0x78 ; 'x'
10BCEC:  VPOP            {D8-D12}
10BCF0:  ADD             SP, SP, #4
10BCF2:  POP.W           {R8-R11}
10BCF6:  POP             {R4-R7,PC}
