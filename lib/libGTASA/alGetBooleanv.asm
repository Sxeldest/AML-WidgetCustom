; =========================================================
; Game Engine Function: alGetBooleanv
; Address            : 0x25D264 - 0x25D3A4
; =========================================================

25D264:  PUSH            {R4-R7,LR}
25D266:  ADD             R7, SP, #0xC
25D268:  PUSH.W          {R8}
25D26C:  MOV             R4, R1
25D26E:  MOV             R6, R0
25D270:  CBZ             R4, loc_25D29E
25D272:  SUB.W           R5, R6, #0xC000
25D276:  CMP             R5, #4
25D278:  BCS             loc_25D298
25D27A:  BLX             j_GetContextRef
25D27E:  MOV             R8, R0
25D280:  CMP.W           R8, #0
25D284:  BEQ             loc_25D2E0
25D286:  CMP             R5, #3; switch 4 cases
25D288:  BHI             def_25D28A; jumptable 0025D28A default case
25D28A:  TBB.W           [PC,R5]; switch jump
25D28E:  DCB 2; jump table for switch statement
25D28F:  DCB 0x57
25D290:  DCB 0x5A
25D291:  DCB 0x5D
25D292:  VLDR            S0, [R8,#0x60]; jumptable 0025D28A case 0
25D296:  B               loc_25D34C
25D298:  CMP.W           R6, #0xD000
25D29C:  BEQ             loc_25D27A
25D29E:  BLX             j_GetContextRef
25D2A2:  MOV             R5, R0
25D2A4:  CMP             R5, #0
25D2A6:  BEQ             loc_25D39E
25D2A8:  LDR             R0, =(TrapALError_ptr - 0x25D2B0)
25D2AA:  CMP             R4, #0
25D2AC:  ADD             R0, PC; TrapALError_ptr
25D2AE:  LDR             R0, [R0]; TrapALError
25D2B0:  LDRB            R0, [R0]
25D2B2:  BEQ             loc_25D2E4
25D2B4:  CMP             R0, #0
25D2B6:  ITT NE
25D2B8:  MOVNE           R0, #5; sig
25D2BA:  BLXNE           raise
25D2BE:  LDREX.W         R0, [R5,#0x50]
25D2C2:  CBNZ            R0, loc_25D30E
25D2C4:  ADD.W           R0, R5, #0x50 ; 'P'
25D2C8:  MOVW            R1, #0xA002
25D2CC:  DMB.W           ISH
25D2D0:  STREX.W         R2, R1, [R0]
25D2D4:  CBZ             R2, loc_25D312
25D2D6:  LDREX.W         R2, [R0]
25D2DA:  CMP             R2, #0
25D2DC:  BEQ             loc_25D2D0
25D2DE:  B               loc_25D30E
25D2E0:  MOVS            R6, #0
25D2E2:  B               loc_25D39C
25D2E4:  CMP             R0, #0
25D2E6:  ITT NE
25D2E8:  MOVNE           R0, #5; sig
25D2EA:  BLXNE           raise
25D2EE:  LDREX.W         R0, [R5,#0x50]
25D2F2:  CBNZ            R0, loc_25D30E
25D2F4:  ADD.W           R0, R5, #0x50 ; 'P'
25D2F8:  MOVW            R1, #0xA003
25D2FC:  DMB.W           ISH
25D300:  STREX.W         R2, R1, [R0]
25D304:  CBZ             R2, loc_25D312
25D306:  LDREX.W         R2, [R0]
25D30A:  CMP             R2, #0
25D30C:  BEQ             loc_25D300
25D30E:  CLREX.W
25D312:  DMB.W           ISH
25D316:  MOV             R0, R5
25D318:  POP.W           {R8}
25D31C:  POP.W           {R4-R7,LR}
25D320:  B.W             ALCcontext_DecRef
25D324:  CMP.W           R6, #0xD000; jumptable 0025D28A default case
25D328:  BNE             loc_25D35A
25D32A:  LDR.W           R0, [R8,#0x58]
25D32E:  MOVW            R1, #0xD002
25D332:  MOVS            R6, #0
25D334:  CMP             R0, R1
25D336:  IT EQ
25D338:  MOVEQ           R6, #1
25D33A:  B               loc_25D396
25D33C:  VLDR            S0, [R8,#0x64]; jumptable 0025D28A case 1
25D340:  B               loc_25D34C
25D342:  LDR.W           R6, [R8,#0x6C]; jumptable 0025D28A case 2
25D346:  B               loc_25D396
25D348:  VLDR            S0, [R8,#0x68]; jumptable 0025D28A case 3
25D34C:  VCMP.F32        S0, #0.0
25D350:  VMRS            APSR_nzcv, FPSCR
25D354:  BEQ             loc_25D394
25D356:  MOVS            R6, #1
25D358:  B               loc_25D396
25D35A:  LDR             R0, =(TrapALError_ptr - 0x25D360)
25D35C:  ADD             R0, PC; TrapALError_ptr
25D35E:  LDR             R0, [R0]; TrapALError
25D360:  LDRB            R0, [R0]
25D362:  CMP             R0, #0
25D364:  ITT NE
25D366:  MOVNE           R0, #5; sig
25D368:  BLXNE           raise
25D36C:  LDREX.W         R0, [R8,#0x50]
25D370:  CBNZ            R0, loc_25D38C
25D372:  ADD.W           R0, R8, #0x50 ; 'P'
25D376:  MOVW            R1, #0xA002
25D37A:  DMB.W           ISH
25D37E:  STREX.W         R2, R1, [R0]
25D382:  CBZ             R2, loc_25D390
25D384:  LDREX.W         R2, [R0]
25D388:  CMP             R2, #0
25D38A:  BEQ             loc_25D37E
25D38C:  CLREX.W
25D390:  DMB.W           ISH
25D394:  MOVS            R6, #0
25D396:  MOV             R0, R8
25D398:  BLX             j_ALCcontext_DecRef
25D39C:  STRB            R6, [R4]
25D39E:  POP.W           {R8}
25D3A2:  POP             {R4-R7,PC}
