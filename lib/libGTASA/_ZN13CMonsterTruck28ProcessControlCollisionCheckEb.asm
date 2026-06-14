; =========================================================
; Game Engine Function: _ZN13CMonsterTruck28ProcessControlCollisionCheckEb
; Address            : 0x574C34 - 0x574E86
; =========================================================

574C34:  PUSH            {R4-R7,LR}
574C36:  ADD             R7, SP, #0xC
574C38:  PUSH.W          {R8-R11}
574C3C:  SUB             SP, SP, #0x14
574C3E:  MOV             R4, R0
574C40:  LDR             R0, =(fWheelExtensionRate_ptr - 0x574C4C)
574C42:  ADDW            R3, R4, #0x9AC
574C46:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x574C52)
574C48:  ADD             R0, PC; fWheelExtensionRate_ptr
574C4A:  VLDR            S0, [R3]
574C4E:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
574C50:  LDR             R0, [R0]; fWheelExtensionRate
574C52:  VLDR            S2, [R0]
574C56:  LDR             R0, [R2]; CTimer::ms_fTimeStep ...
574C58:  ADDW            R2, R4, #0x84C
574C5C:  VMUL.F32        S0, S2, S0
574C60:  VLDR            S2, [R0]
574C64:  ADDW            R0, R4, #0x89C
574C68:  VMUL.F32        S0, S2, S0
574C6C:  VLDR            S2, [R2]
574C70:  STR             R0, [SP,#0x30+var_20]
574C72:  VSUB.F32        S4, S2, S0
574C76:  VLDR            S2, [R0]
574C7A:  VCMPE.F32       S4, S2
574C7E:  VSTR            S4, [R2]
574C82:  VMRS            APSR_nzcv, FPSCR
574C86:  BGE             loc_574C8E
574C88:  VSTR            S2, [R2]
574C8C:  B               loc_574CA4
574C8E:  ADDW            R0, R4, #0x88C
574C92:  VLDR            S2, [R0]
574C96:  VCMPE.F32       S4, S2
574C9A:  VMRS            APSR_nzcv, FPSCR
574C9E:  IT GT
574CA0:  VSTRGT          S2, [R2]
574CA4:  ADD.W           R5, R4, #0x850
574CA8:  MOV.W           R0, #0x3F800000
574CAC:  VLDR            S2, [R5]
574CB0:  STR.W           R0, [R4,#0x7E8]
574CB4:  ADD.W           R0, R4, #0x8A0
574CB8:  VSUB.F32        S4, S2, S0
574CBC:  STR             R0, [SP,#0x30+var_28]
574CBE:  VLDR            S2, [R0]
574CC2:  VCMPE.F32       S4, S2
574CC6:  VSTR            S4, [R5]
574CCA:  VMRS            APSR_nzcv, FPSCR
574CCE:  BGE             loc_574CD6
574CD0:  VSTR            S2, [R5]
574CD4:  B               loc_574CEC
574CD6:  ADD.W           R0, R4, #0x890
574CDA:  VLDR            S2, [R0]
574CDE:  VCMPE.F32       S4, S2
574CE2:  VMRS            APSR_nzcv, FPSCR
574CE6:  IT GT
574CE8:  VSTRGT          S2, [R5]
574CEC:  ADDW            R6, R4, #0x854
574CF0:  MOV.W           R0, #0x3F800000
574CF4:  ADD.W           R11, R4, #0x7E8
574CF8:  VLDR            S2, [R6]
574CFC:  STR.W           R0, [R4,#0x7EC]
574D00:  ADDW            R0, R4, #0x8A4
574D04:  VSUB.F32        S4, S2, S0
574D08:  STR             R0, [SP,#0x30+var_2C]
574D0A:  VLDR            S2, [R0]
574D0E:  VCMPE.F32       S4, S2
574D12:  VSTR            S4, [R6]
574D16:  VMRS            APSR_nzcv, FPSCR
574D1A:  BGE             loc_574D22
574D1C:  VSTR            S2, [R6]
574D20:  B               loc_574D38
574D22:  ADDW            R0, R4, #0x894
574D26:  VLDR            S2, [R0]
574D2A:  VCMPE.F32       S4, S2
574D2E:  VMRS            APSR_nzcv, FPSCR
574D32:  IT GT
574D34:  VSTRGT          S2, [R6]
574D38:  ADDW            R8, R4, #0x858
574D3C:  STR             R2, [SP,#0x30+var_24]
574D3E:  MOV.W           R0, #0x3F800000
574D42:  ADDW            R9, R4, #0x7EC
574D46:  VLDR            S2, [R8]
574D4A:  STR.W           R0, [R4,#0x7F0]
574D4E:  ADDW            R0, R4, #0x8A8
574D52:  VSUB.F32        S2, S2, S0
574D56:  STR             R0, [SP,#0x30+var_30]
574D58:  VLDR            S0, [R0]
574D5C:  VCMPE.F32       S2, S0
574D60:  VSTR            S2, [R8]
574D64:  VMRS            APSR_nzcv, FPSCR
574D68:  BGE             loc_574D70
574D6A:  VSTR            S0, [R8]
574D6E:  B               loc_574D86
574D70:  ADDW            R0, R4, #0x898
574D74:  VLDR            S0, [R0]
574D78:  VCMPE.F32       S2, S0
574D7C:  VMRS            APSR_nzcv, FPSCR
574D80:  IT GT
574D82:  VSTRGT          S0, [R8]
574D86:  MOV.W           R0, #0x3F800000
574D8A:  ADD.W           R10, R4, #0x7F0
574D8E:  STR.W           R0, [R4,#0x7F4]
574D92:  MOV             R0, R4; this
574D94:  BLX             j__ZN11CAutomobile28ProcessControlCollisionCheckEb; CAutomobile::ProcessControlCollisionCheck(bool)
574D98:  VMOV.F32        S0, #1.0
574D9C:  VLDR            S2, [R11]
574DA0:  VCMPE.F32       S2, S0
574DA4:  VMOV.F32        S2, S0
574DA8:  VMRS            APSR_nzcv, FPSCR
574DAC:  BGE             loc_574DD2
574DAE:  LDR             R0, [SP,#0x30+var_24]
574DB0:  VLDR            S2, [R0]
574DB4:  ADDW            R0, R4, #0x88C
574DB8:  VLDR            S4, [R0]
574DBC:  VSUB.F32        S2, S4, S2
574DC0:  VSTR            S2, [R11]
574DC4:  LDR             R0, [SP,#0x30+var_20]
574DC6:  VLDR            S6, [R0]
574DCA:  VSUB.F32        S4, S4, S6
574DCE:  VDIV.F32        S2, S2, S4
574DD2:  VSTR            S2, [R11]
574DD6:  ADDW            R0, R4, #0x7F4
574DDA:  VLDR            S2, [R9]
574DDE:  VCMPE.F32       S2, S0
574DE2:  VMOV.F32        S2, S0
574DE6:  VMRS            APSR_nzcv, FPSCR
574DEA:  BGE             loc_574E0E
574DEC:  ADD.W           R1, R4, #0x890
574DF0:  VLDR            S2, [R5]
574DF4:  VLDR            S4, [R1]
574DF8:  VSUB.F32        S2, S4, S2
574DFC:  VSTR            S2, [R9]
574E00:  LDR             R1, [SP,#0x30+var_28]
574E02:  VLDR            S6, [R1]
574E06:  VSUB.F32        S4, S4, S6
574E0A:  VDIV.F32        S2, S2, S4
574E0E:  VSTR            S2, [R9]
574E12:  VLDR            S2, [R10]
574E16:  VCMPE.F32       S2, S0
574E1A:  VMOV.F32        S2, S0
574E1E:  VMRS            APSR_nzcv, FPSCR
574E22:  BGE             loc_574E46
574E24:  ADDW            R1, R4, #0x894
574E28:  VLDR            S2, [R6]
574E2C:  VLDR            S4, [R1]
574E30:  VSUB.F32        S2, S4, S2
574E34:  VSTR            S2, [R10]
574E38:  LDR             R1, [SP,#0x30+var_2C]
574E3A:  VLDR            S6, [R1]
574E3E:  VSUB.F32        S4, S4, S6
574E42:  VDIV.F32        S2, S2, S4
574E46:  VSTR            S2, [R10]
574E4A:  VLDR            S2, [R0]
574E4E:  VCMPE.F32       S2, S0
574E52:  VMRS            APSR_nzcv, FPSCR
574E56:  BGE             loc_574E7A
574E58:  ADDW            R1, R4, #0x898
574E5C:  VLDR            S0, [R8]
574E60:  VLDR            S2, [R1]
574E64:  VSUB.F32        S0, S2, S0
574E68:  VSTR            S0, [R0]
574E6C:  LDR             R1, [SP,#0x30+var_30]
574E6E:  VLDR            S4, [R1]
574E72:  VSUB.F32        S2, S2, S4
574E76:  VDIV.F32        S0, S0, S2
574E7A:  VSTR            S0, [R0]
574E7E:  ADD             SP, SP, #0x14
574E80:  POP.W           {R8-R11}
574E84:  POP             {R4-R7,PC}
