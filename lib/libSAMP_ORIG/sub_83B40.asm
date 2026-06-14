; =========================================================
; Game Engine Function: sub_83B40
; Address            : 0x83B40 - 0x84028
; =========================================================

83B40:  PUSH            {R4-R7,LR}
83B42:  ADD             R7, SP, #0xC
83B44:  PUSH.W          {R8-R11}
83B48:  SUB             SP, SP, #4
83B4A:  VPUSH           {D8-D15}
83B4E:  SUB             SP, SP, #0xE8
83B50:  LDR             R0, =(byte_1A6FAC - 0x83B58)
83B52:  LDR             R1, =(byte_1A6FA7 - 0x83B5A)
83B54:  ADD             R0, PC; byte_1A6FAC
83B56:  ADD             R1, PC; byte_1A6FA7
83B58:  LDRB            R0, [R0]
83B5A:  LDRB            R1, [R1]
83B5C:  LDR.W           R2, =(__stack_chk_guard_ptr - 0x83B66)
83B60:  CMP             R1, #0
83B62:  ADD             R2, PC; __stack_chk_guard_ptr
83B64:  LDR             R2, [R2]; __stack_chk_guard
83B66:  LDR             R2, [R2]
83B68:  STR             R2, [SP,#0x148+var_64]
83B6A:  IT NE
83B6C:  CMPNE           R0, #0
83B6E:  BEQ             loc_83B8A
83B70:  LDR             R0, =(off_114AD8 - 0x83B76)
83B72:  ADD             R0, PC; off_114AD8
83B74:  LDR             R0, [R0]; dword_1A4434
83B76:  LDR             R0, [R0]
83B78:  CMP             R0, #0
83B7A:  ITTT NE
83B7C:  LDRNE.W         R0, [R0,#0x3B0]
83B80:  LDRNE.W         R9, [R0]
83B84:  CMPNE.W         R9, #0
83B88:  BNE             loc_83BAE
83B8A:  LDR             R0, [SP,#0x148+var_64]
83B8C:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x83B94)
83B90:  ADD             R1, PC; __stack_chk_guard_ptr
83B92:  LDR             R1, [R1]; __stack_chk_guard
83B94:  LDR             R1, [R1]
83B96:  CMP             R1, R0
83B98:  ITTTT EQ
83B9A:  ADDEQ           SP, SP, #0xE8
83B9C:  VPOPEQ          {D8-D15}
83BA0:  ADDEQ           SP, SP, #4
83BA2:  POPEQ.W         {R8-R11}
83BA6:  IT EQ
83BA8:  POPEQ           {R4-R7,PC}
83BAA:  BLX             __stack_chk_fail
83BAE:  LDR             R0, =(off_114C58 - 0x83BB4)
83BB0:  ADD             R0, PC; off_114C58
83BB2:  LDR             R0, [R0]; dword_1A4510
83BB4:  LDR             R0, [R0]
83BB6:  CMP             R0, #0
83BB8:  BEQ             loc_83B8A
83BBA:  LDR             R0, =(off_114B10 - 0x83BCC)
83BBC:  VMOV.F32        S0, #24.0
83BC0:  VMOV.F32        S16, #1.0
83BC4:  VLDR            S4, =0.00052083
83BC8:  ADD             R0, PC; off_114B10
83BCA:  VMOV.F32        S24, #0.5
83BCE:  VMOV.F32        S26, #4.0
83BD2:  MOVW            R4, #0x7D24
83BD6:  LDR             R0, [R0]; dword_1A442C
83BD8:  VMOV.F32        Q7, #1.0
83BDC:  STR             R0, [SP,#0x148+var_134]
83BDE:  ADD.W           R6, R9, #0x13A0
83BE2:  VLDR            S17, =0.0039216
83BE6:  MOVT            R4, #0x66 ; 'f'
83BEA:  LDR             R0, [R0]
83BEC:  MOV.W           R8, #0
83BF0:  LDR             R1, =(off_114C24 - 0x83BFE)
83BF2:  VLDR            S19, =40.0
83BF6:  VLDR            S2, [R0,#0x58]
83BFA:  ADD             R1, PC; off_114C24
83BFC:  VLDR            S21, =100000.0
83C00:  VMUL.F32        S0, S2, S0
83C04:  LDR             R1, [R1]; dword_116D58
83C06:  VLDR            S23, =0.0
83C0A:  STR             R1, [SP,#0x148+var_130]
83C0C:  VLDR            S2, [R1]
83C10:  VADD.F32        S18, S2, S16
83C14:  VLDR            S2, [R0,#0x5C]
83C18:  ADD             R0, SP, #0x148+var_114
83C1A:  VMUL.F32        S20, S0, S4
83C1E:  VLDR            S0, =560.0
83C22:  ADDS            R0, #1
83C24:  STR             R0, [SP,#0x148+dest]
83C26:  VMUL.F32        S0, S2, S0
83C2A:  VLDR            S2, =0.00092593
83C2E:  MOVS            R0, #0
83C30:  STRD.W          R6, R0, [SP,#0x148+var_128]
83C34:  VMUL.F32        S22, S0, S2
83C38:  B               loc_83C46
83C3A:  LDR             R6, [SP,#0x148+var_128]
83C3C:  ADD.W           R8, R8, #1
83C40:  CMP.W           R8, #0x3EC
83C44:  BEQ             loc_83B8A
83C46:  ADD.W           R0, R9, R8
83C4A:  LDRB.W          R0, [R0,#0xFB4]
83C4E:  CMP             R0, #0
83C50:  BEQ             loc_83C3C
83C52:  ADD.W           R0, R9, R8,LSL#2
83C56:  LDR             R0, [R0,#4]
83C58:  CMP             R0, #0
83C5A:  ITT NE
83C5C:  LDRNE           R1, [R0]
83C5E:  CMPNE           R1, #0
83C60:  BEQ             loc_83C3C
83C62:  LDR.W           R10, [R1,#0x128]
83C66:  CMP.W           R10, #0
83C6A:  ITT NE
83C6C:  LDRBNE          R1, [R1,#0x19]
83C6E:  CMPNE           R1, #0
83C70:  BEQ             loc_83C3C
83C72:  LDR             R1, =(unk_1A6FB0 - 0x83C7E)
83C74:  ADD.W           R3, R8, R8,LSL#2
83C78:  LDRH            R2, [R6]
83C7A:  ADD             R1, PC; unk_1A6FB0
83C7C:  ADD.W           R1, R1, R3,LSL#2
83C80:  ADDS            R3, R0, #4
83C82:  CMP             R8, R2
83C84:  LDR             R0, [R1,#0xC]
83C86:  IT EQ
83C88:  ADDEQ           R3, R6, #2
83C8A:  STR             R3, [SP,#0x148+var_120]
83C8C:  CMP             R0, #0
83C8E:  BEQ             loc_83C3C
83C90:  LDR.W           R5, [R1,#8]!
83C94:  STR             R1, [SP,#0x148+var_12C]
83C96:  B               loc_83CA4
83C98:  VMOV            R1, S0
83C9C:  ADD             R0, SP, #0x148+var_108
83C9E:  BL              sub_84058
83CA2:  LDR             R5, [R5]
83CA4:  CMP             R5, #0
83CA6:  BEQ             loc_83D90
83CA8:  ADD.W           R0, R5, #0xC
83CAC:  BL              sub_860AE
83CB0:  CMP             R0, #4
83CB2:  BNE             loc_83CA2
83CB4:  LDR.W           R0, [R10,#4]
83CB8:  CMP             R0, #0
83CBA:  BEQ             loc_83CA2
83CBC:  LDR             R1, =(off_114AA8 - 0x83CC4)
83CBE:  LDR             R2, [R0]
83CC0:  ADD             R1, PC; off_114AA8
83CC2:  LDR             R6, [R1]; dword_1A4404
83CC4:  LDR             R1, [R6]
83CC6:  ADDS            R3, R1, R4
83CC8:  CMP             R2, R3
83CCA:  ITT NE
83CCC:  LDRNE.W         R0, [R0,#0xB8]
83CD0:  CMPNE           R0, #0
83CD2:  BEQ             loc_83CA2
83CD4:  LDR.W           R0, [R10,#0x5C]
83CD8:  MOVS            R2, #0
83CDA:  STR             R2, [SP,#0x148+var_100]
83CDC:  STRD.W          R2, R2, [SP,#0x148+var_108]
83CE0:  CBZ             R0, loc_83CF8
83CE2:  MOVW            R2, #0x4A9D
83CE6:  MOV             R11, R4
83CE8:  MOVT            R2, #0x4A ; 'J'
83CEC:  ADDS            R4, R1, R2
83CEE:  ADD             R1, SP, #0x148+var_108
83CF0:  MOVS            R2, #8
83CF2:  MOVS            R3, #0
83CF4:  BLX             R4
83CF6:  MOV             R4, R11
83CF8:  LDR             R0, =(off_114AB0 - 0x83D06)
83CFA:  MOV             R1, #0xF8E1D
83D02:  ADD             R0, PC; off_114AB0
83D04:  LDR             R0, [R0]; dword_1A4408
83D06:  LDR             R0, [R0]
83D08:  ADD             R1, R0
83D0A:  MOV             R0, R10
83D0C:  BLX             R1
83D0E:  VMOV            S0, R0
83D12:  VCMP.F32        S0, S19
83D16:  VMRS            APSR_nzcv, FPSCR
83D1A:  BPL             loc_83CA2
83D1C:  VMOV.F32        S0, S21
83D20:  LDR.W           R1, [R10,#4]
83D24:  CMP             R1, #0
83D26:  BEQ             loc_83C98
83D28:  VMOV.F32        S0, S21
83D2C:  LDR             R0, [R6]
83D2E:  LDR             R2, [R1]
83D30:  ADDS            R3, R0, R4
83D32:  CMP             R2, R3
83D34:  BEQ             loc_83C98
83D36:  LDR             R1, [R1,#0x14]
83D38:  VMOV.F32        S0, S23
83D3C:  VMOV.F32        S2, S23
83D40:  CMP             R1, #0
83D42:  ITTTT NE
83D44:  LDRNE           R2, [R1,#0x30]
83D46:  LDRNE           R3, [R1,#0x34]
83D48:  LDRNE           R1, [R1,#0x38]
83D4A:  VMOVNE          S0, R1
83D4E:  MOVW            R1, #0x28D4
83D52:  VMOV.F32        S4, S23
83D56:  MOVT            R1, #0x95
83D5A:  ADD             R0, R1
83D5C:  ITT NE
83D5E:  VMOVNE          S4, R3
83D62:  VMOVNE          S2, R2
83D66:  VLDR            S8, [R0,#4]
83D6A:  VLDR            S6, [R0]
83D6E:  VSUB.F32        S4, S4, S8
83D72:  VLDR            S10, [R0,#8]
83D76:  VSUB.F32        S2, S2, S6
83D7A:  VSUB.F32        S0, S0, S10
83D7E:  VMUL.F32        S4, S4, S4
83D82:  VMLA.F32        S4, S2, S2
83D86:  VMLA.F32        S4, S0, S0
83D8A:  VSQRT.F32       S0, S4
83D8E:  B               loc_83C98
83D90:  LDR             R0, [SP,#0x148+var_124]
83D92:  CMP             R0, #4
83D94:  BGE.W           loc_83C3A
83D98:  LDR.W           R10, [SP,#0x148+var_120]
83D9C:  LDRB.W          R0, [R10]
83DA0:  CMP             R0, #0
83DA2:  BEQ.W           loc_83C3A
83DA6:  LDR             R0, [SP,#0x148+var_130]
83DA8:  VSTR            S22, [SP,#0x148+var_EC]
83DAC:  VSTR            S20, [SP,#0x148+var_F0]
83DB0:  VLDR            S0, [R0]
83DB4:  VMUL.F32        S25, S0, S24
83DB8:  BL              sub_8C550
83DBC:  LDR             R1, =(dword_1A6FA8 - 0x83DCA)
83DBE:  MOVS            R2, #0
83DC0:  VLDR            S0, [SP,#0x148+var_F0]
83DC4:  ADD             R5, SP, #0x148+var_108
83DC6:  ADD             R1, PC; dword_1A6FA8
83DC8:  VLDR            S2, [SP,#0x148+var_EC]
83DCC:  VADD.F32        S0, S25, S0
83DD0:  MOV             R3, R5
83DD2:  LDR             R1, [R1]
83DD4:  VADD.F32        S2, S25, S2
83DD8:  LDR             R1, [R1]
83DDA:  STRD.W          R2, R2, [SP,#0x148+var_114]
83DDE:  MOV.W           R2, #0x3F800000
83DE2:  STRD.W          R2, R2, [SP,#0x148+var_F8]
83DE6:  ADD             R2, SP, #0x148+var_114
83DE8:  STR             R2, [SP,#0x148+var_148]
83DEA:  ADD             R2, SP, #0x148+var_F8
83DEC:  STR             R2, [SP,#0x148+var_144]; float
83DEE:  MOV.W           R2, #0xFFFFFFFF
83DF2:  STR             R2, [SP,#0x148+var_140]
83DF4:  ADD             R2, SP, #0x148+var_F0
83DF6:  VSTR            S2, [SP,#0x148+var_104]
83DFA:  VSTR            S0, [SP,#0x148+var_108]
83DFE:  BL              sub_9DF08
83E02:  LDR             R2, =(aSD - 0x83E10); "%s (%d)" ...
83E04:  ADD             R6, SP, #0x148+src
83E06:  MOV             R3, R10
83E08:  STR.W           R8, [SP,#0x148+var_148]
83E0C:  ADD             R2, PC; "%s (%d)"
83E0E:  MOV             R0, R6
83E10:  BL              sub_84164
83E14:  VLDR            S0, [SP,#0x148+var_F0]
83E18:  LDR             R0, [SP,#0x148+var_134]
83E1A:  VADD.F32        S0, S25, S0
83E1E:  LDR             R1, [SP,#0x148+var_EC]
83E20:  STR             R1, [SP,#0x148+var_F4]
83E22:  LDR             R0, [R0]
83E24:  VST1.64         {D14-D15}, [R5]
83E28:  LDR.W           R11, [R0,#0x70]
83E2C:  MOV             R0, R6; s
83E2E:  VADD.F32        S0, S0, S26
83E32:  VSTR            S0, [SP,#0x148+var_F8]
83E36:  BLX             strlen
83E3A:  CMN.W           R0, #0x10
83E3E:  BCS.W           loc_84022
83E42:  MOV             R5, R0
83E44:  CMP             R0, #0xB
83E46:  BCS             loc_83E54
83E48:  LDR             R6, [SP,#0x148+dest]
83E4A:  LSLS            R0, R5, #1
83E4C:  STRB.W          R0, [SP,#0x148+var_114]
83E50:  CBNZ            R5, loc_83E6E
83E52:  B               loc_83E78
83E54:  ADD.W           R0, R5, #0x10
83E58:  BIC.W           R10, R0, #0xF
83E5C:  MOV             R0, R10; unsigned int
83E5E:  BLX             j__Znwj; operator new(uint)
83E62:  MOV             R6, R0
83E64:  STRD.W          R5, R0, [SP,#0x148+var_110]
83E68:  ADD.W           R0, R10, #1
83E6C:  STR             R0, [SP,#0x148+var_114]
83E6E:  ADD             R1, SP, #0x148+src; src
83E70:  MOV             R0, R6; dest
83E72:  MOV             R2, R5; n
83E74:  BLX             j_memcpy
83E78:  LDR             R0, [SP,#0x148+var_130]
83E7A:  MOVS            R1, #0
83E7C:  STRB            R1, [R6,R5]
83E7E:  VLDR            S0, [R0]
83E82:  VMUL.F32        S0, S0, S24
83E86:  STR             R1, [SP,#0x148+var_140]; int
83E88:  ADD             R2, SP, #0x148+var_108; int
83E8A:  STR             R1, [SP,#0x148+var_148]; int
83E8C:  ADD             R1, SP, #0x148+var_F8; int
83E8E:  ADD             R3, SP, #0x148+var_114; int
83E90:  MOV             R0, R11; int
83E92:  VSTR            S0, [SP,#0x148+var_144]
83E96:  BL              sub_7178C
83E9A:  LDRB.W          R0, [SP,#0x148+var_114]
83E9E:  MOV             R11, R4
83EA0:  LSLS            R0, R0, #0x1F
83EA2:  ITT NE
83EA4:  LDRNE           R0, [SP,#0x148+var_10C]; void *
83EA6:  BLXNE           j__ZdlPv; operator delete(void *)
83EAA:  MOVS            R0, #0
83EAC:  ADD             R1, SP, #0x148+src; int
83EAE:  MOVT            R0, #0xBF80
83EB2:  MOVS            R2, #0; int
83EB4:  STR             R0, [SP,#0x148+var_148]; float
83EB6:  ADD             R0, SP, #0x148+var_108; int
83EB8:  MOVS            R3, #0; int
83EBA:  BL              sub_899BC
83EBE:  VLDR            S0, [SP,#0x148+var_F8]
83EC2:  VLDR            S2, [SP,#0x148+var_108]
83EC6:  LDR             R1, [SP,#0x148+var_12C]
83EC8:  VADD.F32        S0, S2, S0
83ECC:  LDR             R0, [SP,#0x148+var_F4]
83ECE:  STR             R0, [SP,#0x148+var_118]
83ED0:  LDR             R4, [R1]
83ED2:  VADD.F32        S0, S0, S16
83ED6:  VSTR            S0, [SP,#0x148+var_11C]
83EDA:  CMP             R4, #0
83EDC:  BEQ.W           loc_84012
83EE0:  ADD.W           R5, R4, #0xC
83EE4:  MOV             R0, R5
83EE6:  BL              sub_860B2
83EEA:  CBNZ            R0, loc_83F2C
83EEC:  LDR             R4, [R4]
83EEE:  CMP             R4, #0
83EF0:  BNE             loc_83EE0
83EF2:  B               loc_84012
83EF4:  DCD byte_1A6FAC - 0x83B58
83EF8:  DCD byte_1A6FA7 - 0x83B5A
83EFC:  DCD off_114AD8 - 0x83B76
83F00:  DCD off_114C58 - 0x83BB4
83F04:  DCD off_114B10 - 0x83BCC
83F08:  DCFS 0.00052083
83F0C:  DCFS 0.0039216
83F10:  DCD off_114C24 - 0x83BFE
83F14:  DCFS 40.0
83F18:  DCFS 100000.0
83F1C:  DCFS 0.0
83F20:  DCFS 560.0
83F24:  DCFS 0.00092593
83F28:  DCD unk_1A6FB0 - 0x83C7E
83F2C:  MOV             R0, R5
83F2E:  BL              sub_860B6
83F32:  LDRB            R1, [R0]
83F34:  ADD             R4, SP, #0x148+var_E8
83F36:  LDR             R3, [R0,#8]
83F38:  LDR             R2, =(aS_0 - 0x83F44); "[%s]" ...
83F3A:  LSLS            R1, R1, #0x1F
83F3C:  IT EQ
83F3E:  ADDEQ           R3, R0, #1
83F40:  ADD             R2, PC; "[%s]"
83F42:  MOV             R0, R4
83F44:  BL              sub_84164
83F48:  LDR             R0, [SP,#0x148+var_134]
83F4A:  LDR             R0, [R0]
83F4C:  LDR.W           R10, [R0,#0x70]
83F50:  MOV             R0, R5
83F52:  BL              sub_860B2
83F56:  LSRS            R2, R0, #0x18
83F58:  UBFX.W          R1, R0, #0x10, #8
83F5C:  VMOV            S0, R2
83F60:  UBFX.W          R2, R0, #8, #8
83F64:  UXTB            R0, R0
83F66:  VMOV            S2, R1
83F6A:  VMOV            S6, R0
83F6E:  MOV             R0, R4; s
83F70:  VMOV            S4, R2
83F74:  VCVT.F32.U32    S0, S0
83F78:  VCVT.F32.U32    S2, S2
83F7C:  VCVT.F32.U32    S4, S4
83F80:  VCVT.F32.U32    S6, S6
83F84:  VMUL.F32        S0, S0, S17
83F88:  VMUL.F32        S2, S2, S17
83F8C:  VMUL.F32        S4, S4, S17
83F90:  VMUL.F32        S6, S6, S17
83F94:  VSTR            S0, [SP,#0x148+var_FC]
83F98:  VSTR            S2, [SP,#0x148+var_100]
83F9C:  VSTR            S4, [SP,#0x148+var_104]
83FA0:  VSTR            S6, [SP,#0x148+var_108]
83FA4:  BLX             strlen
83FA8:  CMN.W           R0, #0x10
83FAC:  BCS             loc_84022
83FAE:  MOV             R5, R0
83FB0:  CMP             R0, #0xB
83FB2:  BCS             loc_83FC0
83FB4:  LDR             R6, [SP,#0x148+dest]
83FB6:  LSLS            R0, R5, #1
83FB8:  STRB.W          R0, [SP,#0x148+var_114]
83FBC:  CBNZ            R5, loc_83FD8
83FBE:  B               loc_83FE2
83FC0:  ADD.W           R0, R5, #0x10
83FC4:  BIC.W           R4, R0, #0xF
83FC8:  MOV             R0, R4; unsigned int
83FCA:  BLX             j__Znwj; operator new(uint)
83FCE:  MOV             R6, R0
83FD0:  STRD.W          R5, R0, [SP,#0x148+var_110]
83FD4:  ADDS            R0, R4, #1
83FD6:  STR             R0, [SP,#0x148+var_114]
83FD8:  ADD             R1, SP, #0x148+var_E8; src
83FDA:  MOV             R0, R6; dest
83FDC:  MOV             R2, R5; n
83FDE:  BLX             j_memcpy
83FE2:  LDR             R0, [SP,#0x148+var_130]
83FE4:  MOVS            R1, #0
83FE6:  STRB            R1, [R6,R5]
83FE8:  VLDR            S0, [R0]
83FEC:  VMUL.F32        S0, S0, S24
83FF0:  STR             R1, [SP,#0x148+var_140]; int
83FF2:  ADD             R2, SP, #0x148+var_108; int
83FF4:  STR             R1, [SP,#0x148+var_148]; int
83FF6:  ADD             R1, SP, #0x148+var_11C; int
83FF8:  ADD             R3, SP, #0x148+var_114; int
83FFA:  MOV             R0, R10; int
83FFC:  VSTR            S0, [SP,#0x148+var_144]
84000:  BL              sub_7178C
84004:  LDRB.W          R0, [SP,#0x148+var_114]
84008:  LSLS            R0, R0, #0x1F
8400A:  BEQ             loc_84012
8400C:  LDR             R0, [SP,#0x148+var_10C]; void *
8400E:  BLX             j__ZdlPv; operator delete(void *)
84012:  VADD.F32        S22, S18, S22
84016:  LDR             R6, [SP,#0x148+var_128]
84018:  LDR             R0, [SP,#0x148+var_124]
8401A:  MOV             R4, R11
8401C:  ADDS            R0, #1
8401E:  STR             R0, [SP,#0x148+var_124]
84020:  B               loc_83C3C
84022:  ADD             R0, SP, #0x148+var_114
84024:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
