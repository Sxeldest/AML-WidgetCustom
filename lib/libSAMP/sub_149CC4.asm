; =========================================================
; Game Engine Function: sub_149CC4
; Address            : 0x149CC4 - 0x149F3C
; =========================================================

149CC4:  PUSH            {R4-R7,LR}
149CC6:  ADD             R7, SP, #0xC
149CC8:  PUSH.W          {R8-R11}
149CCC:  SUB             SP, SP, #4
149CCE:  VPUSH           {D8}
149CD2:  SUB             SP, SP, #0x88
149CD4:  MOV             R4, R0
149CD6:  LDR             R0, [R0,#4]
149CD8:  CMP             R0, #0
149CDA:  BEQ.W           loc_149F28
149CDE:  ADD             R1, SP, #0xB0+var_68
149CE0:  BL              sub_F8910
149CE4:  LDR             R0, [R4,#4]
149CE6:  BL              sub_F8C70
149CEA:  VLDR            S0, [R4,#0x5C]
149CEE:  CMP             R0, #0
149CF0:  BEQ             loc_149DE0
149CF2:  VMOV            R0, S0
149CF6:  LDR             R1, [SP,#0xB0+var_38]
149CF8:  BL              sub_108700
149CFC:  LDR             R2, [R4,#0x60]
149CFE:  LDR             R1, [SP,#0xB0+var_34]
149D00:  STR             R0, [R4,#0x40]
149D02:  MOV             R0, R2
149D04:  BL              sub_108700
149D08:  LDR             R2, [R4,#0x64]
149D0A:  LDR             R1, [SP,#0xB0+var_30]
149D0C:  STR             R0, [R4,#0x44]
149D0E:  MOV             R0, R2
149D10:  BL              sub_108700
149D14:  VLDR            S16, =0.05
149D18:  VMOV            S4, R0
149D1C:  VLDR            S0, [R4,#0x44]
149D20:  VCMP.F32        S4, S16
149D24:  VLDR            S2, [R4,#0x40]
149D28:  VMRS            APSR_nzcv, FPSCR
149D2C:  STR             R0, [R4,#0x48]
149D2E:  ITT LE
149D30:  VCMPLE.F32      S2, S16
149D34:  VMRSLE          APSR_nzcv, FPSCR
149D38:  BLE.W           loc_149E42
149D3C:  LDR             R0, [R4,#4]
149D3E:  BL              sub_109864
149D42:  CMP             R0, #4
149D44:  BEQ             loc_149D5C
149D46:  LDR             R0, [R4,#4]
149D48:  BL              sub_109864
149D4C:  CMP             R0, #5
149D4E:  BEQ             loc_149D5C
149D50:  LDR             R0, [R4,#4]
149D52:  BL              sub_109864
149D56:  CMP             R0, #3
149D58:  BNE.W           loc_149F36
149D5C:  VMOV.F32        S0, #2.0
149D60:  VMOV.F32        S2, #8.0
149D64:  VLDR            S4, [R4,#0x40]
149D68:  VCMP.F32        S4, S2
149D6C:  VMRS            APSR_nzcv, FPSCR
149D70:  ITTT LE
149D72:  VLDRLE          S4, [R4,#0x44]
149D76:  VCMPLE.F32      S4, S2
149D7A:  VMRSLE          APSR_nzcv, FPSCR
149D7E:  BLE             loc_149E4E
149D80:  ADD.W           R11, SP, #0xB0+var_54
149D84:  LDR             R0, [SP,#0xB0+var_68]
149D86:  STR             R0, [SP,#0xB0+var_78]
149D88:  ADD.W           LR, SP, #0xB0+var_60
149D8C:  LDR             R0, [SP,#0xB0+var_64]
149D8E:  LDM.W           R11, {R5,R6,R8-R11}
149D92:  LDR             R2, [R4,#4]
149D94:  STR             R0, [SP,#0xB0+var_7C]
149D96:  LDR             R0, [SP,#0xB0+var_2C]
149D98:  VLDR            S0, [R4,#0x5C]
149D9C:  VLDR            S2, [R4,#0x60]
149DA0:  VLDR            S4, [R4,#0x64]
149DA4:  LDR             R1, [SP,#0xB0+var_3C]
149DA6:  STR             R0, [SP,#0xB0+var_80]
149DA8:  ADD             R0, SP, #0xB0+var_A8
149DAA:  STM.W           R0, {R5,R6,R8-R11}
149DAE:  MOV             R0, R2
149DB0:  STR             R1, [SP,#0xB0+var_90]
149DB2:  LDRD.W          R2, R1, [SP,#0xB0+var_7C]
149DB6:  LDM.W           LR, {R3,R12,LR}
149DBA:  VSTR            S0, [SP,#0xB0+var_38]
149DBE:  VSTR            S2, [SP,#0xB0+var_34]
149DC2:  VSTR            S4, [SP,#0xB0+var_30]
149DC6:  VSTR            S0, [SP,#0xB0+var_8C]
149DCA:  VSTR            S2, [SP,#0xB0+var_88]
149DCE:  VSTR            S4, [SP,#0xB0+var_84]
149DD2:  STRD.W          R12, LR, [SP,#0xB0+var_B0]
149DD6:  BL              sub_F894A
149DDA:  ADD.W           R3, R4, #0x68 ; 'h'
149DDE:  B               loc_149F20
149DE0:  LDR             R1, [R4,#4]
149DE2:  ADD.W           LR, SP, #0xB0+var_58
149DE6:  LDR             R0, [SP,#0xB0+var_68]
149DE8:  ADD.W           R10, SP, #0xB0+var_64
149DEC:  STR             R0, [SP,#0xB0+var_78]
149DEE:  LDR             R0, [SP,#0xB0+var_2C]
149DF0:  VLDR            S2, [R4,#0x60]
149DF4:  VLDR            S4, [R4,#0x64]
149DF8:  LDM.W           LR, {R9,R12,LR}
149DFC:  LDRD.W          R6, R4, [SP,#0xB0+var_40]
149E00:  LDRD.W          R11, R5, [SP,#0xB0+var_48]
149E04:  STR             R0, [SP,#0xB0+var_80]
149E06:  MOV             R0, R1
149E08:  LDR             R1, [SP,#0xB0+var_78]
149E0A:  LDM.W           R10, {R2,R3,R10}
149E0E:  LDR.W           R8, [SP,#0xB0+var_4C]
149E12:  VSTR            S0, [SP,#0xB0+var_38]
149E16:  VSTR            S2, [SP,#0xB0+var_34]
149E1A:  VSTR            S4, [SP,#0xB0+var_30]
149E1E:  STR             R4, [SP,#0xB0+var_90]
149E20:  VSTR            S0, [SP,#0xB0+var_8C]
149E24:  VSTR            S2, [SP,#0xB0+var_88]
149E28:  VSTR            S4, [SP,#0xB0+var_84]
149E2C:  STRD.W          R10, R9, [SP,#0xB0+var_B0]
149E30:  STRD.W          R12, LR, [SP,#0xB0+var_A8]
149E34:  STRD.W          R8, R11, [SP,#0xB0+var_A0]
149E38:  STRD.W          R5, R6, [SP,#0xB0+var_98]
149E3C:  BL              sub_F894A
149E40:  B               loc_149F28
149E42:  VCMP.F32        S0, S16
149E46:  VMRS            APSR_nzcv, FPSCR
149E4A:  BLE             loc_149F28
149E4C:  B               loc_149D3C
149E4E:  VLDR            S2, [R4,#0x48]
149E52:  VCMP.F32        S2, S0
149E56:  VMRS            APSR_nzcv, FPSCR
149E5A:  BGT             loc_149D80
149E5C:  LDR             R0, [R4,#4]
149E5E:  ADD             R1, SP, #0xB0+var_74
149E60:  BL              sub_F8994
149E64:  VLDR            S0, [SP,#0xB0+var_74]
149E68:  VCMP.F32        S0, S16
149E6C:  VMRS            APSR_nzcv, FPSCR
149E70:  BLE             loc_149E8A
149E72:  VLDR            S2, [SP,#0xB0+var_38]
149E76:  VLDR            S4, [R4,#0x5C]
149E7A:  VSUB.F32        S2, S4, S2
149E7E:  VLDR            S4, =0.06
149E82:  VMLA.F32        S0, S2, S4
149E86:  VSTR            S0, [SP,#0xB0+var_74]
149E8A:  VLDR            S2, [SP,#0xB0+var_70]
149E8E:  VCMP.F32        S2, S16
149E92:  VMRS            APSR_nzcv, FPSCR
149E96:  BLE             loc_149EB0
149E98:  VLDR            S4, [SP,#0xB0+var_34]
149E9C:  VLDR            S6, [R4,#0x60]
149EA0:  VSUB.F32        S4, S6, S4
149EA4:  VLDR            S6, =0.06
149EA8:  VMLA.F32        S2, S4, S6
149EAC:  VSTR            S2, [SP,#0xB0+var_70]
149EB0:  VLDR            S2, [SP,#0xB0+var_6C]
149EB4:  VCMP.F32        S2, S16
149EB8:  VMRS            APSR_nzcv, FPSCR
149EBC:  BLE             loc_149ED6
149EBE:  VLDR            S4, [SP,#0xB0+var_30]
149EC2:  VLDR            S6, [R4,#0x64]
149EC6:  VSUB.F32        S4, S6, S4
149ECA:  VLDR            S6, =0.06
149ECE:  VMLA.F32        S2, S4, S6
149ED2:  VSTR            S2, [SP,#0xB0+var_6C]
149ED6:  VMOV            R0, S0
149EDA:  MOVS            R1, #0
149EDC:  BL              sub_108700
149EE0:  VLDR            S16, =0.01
149EE4:  VMOV            S0, R0
149EE8:  VCMP.F32        S0, S16
149EEC:  VMRS            APSR_nzcv, FPSCR
149EF0:  BGT             loc_149F1E
149EF2:  LDR             R0, [SP,#0xB0+var_70]
149EF4:  MOVS            R1, #0
149EF6:  BL              sub_108700
149EFA:  VMOV            S0, R0
149EFE:  VCMP.F32        S0, S16
149F02:  VMRS            APSR_nzcv, FPSCR
149F06:  BGT             loc_149F1E
149F08:  LDR             R0, [SP,#0xB0+var_6C]
149F0A:  MOVS            R1, #0
149F0C:  BL              sub_108700
149F10:  VMOV            S0, R0
149F14:  VCMP.F32        S0, S16
149F18:  VMRS            APSR_nzcv, FPSCR
149F1C:  BLE             loc_149F28
149F1E:  ADD             R3, SP, #0xB0+var_74
149F20:  LDR             R0, [R4,#4]
149F22:  LDM             R3, {R1-R3}
149F24:  BL              sub_F89BC
149F28:  ADD             SP, SP, #0x88
149F2A:  VPOP            {D8}
149F2E:  ADD             SP, SP, #4
149F30:  POP.W           {R8-R11}
149F34:  POP             {R4-R7,PC}
149F36:  VMOV.F32        S0, #0.5
149F3A:  B               loc_149D60
