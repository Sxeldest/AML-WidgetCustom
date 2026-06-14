; =========================================================
; Game Engine Function: _ZN12CLoadMonitor8EndFrameEv
; Address            : 0x3F4FA0 - 0x3F52F8
; =========================================================

3F4FA0:  PUSH            {R4-R7,LR}
3F4FA2:  ADD             R7, SP, #0xC
3F4FA4:  PUSH.W          {R8-R10}
3F4FA8:  VPUSH           {D8-D12}
3F4FAC:  MOV             R10, R0
3F4FAE:  MOV.W           R0, #0xFFFFFFFF; int
3F4FB2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3F4FB6:  CBZ             R0, loc_3F501C
3F4FB8:  LDRB.W          R1, [R0,#0x485]
3F4FBC:  LSLS            R1, R1, #0x1F
3F4FBE:  ITT NE
3F4FC0:  LDRNE.W         R3, [R0,#0x590]
3F4FC4:  CMPNE           R3, #0
3F4FC6:  BNE             loc_3F4FD4
3F4FC8:  ADD.W           R1, R0, #0x50 ; 'P'
3F4FCC:  ADD.W           R2, R0, #0x4C ; 'L'
3F4FD0:  ADDS            R0, #0x48 ; 'H'
3F4FD2:  B               loc_3F4FE0
3F4FD4:  ADD.W           R1, R3, #0x50 ; 'P'
3F4FD8:  ADD.W           R2, R3, #0x4C ; 'L'
3F4FDC:  ADD.W           R0, R3, #0x48 ; 'H'
3F4FE0:  VLDR            S0, =50.0
3F4FE4:  VLDR            S2, [R0]
3F4FE8:  VLDR            S4, [R2]
3F4FEC:  VMUL.F32        S2, S2, S0
3F4FF0:  VLDR            S6, [R1]
3F4FF4:  VMUL.F32        S4, S4, S0
3F4FF8:  VMUL.F32        S0, S6, S0
3F4FFC:  VMUL.F32        S2, S2, S2
3F5000:  VMUL.F32        S4, S4, S4
3F5004:  VMUL.F32        S0, S0, S0
3F5008:  VADD.F32        S2, S4, S2
3F500C:  VADD.F32        S0, S2, S0
3F5010:  VSQRT.F32       S0, S0
3F5014:  VCVT.U32.F32    S0, S0
3F5018:  VSTR            S0, [R10,#0x48]
3F501C:  LDR.W           R0, [R10,#0x3C]
3F5020:  LDR.W           R1, [R10,#0x4C]
3F5024:  VMOV            S0, R0
3F5028:  CMP             R0, R1
3F502A:  IT HI
3F502C:  STRHI.W         R0, [R10,#0x4C]
3F5030:  VCVT.F32.U32    S0, S0
3F5034:  VLDR            S2, [R10,#0x8C]
3F5038:  LDR.W           R0, [R10,#0x40]
3F503C:  LDR.W           R1, [R10,#0x50]
3F5040:  CMP             R0, R1
3F5042:  VADD.F32        S0, S2, S0
3F5046:  VMOV            S2, R0
3F504A:  VSTR            S0, [R10,#0x8C]
3F504E:  IT HI
3F5050:  STRHI.W         R0, [R10,#0x50]
3F5054:  VCVT.F32.U32    S2, S2
3F5058:  VLDR            S4, [R10,#0x90]
3F505C:  LDR.W           R0, [R10,#0x44]
3F5060:  LDR.W           R1, [R10,#0x54]
3F5064:  CMP             R0, R1
3F5066:  VADD.F32        S4, S4, S2
3F506A:  VMOV            S2, R0
3F506E:  VSTR            S4, [R10,#0x90]
3F5072:  IT HI
3F5074:  STRHI.W         R0, [R10,#0x54]
3F5078:  VCVT.F32.U32    S2, S2
3F507C:  VLDR            S6, [R10,#0x94]
3F5080:  LDR.W           R0, [R10,#0x48]
3F5084:  LDR.W           R1, [R10,#0x58]
3F5088:  CMP             R0, R1
3F508A:  VADD.F32        S2, S6, S2
3F508E:  VMOV            S6, R0
3F5092:  VSTR            S2, [R10,#0x94]
3F5096:  IT HI
3F5098:  STRHI.W         R0, [R10,#0x58]
3F509C:  VCVT.F32.U32    S6, S6
3F50A0:  VLDR            S8, [R10,#0x98]
3F50A4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3F50AE)
3F50A6:  LDR.W           R2, [R10,#0x20]
3F50AA:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3F50AC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3F50AE:  VADD.F32        S6, S8, S6
3F50B2:  VSTR            S6, [R10,#0x98]
3F50B6:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds
3F50B8:  SUBS            R2, R1, R2
3F50BA:  CMP.W           R2, #0x7D0
3F50BE:  BLS             loc_3F50C8
3F50C0:  MOVS            R0, #0
3F50C2:  STRD.W          R1, R0, [R10,#0x20]
3F50C6:  B               loc_3F52EE
3F50C8:  LDR.W           R0, [R10,#0x24]
3F50CC:  LSRS            R2, R2, #3
3F50CE:  CMP             R2, #0x7C ; '|'
3F50D0:  BHI             loc_3F50DA
3F50D2:  ADDS            R0, #1
3F50D4:  STR.W           R0, [R10,#0x24]
3F50D8:  B               loc_3F52DE
3F50DA:  CMP             R0, #0
3F50DC:  STR.W           R1, [R10,#0x20]
3F50E0:  STR.W           R0, [R10,#0x28]
3F50E4:  ITT EQ
3F50E6:  MOVEQ           R0, #1
3F50E8:  STREQ.W         R0, [R10,#0x24]
3F50EC:  VMOV.F32        S8, #1.0
3F50F0:  ADD.W           R2, R10, #0xDC
3F50F4:  VMOV            S10, R0
3F50F8:  ADD.W           R0, R10, #0x9C
3F50FC:  VMOV.F32        S22, #0.125
3F5100:  VLDR            S16, =0.0
3F5104:  VCVT.F32.U32    S10, S10
3F5108:  VLD1.32         {D16-D17}, [R0]
3F510C:  ADD.W           R0, R10, #0xC4
3F5110:  MOV.W           R9, #2
3F5114:  VLD1.32         {D18-D19}, [R0]
3F5118:  MOV.W           R8, #1
3F511C:  LDRD.W          R6, R5, [R10,#0xAC]
3F5120:  LDR.W           R4, [R10,#0xB4]
3F5124:  LDRD.W          R0, R1, [R10,#0xBC]
3F5128:  VDIV.F32        S8, S8, S10
3F512C:  LDR.W           LR, [R10,#0xEC]
3F5130:  LDR.W           R3, [R10,#0xF0]
3F5134:  LDR.W           R12, [R10,#0x10C]
3F5138:  VMUL.F32        S4, S8, S4
3F513C:  VLD1.32         {D20-D21}, [R2]
3F5140:  VMUL.F32        S6, S8, S6
3F5144:  ADD.W           R2, R10, #0xFC
3F5148:  VMUL.F32        S0, S8, S0
3F514C:  VLD1.32         {D22-D23}, [R2]
3F5150:  VMUL.F32        S2, S8, S2
3F5154:  LDR.W           R2, [R10,#0x114]
3F5158:  STRD.W          R6, R5, [R10,#0xB0]
3F515C:  MOVS            R5, #0
3F515E:  STR.W           R4, [R10,#0xB8]
3F5162:  ADD.W           R4, R10, #0xA0
3F5166:  VLDR            S18, =0.66666
3F516A:  MOVS            R6, #0
3F516C:  VST1.32         {D16-D17}, [R4]
3F5170:  LDR.W           R4, [R10,#0xD4]
3F5174:  STR.W           R4, [R10,#0xD8]
3F5178:  STR.W           R5, [R10,#0x24]
3F517C:  STR.W           R1, [R10,#0xC4]
3F5180:  ADD.W           R1, R10, #0xC8
3F5184:  VSTR            S6, [R10,#0x98]
3F5188:  VCVT.U32.F32    S0, S0
3F518C:  VCVT.U32.F32    S4, S4
3F5190:  VST1.32         {D18-D19}, [R1]
3F5194:  LDR.W           R1, [R10,#0xF4]
3F5198:  STR.W           R0, [R10,#0xC0]
3F519C:  LDR.W           R0, [R10,#0x110]
3F51A0:  STR.W           R5, [R10,#0x8C]
3F51A4:  VSTR            S0, [R10,#0x9C]
3F51A8:  VSTR            S4, [R10,#0xBC]
3F51AC:  STR.W           R5, [R10,#0x90]
3F51B0:  STR.W           R1, [R10,#0xF8]
3F51B4:  VCVT.U32.F32    S0, S2
3F51B8:  ADD.W           R1, R10, #0xE0
3F51BC:  VLDR            S20, =0.33333
3F51C0:  VST1.32         {D20-D21}, [R1]
3F51C4:  ADD.W           R1, R10, #0x100
3F51C8:  STRD.W          LR, R3, [R10,#0xF0]
3F51CC:  STR.W           R5, [R10,#0x94]
3F51D0:  STR.W           R5, [R10,#0x14]
3F51D4:  VSTR            S0, [R10,#0xDC]
3F51D8:  STR.W           R2, [R10,#0x118]
3F51DC:  VCVT.U32.F32    S0, S6
3F51E0:  STR.W           R5, [R10,#0x98]
3F51E4:  VST1.32         {D22-D23}, [R1]
3F51E8:  STRD.W          R12, R0, [R10,#0x110]
3F51EC:  VSTR            S0, [R10,#0xFC]
3F51F0:  ADD.W           R4, R10, R5
3F51F4:  VMOV            D12, D8
3F51F8:  LDR             R0, [R4,#0x4C]
3F51FA:  CBZ             R0, loc_3F526C
3F51FC:  ADD.W           R1, R10, R5,LSL#3
3F5200:  VLDR            S0, [R1,#0x9C]
3F5204:  VLDR            S2, [R1,#0xA0]
3F5208:  VLDR            S4, [R1,#0xA4]
3F520C:  VLDR            S6, [R1,#0xA8]
3F5210:  VCVT.F32.U32    S2, S2
3F5214:  VCVT.F32.U32    S0, S0
3F5218:  VCVT.F32.U32    S4, S4
3F521C:  VADD.F32        S0, S0, S2
3F5220:  VCVT.F32.U32    S2, S6
3F5224:  VADD.F32        S0, S0, S4
3F5228:  VLDR            S4, [R1,#0xAC]
3F522C:  VCVT.F32.U32    S4, S4
3F5230:  VADD.F32        S0, S0, S2
3F5234:  VLDR            S2, [R1,#0xB0]
3F5238:  VCVT.F32.U32    S2, S2
3F523C:  VADD.F32        S0, S0, S4
3F5240:  VLDR            S4, [R1,#0xB4]
3F5244:  VCVT.F32.U32    S4, S4
3F5248:  VADD.F32        S0, S0, S2
3F524C:  VLDR            S2, [R1,#0xB8]
3F5250:  VCVT.F32.U32    S2, S2
3F5254:  VADD.F32        S0, S0, S4
3F5258:  VADD.F32        S0, S0, S2
3F525C:  VMOV            S2, R0
3F5260:  VCVT.F32.U32    S2, S2
3F5264:  VMUL.F32        S0, S0, S22
3F5268:  VMIN.F32        D12, D0, D1
3F526C:  BIC.W           R0, R6, #1; this
3F5270:  VSTR            S24, [R4,#0x5C]
3F5274:  CMP             R0, #2
3F5276:  BEQ             loc_3F5288
3F5278:  BLX             j__ZN6CTimer23GetCyclesPerMillisecondEv; CTimer::GetCyclesPerMillisecond(void)
3F527C:  VMOV            S0, R0
3F5280:  VCVT.F32.U32    S0, S0
3F5284:  VDIV.F32        S24, S24, S0
3F5288:  VLDR            S0, [R4,#0x6C]
3F528C:  VDIV.F32        S0, S24, S0
3F5290:  VCMPE.F32       S0, S18
3F5294:  VMRS            APSR_nzcv, FPSCR
3F5298:  BLE             loc_3F52A8
3F529A:  LDR.W           R0, [R10,#0x14]
3F529E:  CMP             R0, #1
3F52A0:  BGT             loc_3F52A8
3F52A2:  STR.W           R9, [R10,#0x14]
3F52A6:  B               loc_3F52BE
3F52A8:  VCMPE.F32       S0, S20
3F52AC:  VMRS            APSR_nzcv, FPSCR
3F52B0:  BLE             loc_3F52BE
3F52B2:  LDR.W           R0, [R10,#0x14]
3F52B6:  CMP             R0, #0
3F52B8:  IT LE
3F52BA:  STRLE.W         R8, [R10,#0x14]
3F52BE:  VSTR            S0, [R4,#0x7C]
3F52C2:  ADDS            R5, #4
3F52C4:  VLDR            S0, [R4,#0x4C]
3F52C8:  ADDS            R6, #1
3F52CA:  CMP             R5, #0x10
3F52CC:  VCVT.F32.U32    S0, S0
3F52D0:  VLDR            S2, [R4,#0x5C]
3F52D4:  VDIV.F32        S0, S2, S0
3F52D8:  VSTR            S0, [R4,#0x5C]
3F52DC:  BNE             loc_3F51F0
3F52DE:  LDR.W           R0, [R10,#8]
3F52E2:  CMP             R0, #0
3F52E4:  ITT NE
3F52E6:  LDRNE.W         R0, [R10,#0x18]
3F52EA:  STRNE.W         R0, [R10,#0x14]
3F52EE:  VPOP            {D8-D12}
3F52F2:  POP.W           {R8-R10}
3F52F6:  POP             {R4-R7,PC}
