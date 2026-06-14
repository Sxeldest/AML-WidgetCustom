; =========================================================
; Game Engine Function: _ZN13CCarGenerator5SetupEffffisshhhtthh
; Address            : 0x56E220 - 0x56E336
; =========================================================

56E220:  PUSH            {R4-R7,LR}
56E222:  ADD             R7, SP, #0xC
56E224:  PUSH.W          {R8-R10}
56E228:  VMOV.F32        S0, #8.0
56E22C:  VMOV            S2, R2
56E230:  VMOV            S4, R3
56E234:  VMOV            S6, R1
56E238:  VMUL.F32        S4, S4, S0
56E23C:  VMUL.F32        S2, S2, S0
56E240:  VMUL.F32        S0, S6, S0
56E244:  VCVT.S32.F32    S4, S4
56E248:  VCVT.S32.F32    S2, S2
56E24C:  VCVT.S32.F32    S0, S0
56E250:  VMOV            R1, S2
56E254:  STRH            R1, [R0,#6]
56E256:  VMOV            R1, S0
56E25A:  VLDR            S0, [R7,#arg_0]
56E25E:  VCMPE.F32       S0, #0.0
56E262:  VMRS            APSR_nzcv, FPSCR
56E266:  STRH            R1, [R0,#4]
56E268:  VMOV            R1, S4
56E26C:  STRH            R1, [R0,#8]
56E26E:  BGE             loc_56E282
56E270:  VLDR            S2, =360.0
56E274:  VADD.F32        S0, S0, S2
56E278:  VCMPE.F32       S0, #0.0
56E27C:  VMRS            APSR_nzcv, FPSCR
56E280:  BLT             loc_56E274
56E282:  VLDR            S2, =360.0
56E286:  VCMPE.F32       S0, S2
56E28A:  VMRS            APSR_nzcv, FPSCR
56E28E:  BLT             loc_56E2A2
56E290:  VLDR            S4, =-360.0
56E294:  VADD.F32        S0, S0, S4
56E298:  VCMPE.F32       S0, S2
56E29C:  VMRS            APSR_nzcv, FPSCR
56E2A0:  BGE             loc_56E294
56E2A2:  VLDR            S2, =0.017453
56E2A6:  ADD.W           R8, R7, #0xC
56E2AA:  LDRD.W          LR, R12, [R7,#arg_24]
56E2AE:  VMUL.F32        S0, S0, S2
56E2B2:  LDRD.W          R10, R9, [R7,#arg_1C]
56E2B6:  LDRD.W          R6, R4, [R7,#arg_14]
56E2BA:  LDM.W           R8, {R1,R3,R5,R8}
56E2BE:  VCMPE.F32       S0, #0.0
56E2C2:  VMRS            APSR_nzcv, FPSCR
56E2C6:  BGE             loc_56E2DA
56E2C8:  VLDR            S2, =6.2832
56E2CC:  VADD.F32        S0, S0, S2
56E2D0:  VCMPE.F32       S0, #0.0
56E2D4:  VMRS            APSR_nzcv, FPSCR
56E2D8:  BLT             loc_56E2CC
56E2DA:  VLDR            S2, =40.744
56E2DE:  STRB            R6, [R0,#0xB]
56E2E0:  VMUL.F32        S0, S0, S2
56E2E4:  STRH            R1, [R0]
56E2E6:  STRB            R3, [R0,#2]
56E2E8:  MOVW            R3, #0xFFFF
56E2EC:  STRB            R5, [R0,#3]
56E2EE:  STRB            R4, [R0,#0xC]
56E2F0:  STRH.W          R10, [R0,#0xE]
56E2F4:  STRH.W          R9, [R0,#0x10]
56E2F8:  LDRB            R1, [R0,#0xD]
56E2FA:  VCVT.U32.F32    S0, S0
56E2FE:  STRH            R3, [R0,#0x18]
56E300:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x56E30A)
56E302:  AND.W           R1, R1, #0xE4
56E306:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
56E308:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
56E30A:  VMOV            R3, S0
56E30E:  STRB            R3, [R0,#0xA]
56E310:  MOVS            R3, #0
56E312:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
56E314:  STRH            R3, [R0,#0x1A]
56E316:  MOVS            R3, #1
56E318:  STRB.W          LR, [R0,#0x1C]
56E31C:  STRB            R3, [R0,#0x1D]
56E31E:  MOVS            R3, #2
56E320:  AND.W           R3, R3, R8,LSL#1
56E324:  BFI.W           R3, R12, #4, #1
56E328:  ORRS            R1, R3
56E32A:  STRB            R1, [R0,#0xD]
56E32C:  ADDS            R1, R2, #1
56E32E:  STR             R1, [R0,#0x14]
56E330:  POP.W           {R8-R10}
56E334:  POP             {R4-R7,PC}
