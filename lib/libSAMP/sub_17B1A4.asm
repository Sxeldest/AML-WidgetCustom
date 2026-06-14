; =========================================================
; Game Engine Function: sub_17B1A4
; Address            : 0x17B1A4 - 0x17B364
; =========================================================

17B1A4:  PUSH            {R4-R7,LR}
17B1A6:  ADD             R7, SP, #0xC
17B1A8:  PUSH.W          {R8-R10}
17B1AC:  VPUSH           {D8-D9}
17B1B0:  SUB             SP, SP, #0x30
17B1B2:  MOV             R4, R0
17B1B4:  LDR             R0, =(off_234E80 - 0x17B1C2)
17B1B6:  MOVW            R3, #0x1550
17B1BA:  VLDR            S6, [R1]
17B1BE:  ADD             R0, PC; off_234E80
17B1C0:  VLDR            S8, [R1,#4]
17B1C4:  MOVW            R2, #0x19AC
17B1C8:  ADD             R5, SP, #0x58+var_38
17B1CA:  LDR             R0, [R0]; dword_381B58
17B1CC:  MOV.W           R10, #0
17B1D0:  LDR             R0, [R0]
17B1D2:  ADD.W           R9, R0, R3
17B1D6:  LDR.W           R8, [R0,R2]
17B1DA:  MOVS            R2, #0
17B1DC:  VLDR            S0, [R9]
17B1E0:  VLDR            S2, [R9,#4]
17B1E4:  VLDR            S4, [R9,#0x378]
17B1E8:  VADD.F32        S0, S0, S0
17B1EC:  VADD.F32        S2, S2, S2
17B1F0:  LDRD.W          R0, R1, [R1]
17B1F4:  VADD.F32        S8, S4, S8
17B1F8:  STRD.W          R0, R1, [SP,#0x58+var_38]
17B1FC:  VADD.F32        S4, S4, S6
17B200:  MOV             R0, R5
17B202:  MOV             R1, R4
17B204:  VADD.F32        S2, S8, S2
17B208:  VADD.F32        S0, S4, S0
17B20C:  VSTR            S2, [SP,#0x58+var_2C]
17B210:  VSTR            S0, [SP,#0x58+var_30]
17B214:  BL              sub_167164
17B218:  SUB.W           R2, R7, #-var_39
17B21C:  SUB.W           R3, R7, #-var_3A
17B220:  MOV             R6, R0
17B222:  MOV             R0, R5
17B224:  MOV             R1, R4
17B226:  STR.W           R10, [SP,#0x58+var_58]
17B22A:  BL              sub_17AD64
17B22E:  MOV             R4, R0
17B230:  CMP             R6, #0
17B232:  BEQ.W           loc_17B356
17B236:  LDRB.W          R1, [R7,#var_3A]
17B23A:  MOVS            R0, #0x17
17B23C:  MOV.W           R6, #0x3F800000
17B240:  CMP             R1, #0
17B242:  MOV.W           R1, #0x3F800000
17B246:  IT EQ
17B248:  MOVEQ           R0, #0x16
17B24A:  BL              sub_16586C
17B24E:  VLDR            S0, [SP,#0x58+var_38]
17B252:  VMOV.F32        S16, #0.5
17B256:  VLDR            S4, [SP,#0x58+var_30]
17B25A:  MOV             R3, R0; int
17B25C:  VLDR            S2, [SP,#0x58+var_34]
17B260:  VLDR            S6, [SP,#0x58+var_2C]
17B264:  VADD.F32        S0, S0, S4
17B268:  LDRB.W          R0, [R7,#var_39]
17B26C:  VADD.F32        S2, S2, S6
17B270:  VMUL.F32        S0, S0, S16
17B274:  VMUL.F32        S2, S2, S16
17B278:  VSTR            S0, [SP,#0x58+var_44]
17B27C:  VSTR            S2, [SP,#0x58+var_40]
17B280:  CBZ             R0, loc_17B2B2
17B282:  VMOV.F32        S0, #1.0
17B286:  VLDR            S2, [R9,#0x378]
17B28A:  VMOV.F32        S4, #2.0
17B28E:  MOVS            R1, #0xC
17B290:  VMLA.F32        S0, S2, S16
17B294:  VCMP.F32        S0, S4
17B298:  VMRS            APSR_nzcv, FPSCR
17B29C:  IT LS
17B29E:  VMOVLS.F32      S0, S4
17B2A2:  VMOV            R2, S0; int
17B2A6:  LDR.W           R0, [R8,#0x27C]; int
17B2AA:  STR             R1, [SP,#0x58+var_58]; int
17B2AC:  ADD             R1, SP, #0x58+var_44; int
17B2AE:  BL              sub_17457C
17B2B2:  MOVS            R0, #0
17B2B4:  MOV.W           R1, #0x3F800000
17B2B8:  VLDR            S18, [R9,#0x378]
17B2BC:  BL              sub_16586C
17B2C0:  VMUL.F32        S2, S18, S16
17B2C4:  VLDR            S4, [SP,#0x58+var_44]
17B2C8:  VMOV.F32        S0, #-0.5
17B2CC:  VLDR            S6, [SP,#0x58+var_40]
17B2D0:  VMOV.F32        S16, #-1.0
17B2D4:  VLDR            S8, =0.7071
17B2D8:  MOV             R5, R0
17B2DA:  LDR.W           R0, [R8,#0x27C]; int
17B2DE:  ADD             R1, SP, #0x58+var_4C; int
17B2E0:  ADD             R2, SP, #0x58+var_54; int
17B2E2:  MOV             R3, R5; int
17B2E4:  STR             R6, [SP,#0x58+var_58]
17B2E6:  VADD.F32        S6, S6, S0
17B2EA:  VMLA.F32        S16, S2, S8
17B2EE:  VADD.F32        S0, S4, S0
17B2F2:  VSTR            S6, [SP,#0x58+var_40]
17B2F6:  VADD.F32        S2, S16, S6
17B2FA:  VSUB.F32        S8, S6, S16
17B2FE:  VADD.F32        S4, S16, S0
17B302:  VSTR            S0, [SP,#0x58+var_44]
17B306:  VSUB.F32        S10, S0, S16
17B30A:  VSTR            S2, [SP,#0x58+var_48]
17B30E:  VSTR            S8, [SP,#0x58+var_50]
17B312:  VSTR            S4, [SP,#0x58+var_4C]
17B316:  VSTR            S10, [SP,#0x58+var_54]
17B31A:  BL              sub_173FCC
17B31E:  VLDR            S0, [SP,#0x58+var_44]
17B322:  ADD             R1, SP, #0x58+var_4C; int
17B324:  VLDR            S2, [SP,#0x58+var_40]
17B328:  ADD             R2, SP, #0x58+var_54; int
17B32A:  VADD.F32        S6, S16, S0
17B32E:  LDR.W           R0, [R8,#0x27C]; int
17B332:  VSUB.F32        S4, S2, S16
17B336:  MOV             R3, R5; int
17B338:  VADD.F32        S2, S16, S2
17B33C:  STR             R6, [SP,#0x58+var_58]
17B33E:  VSUB.F32        S0, S0, S16
17B342:  VSTR            S6, [SP,#0x58+var_4C]
17B346:  VSTR            S4, [SP,#0x58+var_48]
17B34A:  VSTR            S2, [SP,#0x58+var_50]
17B34E:  VSTR            S0, [SP,#0x58+var_54]
17B352:  BL              sub_173FCC
17B356:  MOV             R0, R4
17B358:  ADD             SP, SP, #0x30 ; '0'
17B35A:  VPOP            {D8-D9}
17B35E:  POP.W           {R8-R10}
17B362:  POP             {R4-R7,PC}
