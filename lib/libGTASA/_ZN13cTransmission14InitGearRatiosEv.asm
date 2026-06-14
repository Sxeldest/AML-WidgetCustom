; =========================================================
; Game Engine Function: _ZN13cTransmission14InitGearRatiosEv
; Address            : 0x5810F8 - 0x5811E0
; =========================================================

5810F8:  LDRB.W          R1, [R0,#0x4A]
5810FC:  VMOV.I32        Q8, #0
581100:  MOVS            R2, #0
581102:  CMP             R1, #0
581104:  VMOV            S0, R1
581108:  VCVT.F32.U32    S0, S0
58110C:  VLDR            S4, [R0,#0x58]
581110:  STRD.W          R2, R2, [R0,#0x40]
581114:  ADD.W           R2, R0, #0x30 ; '0'
581118:  VST1.32         {D16-D17}, [R2]
58111C:  ADD.W           R2, R0, #0x20 ; ' '
581120:  VST1.32         {D16-D17}, [R2]
581124:  MOV             R2, R0
581126:  VST1.32         {D16-D17}, [R2]!
58112A:  VST1.32         {D16-D17}, [R2]
58112E:  BEQ             loc_5811CC
581130:  PUSH            {R7,LR}
581132:  MOV             R7, SP
581134:  VMOV.F32        S2, #1.0
581138:  VLDR            S6, =0.42
58113C:  VLDR            S8, =0.6667
581140:  MOVS            R3, #1
581142:  MOVS            R1, #1
581144:  VDIV.F32        S0, S2, S0
581148:  VMOV.F32        S2, #0.5
58114C:  VMUL.F32        S2, S0, S2
581150:  VMUL.F32        S2, S4, S2
581154:  VSUB.F32        S4, S4, S2
581158:  UXTB            R2, R1
58115A:  ADD.W           R3, R3, R3,LSL#1
58115E:  VMOV            S10, R2
581162:  ADD.W           LR, R0, R3,LSL#2
581166:  VCVT.F32.U32    S10, S10
58116A:  VMUL.F32        S10, S0, S10
58116E:  VMUL.F32        S10, S4, S10
581172:  VADD.F32        S12, S2, S10
581176:  VLDR            S10, [LR,#-0xC]
58117A:  VSTR            S12, [LR]
58117E:  LDRB.W          R3, [R0,#0x4A]
581182:  CMP             R2, R3
581184:  BCS             loc_5811A0
581186:  VSUB.F32        S12, S12, S10
58118A:  VMUL.F32        S14, S12, S6
58118E:  VMUL.F32        S12, S12, S8
581192:  VADD.F32        S14, S10, S14
581196:  VADD.F32        S10, S12, S10
58119A:  VSTR            S14, [LR,#0x14]
58119E:  B               loc_5811A4
5811A0:  VLDR            S10, [R0,#0x58]
5811A4:  VSTR            S10, [LR,#4]
5811A8:  ADDS            R1, #1
5811AA:  LDRB.W          R2, [R0,#0x4A]
5811AE:  UXTB            R3, R1
5811B0:  CMP             R3, R2
5811B2:  BLS             loc_581158
5811B4:  LDR             R3, =(dword_A12EC0 - 0x5811C2)
5811B6:  SUB.W           R1, LR, #0xC
5811BA:  LDR.W           R12, =(dword_A12EBC - 0x5811C4)
5811BE:  ADD             R3, PC; dword_A12EC0
5811C0:  ADD             R12, PC; dword_A12EBC
5811C2:  STR             R1, [R3]
5811C4:  STR.W           LR, [R12]
5811C8:  POP.W           {R7,LR}
5811CC:  MOVW            R2, #0xD70A
5811D0:  LDR             R1, [R0,#0x60]
5811D2:  MOVT            R2, #0xBC23
5811D6:  STR             R2, [R0,#0x14]
5811D8:  STRD.W          R1, R2, [R0]
5811DC:  STR             R1, [R0,#8]
5811DE:  BX              LR
