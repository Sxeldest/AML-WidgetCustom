; =========================================================
; Game Engine Function: _ZN10CGameLogic36CalcDistanceToForbiddenTrainCrossingE7CVectorS0_bPS0_
; Address            : 0x309CF4 - 0x309F1A
; =========================================================

309CF4:  PUSH            {R4-R7,LR}
309CF6:  ADD             R7, SP, #0xC
309CF8:  PUSH.W          {R8-R11}
309CFC:  SUB             SP, SP, #4
309CFE:  VPUSH           {D8-D9}
309D02:  MOV             R6, R0
309D04:  MOVS            R0, #(dword_B4+1); this
309D06:  MOV             R8, R3
309D08:  MOV             R5, R2
309D0A:  MOV             R4, R1
309D0C:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
309D10:  VMOV            S0, R0
309D14:  LDRD.W          R9, R11, [R7,#arg_0]
309D18:  LDR.W           R10, [R7,#arg_8]
309D1C:  VCMP.F32        S0, #0.0
309D20:  VLDR            S16, =100000.0
309D24:  VMRS            APSR_nzcv, FPSCR
309D28:  BNE             loc_309DBE
309D2A:  VLDR            S2, =82.0
309D2E:  VMOV            S6, R6
309D32:  VLDR            S0, =-1021.0
309D36:  VMOV            S8, R4
309D3A:  VSUB.F32        S2, S2, S6
309D3E:  VLDR            S4, =0.0
309D42:  VSUB.F32        S0, S0, S8
309D46:  VMOV            S10, R9
309D4A:  VMOV            S12, R5
309D4E:  VMOV            S14, R8
309D52:  VSUB.F32        S4, S4, S12
309D56:  VMUL.F32        S12, S2, S14
309D5A:  VMUL.F32        S10, S0, S10
309D5E:  VMOV            S14, R11
309D62:  VMUL.F32        S14, S4, S14
309D66:  VADD.F32        S10, S12, S10
309D6A:  VADD.F32        S10, S14, S10
309D6E:  VCMPE.F32       S10, #0.0
309D72:  VMRS            APSR_nzcv, FPSCR
309D76:  BGT             loc_309D7E
309D78:  CMP.W           R10, #1
309D7C:  BNE             loc_309DBE
309D7E:  VLDR            S10, =1021.0
309D82:  VLDR            S12, =-82.0
309D86:  VADD.F32        S8, S8, S10
309D8A:  VLDR            S16, =100000.0
309D8E:  VADD.F32        S6, S6, S12
309D92:  VMUL.F32        S8, S8, S8
309D96:  VMUL.F32        S6, S6, S6
309D9A:  VADD.F32        S6, S6, S8
309D9E:  VSQRT.F32       S6, S6
309DA2:  VCMPE.F32       S6, S16
309DA6:  VMRS            APSR_nzcv, FPSCR
309DAA:  BGE             loc_309DBE
309DAC:  VMOV.F32        S16, S6
309DB0:  LDR             R0, [R7,#arg_C]
309DB2:  VSTR            S2, [R0]
309DB6:  VSTR            S0, [R0,#4]
309DBA:  VSTR            S4, [R0,#8]
309DBE:  MOVS            R0, #(dword_B4+1); this
309DC0:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
309DC4:  VMOV.F32        S18, #1.0
309DC8:  VMOV            S0, R0
309DCC:  VCMP.F32        S0, S18
309DD0:  VMRS            APSR_nzcv, FPSCR
309DD4:  BNE             loc_309E66
309DD6:  VLDR            S2, =-1568.0
309DDA:  VMOV            S6, R6
309DDE:  VLDR            S0, =537.0
309DE2:  VMOV            S8, R4
309DE6:  VSUB.F32        S2, S2, S6
309DEA:  VLDR            S4, =0.0
309DEE:  VSUB.F32        S0, S0, S8
309DF2:  VMOV            S10, R9
309DF6:  VMOV            S12, R5
309DFA:  VMOV            S14, R8
309DFE:  VSUB.F32        S4, S4, S12
309E02:  VMUL.F32        S12, S2, S14
309E06:  VMUL.F32        S10, S0, S10
309E0A:  VMOV            S14, R11
309E0E:  VMUL.F32        S14, S4, S14
309E12:  VADD.F32        S10, S12, S10
309E16:  VADD.F32        S10, S14, S10
309E1A:  VCMPE.F32       S10, #0.0
309E1E:  VMRS            APSR_nzcv, FPSCR
309E22:  BGT             loc_309E2A
309E24:  CMP.W           R10, #1
309E28:  BNE             loc_309E66
309E2A:  VLDR            S10, =-537.0
309E2E:  VLDR            S12, =1568.0
309E32:  VADD.F32        S8, S8, S10
309E36:  VADD.F32        S6, S6, S12
309E3A:  VMUL.F32        S8, S8, S8
309E3E:  VMUL.F32        S6, S6, S6
309E42:  VADD.F32        S6, S6, S8
309E46:  VSQRT.F32       S6, S6
309E4A:  VCMPE.F32       S6, S16
309E4E:  VMRS            APSR_nzcv, FPSCR
309E52:  BGE             loc_309E66
309E54:  VMOV.F32        S16, S6
309E58:  LDR             R0, [R7,#arg_C]
309E5A:  VSTR            S2, [R0]
309E5E:  VSTR            S0, [R0,#4]
309E62:  VSTR            S4, [R0,#8]
309E66:  MOVS            R0, #(dword_B4+1); this
309E68:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
309E6C:  VMOV            S0, R0
309E70:  VCMPE.F32       S0, S18
309E74:  VMRS            APSR_nzcv, FPSCR
309E78:  BGT             loc_309F0A
309E7A:  VLDR            S2, =2770.0
309E7E:  VMOV            S6, R6
309E82:  VLDR            S0, =277.0
309E86:  VMOV            S8, R4
309E8A:  VSUB.F32        S2, S2, S6
309E8E:  VLDR            S4, =0.0
309E92:  VSUB.F32        S0, S0, S8
309E96:  VMOV            S10, R9
309E9A:  VMOV            S12, R5
309E9E:  VMOV            S14, R8
309EA2:  VSUB.F32        S4, S4, S12
309EA6:  VMUL.F32        S12, S2, S14
309EAA:  VMUL.F32        S10, S0, S10
309EAE:  VMOV            S14, R11
309EB2:  VMUL.F32        S14, S4, S14
309EB6:  VADD.F32        S10, S12, S10
309EBA:  VADD.F32        S10, S14, S10
309EBE:  VCMPE.F32       S10, #0.0
309EC2:  VMRS            APSR_nzcv, FPSCR
309EC6:  BGT             loc_309ECE
309EC8:  CMP.W           R10, #1
309ECC:  BNE             loc_309F0A
309ECE:  VLDR            S10, =-277.0
309ED2:  VLDR            S12, =-2770.0
309ED6:  VADD.F32        S8, S8, S10
309EDA:  VADD.F32        S6, S6, S12
309EDE:  VMUL.F32        S8, S8, S8
309EE2:  VMUL.F32        S6, S6, S6
309EE6:  VADD.F32        S6, S6, S8
309EEA:  VSQRT.F32       S6, S6
309EEE:  VCMPE.F32       S6, S16
309EF2:  VMRS            APSR_nzcv, FPSCR
309EF6:  BGE             loc_309F0A
309EF8:  VMOV.F32        S16, S6
309EFC:  LDR             R0, [R7,#arg_C]
309EFE:  VSTR            S2, [R0]
309F02:  VSTR            S0, [R0,#4]
309F06:  VSTR            S4, [R0,#8]
309F0A:  VMOV            R0, S16
309F0E:  VPOP            {D8-D9}
309F12:  ADD             SP, SP, #4
309F14:  POP.W           {R8-R11}
309F18:  POP             {R4-R7,PC}
