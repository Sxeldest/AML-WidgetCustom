; =========================================================
; Game Engine Function: sub_14A280
; Address            : 0x14A280 - 0x14A3EE
; =========================================================

14A280:  PUSH            {R4-R7,LR}
14A282:  ADD             R7, SP, #0xC
14A284:  PUSH.W          {R8-R11}
14A288:  SUB             SP, SP, #0x104
14A28A:  MOV             R4, R0
14A28C:  LDRB            R0, [R0,#0x19]
14A28E:  CMP             R0, #0x11
14A290:  BNE.W           loc_14A3E6
14A294:  LDRH.W          R5, [R4,#0xB2]
14A298:  MOVW            R1, #0xBB6
14A29C:  SUBS            R0, R5, #1
14A29E:  UXTH            R0, R0
14A2A0:  CMP             R0, R1
14A2A2:  BHI.W           loc_14A3E6
14A2A6:  LDR             R0, =(off_23496C - 0x14A2B0)
14A2A8:  LSRS            R1, R5, #4
14A2AA:  CMP             R1, #0x7C ; '|'
14A2AC:  ADD             R0, PC; off_23496C
14A2AE:  LDR             R0, [R0]; dword_23DEF4
14A2B0:  LDR             R0, [R0]
14A2B2:  LDR.W           R0, [R0,#0x3B0]
14A2B6:  BHI             loc_14A2CE
14A2B8:  LDR             R6, [R0,#4]
14A2BA:  MOV             R1, R5
14A2BC:  MOV             R0, R6
14A2BE:  BL              sub_F2396
14A2C2:  CMP             R0, #0
14A2C4:  BEQ.W           loc_14A3E6
14A2C8:  LDR.W           R5, [R6,R5,LSL#2]
14A2CC:  B               loc_14A2EA
14A2CE:  LDR             R0, [R0,#0x10]
14A2D0:  SUB.W           R1, R5, #0x7D0
14A2D4:  UXTAH.W         R2, R0, R1
14A2D8:  LDRB            R2, [R2,#4]
14A2DA:  CMP             R2, #0
14A2DC:  BEQ.W           loc_14A3E6
14A2E0:  UXTH            R1, R1
14A2E2:  ADD.W           R0, R0, R1,LSL#2
14A2E6:  LDR.W           R5, [R0,#0x3EC]
14A2EA:  CMP             R5, #0
14A2EC:  BEQ             loc_14A3E6
14A2EE:  CMP             R5, #0
14A2F0:  BEQ             loc_14A3E6
14A2F2:  ADD.W           R6, R4, #0xA6
14A2F6:  VLDR            S0, =100.0
14A2FA:  LDR             R0, [R6]
14A2FC:  VMOV            S4, R0
14A300:  VCMP.F32        S4, S0
14A304:  VMRS            APSR_nzcv, FPSCR
14A308:  BHI             loc_14A3E6
14A30A:  VLDR            S2, =-100.0
14A30E:  VCMP.F32        S4, S2
14A312:  VMRS            APSR_nzcv, FPSCR
14A316:  BLT             loc_14A3E6
14A318:  LDR             R0, [R6,#4]
14A31A:  VMOV            S4, R0
14A31E:  VCMP.F32        S4, S0
14A322:  VMRS            APSR_nzcv, FPSCR
14A326:  BHI             loc_14A3E6
14A328:  VCMP.F32        S4, S2
14A32C:  VMRS            APSR_nzcv, FPSCR
14A330:  BLT             loc_14A3E6
14A332:  LDR             R0, [R6,#8]
14A334:  VMOV            S4, R0
14A338:  VCMP.F32        S4, S0
14A33C:  VMRS            APSR_nzcv, FPSCR
14A340:  BHI             loc_14A3E6
14A342:  VCMP.F32        S4, S2
14A346:  VMRS            APSR_nzcv, FPSCR
14A34A:  BLT             loc_14A3E6
14A34C:  ADD.W           R8, SP, #0x120+var_5C
14A350:  MOV             R0, R5
14A352:  MOV             R1, R8
14A354:  BL              sub_F8910
14A358:  ADD             R1, SP, #0x120+var_AC
14A35A:  MOV             R0, R5
14A35C:  BL              sub_F8994
14A360:  ADD             R1, SP, #0x120+var_B8
14A362:  MOV             R0, R5
14A364:  BL              sub_F89E0
14A368:  LDR.W           R0, [R4,#0x128]
14A36C:  ADD             R1, SP, #0x120+var_A0
14A36E:  BL              sub_F8910
14A372:  LDR             R0, [R6,#8]
14A374:  ADD             R2, SP, #0x120+var_D8
14A376:  VLD1.16         {D16}, [R6]
14A37A:  MOV             R1, R8
14A37C:  STR             R0, [SP,#0x120+var_D0]
14A37E:  ADD             R0, SP, #0x120+var_C8
14A380:  VSTR            D16, [SP,#0x120+var_D8]
14A384:  BL              sub_108F30
14A388:  LDR             R0, [SP,#0x120+var_A0]
14A38A:  ADD.W           R11, SP, #0x120+var_84
14A38E:  VLDR            D16, [SP,#0x120+var_C8]
14A392:  ADD.W           LR, SP, #0x120+var_90
14A396:  STR             R0, [SP,#0x120+var_DC]
14A398:  LDR             R0, [SP,#0x120+var_9C]
14A39A:  STR             R0, [SP,#0x120+var_E0]
14A39C:  LDR             R0, [SP,#0x120+var_98]
14A39E:  STR             R0, [SP,#0x120+var_E4]
14A3A0:  LDR.W           R0, [R4,#0x128]
14A3A4:  VSTR            D16, [SP,#0x120+var_70]
14A3A8:  STR             R0, [SP,#0x120+var_E8]
14A3AA:  LDRD.W          R0, R1, [SP,#0x120+var_70]
14A3AE:  LDR             R6, [SP,#0x120+var_C0]
14A3B0:  LDM.W           R11, {R8-R11}
14A3B4:  LDR             R2, [SP,#0x120+var_74]
14A3B6:  LDR             R3, [SP,#0x120+var_64]
14A3B8:  STRD.W          R2, R0, [SP,#0x120+var_100]
14A3BC:  ADD             R0, SP, #0x120+var_110
14A3BE:  LDM.W           LR, {R4,R5,LR}
14A3C2:  STRD.W          R1, R6, [SP,#0x120+var_F8]
14A3C6:  STR             R3, [SP,#0x120+var_F0]
14A3C8:  STM.W           R0, {R8-R11}
14A3CC:  LDRD.W          R2, R1, [SP,#0x120+var_E0]
14A3D0:  LDRD.W          R0, R3, [SP,#0x120+var_E8]
14A3D4:  LDR.W           R12, [SP,#0x120+var_94]
14A3D8:  STR             R6, [SP,#0x120+var_68]
14A3DA:  STRD.W          R12, R4, [SP,#0x120+var_120]
14A3DE:  STRD.W          R5, LR, [SP,#0x120+var_118]
14A3E2:  BL              sub_F8F58
14A3E6:  ADD             SP, SP, #0x104
14A3E8:  POP.W           {R8-R11}
14A3EC:  POP             {R4-R7,PC}
