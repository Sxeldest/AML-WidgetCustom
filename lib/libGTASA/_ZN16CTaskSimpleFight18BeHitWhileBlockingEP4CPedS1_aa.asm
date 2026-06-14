; =========================================================
; Game Engine Function: _ZN16CTaskSimpleFight18BeHitWhileBlockingEP4CPedS1_aa
; Address            : 0x4DA250 - 0x4DA356
; =========================================================

4DA250:  PUSH            {R4-R7,LR}
4DA252:  ADD             R7, SP, #0xC
4DA254:  PUSH.W          {R11}
4DA258:  LDRB.W          R12, [R0,#0x27]
4DA25C:  CMP.W           R12, #2
4DA260:  BNE             loc_4DA30A
4DA262:  LDR.W           R12, [R0,#0x1C]
4DA266:  CMP.W           R12, #0
4DA26A:  BEQ             loc_4DA30A
4DA26C:  LDRH.W          LR, [R12,#0x2E]
4DA270:  TST.W           LR, #1
4DA274:  BNE             loc_4DA30A
4DA276:  LDR.W           R4, [R12,#0x14]
4DA27A:  VLDR            S0, [R12,#0x20]
4DA27E:  VLDR            S2, [R4,#0x10]
4DA282:  VCMPE.F32       S0, S2
4DA286:  VMRS            APSR_nzcv, FPSCR
4DA28A:  BGE             loc_4DA30A
4DA28C:  LDR             R4, [R1,#0x14]
4DA28E:  LDR             R5, [R2,#0x14]
4DA290:  ADD.W           R6, R4, #0x30 ; '0'
4DA294:  CMP             R4, #0
4DA296:  IT EQ
4DA298:  ADDEQ           R6, R1, #4
4DA29A:  ADD.W           R1, R5, #0x30 ; '0'
4DA29E:  CMP             R5, #0
4DA2A0:  VLDR            S0, [R6]
4DA2A4:  IT EQ
4DA2A6:  ADDEQ           R1, R2, #4
4DA2A8:  VLDR            D16, [R6,#4]
4DA2AC:  VLDR            S2, [R1]
4DA2B0:  VLDR            D17, [R1,#4]
4DA2B4:  SUBS            R1, R3, #7; switch 6 cases
4DA2B6:  VSUB.F32        S0, S2, S0
4DA2BA:  VLDR            S2, [R4,#0x10]
4DA2BE:  VSUB.F32        D16, D17, D16
4DA2C2:  VLDR            D17, [R4,#0x14]
4DA2C6:  CMP             R1, #5
4DA2C8:  VMUL.F32        S0, S0, S2
4DA2CC:  VMUL.F32        D1, D16, D17
4DA2D0:  VADD.F32        S0, S0, S2
4DA2D4:  VADD.F32        S0, S0, S3
4DA2D8:  BHI             def_4DA2DA; jumptable 004DA2DA default case
4DA2DA:  TBB.W           [PC,R1]; switch jump
4DA2DE:  DCB 0x1A; jump table for switch statement
4DA2DF:  DCB 3
4DA2E0:  DCB 0x26
4DA2E1:  DCB 3
4DA2E2:  DCB 3
4DA2E3:  DCB 3
4DA2E4:  LDRB.W          R1, [R0,#0x24]; jumptable 004DA2DA cases 8,10-12
4DA2E8:  MOVS            R0, #0
4DA2EA:  CMP             R1, #9
4DA2EC:  BEQ             loc_4DA30C
4DA2EE:  SUB.W           R2, R1, #8
4DA2F2:  UXTB            R2, R2
4DA2F4:  CMP             R2, #4
4DA2F6:  BHI             loc_4DA30C
4DA2F8:  CMP             R3, #9
4DA2FA:  BEQ             loc_4DA32E
4DA2FC:  VLDR            S2, =0.3; jumptable 004DA2DA default case
4DA300:  VCMPE.F32       S0, S2
4DA304:  VMRS            APSR_nzcv, FPSCR
4DA308:  BGE             loc_4DA346
4DA30A:  MOVS            R0, #0
4DA30C:  POP.W           {R11}
4DA310:  POP             {R4-R7,PC}
4DA312:  LDR             R1, [R7,#arg_0]; jumptable 004DA2DA case 7
4DA314:  MOVS            R0, #0
4DA316:  CMP             R1, #1
4DA318:  BEQ             loc_4DA30C
4DA31A:  VLDR            S2, =0.3
4DA31E:  VCMPE.F32       S0, S2
4DA322:  VMRS            APSR_nzcv, FPSCR
4DA326:  BGE             loc_4DA346
4DA328:  B               loc_4DA30C
4DA32A:  LDRB.W          R1, [R0,#0x24]; jumptable 004DA2DA case 9
4DA32E:  VLDR            S2, =0.3
4DA332:  MOVS            R0, #0
4DA334:  VCMPE.F32       S0, S2
4DA338:  VMRS            APSR_nzcv, FPSCR
4DA33C:  BLT             loc_4DA30C
4DA33E:  SUBS            R1, #8
4DA340:  UXTB            R1, R1
4DA342:  CMP             R1, #4
4DA344:  BHI             loc_4DA30C
4DA346:  ORR.W           R0, LR, #1
4DA34A:  STRH.W          R0, [R12,#0x2E]
4DA34E:  MOVS            R0, #1
4DA350:  POP.W           {R11}
4DA354:  POP             {R4-R7,PC}
