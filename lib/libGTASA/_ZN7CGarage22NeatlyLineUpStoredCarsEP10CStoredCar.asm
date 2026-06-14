; =========================================================
; Game Engine Function: _ZN7CGarage22NeatlyLineUpStoredCarsEP10CStoredCar
; Address            : 0x312CE4 - 0x312E3C
; =========================================================

312CE4:  PUSH            {R4-R7,LR}
312CE6:  ADD             R7, SP, #0xC
312CE8:  PUSH.W          {R11}
312CEC:  VPUSH           {D8-D15}
312CF0:  SUB             SP, SP, #0x10
312CF2:  VLDR            S16, [R0]
312CF6:  MOVS            R6, #0
312CF8:  VLDR            S18, [R0,#4]
312CFC:  MOV             R4, R1
312CFE:  VLDR            S22, [R0,#8]
312D02:  VLDR            S28, [R0,#0xC]
312D06:  VLDR            S30, [R0,#0x10]
312D0A:  VLDR            S20, [R0,#0x14]
312D0E:  VLDR            S24, [R0,#0x18]
312D12:  VLDR            S17, [R0,#0x20]
312D16:  VLDR            S26, [R0,#0x24]
312D1A:  ADD             R0, SP, #0x60+var_5C; this
312D1C:  STR             R6, [SP,#0x60+var_54]
312D1E:  VSTR            S30, [SP,#0x60+var_58]
312D22:  VSTR            S28, [SP,#0x60+var_5C]
312D26:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
312D2A:  VMOV.F32        S4, #4.0
312D2E:  VLDR            S0, [SP,#0x60+var_54]
312D32:  VLDR            S12, [SP,#0x60+var_58]
312D36:  VLDR            S14, [SP,#0x60+var_5C]
312D3A:  VMUL.F32        S0, S0, S4
312D3E:  VMUL.F32        S2, S12, S4
312D42:  VMUL.F32        S4, S14, S4
312D46:  VSTR            S4, [SP,#0x60+var_5C]
312D4A:  VSTR            S2, [SP,#0x60+var_58]
312D4E:  VSTR            S0, [SP,#0x60+var_54]
312D52:  LDRH            R0, [R4,#0x12]
312D54:  CMP             R0, #0
312D56:  BEQ             loc_312E30
312D58:  VLDR            S6, =0.0
312D5C:  VMOV.F32        S8, #0.5
312D60:  VMUL.F32        S1, S30, S17
312D64:  ADD.W           R2, R4, #0x52 ; 'R'
312D68:  VMUL.F32        S10, S17, S6
312D6C:  MOVS            R3, #0
312D6E:  VMUL.F32        S3, S28, S17
312D72:  VMUL.F32        S6, S26, S6
312D76:  VMUL.F32        S7, S24, S26
312D7A:  VMUL.F32        S9, S20, S26
312D7E:  VADD.F32        S5, S22, S8
312D82:  VMUL.F32        S1, S1, S8
312D86:  VMUL.F32        S10, S10, S8
312D8A:  VMUL.F32        S3, S3, S8
312D8E:  VMUL.F32        S6, S6, S8
312D92:  VADD.F32        S1, S18, S1
312D96:  VADD.F32        S10, S5, S10
312D9A:  VMUL.F32        S5, S7, S8
312D9E:  VMUL.F32        S8, S9, S8
312DA2:  VADD.F32        S3, S16, S3
312DA6:  VADD.F32        S6, S10, S6
312DAA:  VADD.F32        S10, S1, S5
312DAE:  VADD.F32        S1, S3, S8
312DB2:  VLDR            S3, =100.0
312DB6:  VMUL.F32        S12, S12, S3
312DBA:  VSUB.F32        S6, S6, S0
312DBE:  VSUB.F32        S8, S10, S2
312DC2:  VSUB.F32        S10, S1, S4
312DC6:  VLDR            S1, =-100.0
312DCA:  VMUL.F32        S14, S14, S1
312DCE:  VCVT.S32.F32    S14, S14
312DD2:  VCVT.S32.F32    S12, S12
312DD6:  VMOV            R0, S14
312DDA:  VMOV            R1, S12
312DDE:  VMOV            S12, R3
312DE2:  SUB.W           R5, R2, #0x4E ; 'N'
312DE6:  CMP             R3, #1
312DE8:  VCVT.F32.S32    S12, S12
312DEC:  STRB.W          R0, [R2,#-0x15]
312DF0:  STRB.W          R1, [R2,#-0x16]
312DF4:  STRB.W          R6, [R2,#-0x14]
312DF8:  LDRH            R4, [R2]
312DFA:  VMUL.F32        S14, S2, S12
312DFE:  VMUL.F32        S1, S4, S12
312E02:  VMUL.F32        S12, S0, S12
312E06:  VADD.F32        S14, S8, S14
312E0A:  VADD.F32        S1, S10, S1
312E0E:  VADD.F32        S12, S6, S12
312E12:  VSTR            S14, [R5]
312E16:  SUB.W           R5, R2, #0x52 ; 'R'
312E1A:  VSTR            S1, [R5]
312E1E:  SUB.W           R5, R2, #0x4A ; 'J'
312E22:  VSTR            S12, [R5]
312E26:  BGT             loc_312E30
312E28:  ADDS            R2, #0x40 ; '@'
312E2A:  ADDS            R3, #1
312E2C:  CMP             R4, #0
312E2E:  BNE             loc_312DDE
312E30:  ADD             SP, SP, #0x10
312E32:  VPOP            {D8-D15}
312E36:  POP.W           {R11}
312E3A:  POP             {R4-R7,PC}
