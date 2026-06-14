; =========================================================
; Game Engine Function: alGetSourcefv
; Address            : 0x25939C - 0x25951E
; =========================================================

25939C:  PUSH            {R4-R7,LR}
25939E:  ADD             R7, SP, #0xC
2593A0:  PUSH.W          {R8}
2593A4:  SUB             SP, SP, #0x18
2593A6:  MOV             R5, R2
2593A8:  MOV             R6, R1
2593AA:  MOV             R4, R0
2593AC:  BLX             j_GetContextRef
2593B0:  MOV             R8, R0
2593B2:  CMP.W           R8, #0
2593B6:  BEQ.W           loc_2594DE
2593BA:  ADD.W           R0, R8, #8
2593BE:  MOV             R1, R4
2593C0:  BLX             j_LookupUIntMapKey
2593C4:  CMP             R0, #0
2593C6:  BEQ             loc_259420
2593C8:  CMP             R5, #0
2593CA:  BEQ.W           loc_259454
2593CE:  MOVS            R4, #1
2593D0:  CMP.W           R6, #0xC000
2593D4:  BGE.W           loc_259490
2593D8:  MOVW            R1, #0x1001
2593DC:  SUBS            R1, R6, R1
2593DE:  CMP             R1, #0x32 ; '2'; switch 51 cases
2593E0:  BHI.W           def_2593E4; jumptable 002593E4 default case
2593E4:  TBB.W           [PC,R1]; switch jump
2593E8:  DCB 0x66; jump table for switch statement
2593E9:  DCB 0x66
2593EA:  DCB 0x66
2593EB:  DCB 0x1A
2593EC:  DCB 0x1A
2593ED:  DCB 0x1A
2593EE:  DCB 0x66
2593EF:  DCB 0x7F
2593F0:  DCB 0x66
2593F1:  DCB 0x66
2593F2:  DCB 0x7F
2593F3:  DCB 0x7F
2593F4:  DCB 0x66
2593F5:  DCB 0x66
2593F6:  DCB 0x7F
2593F7:  DCB 0x66
2593F8:  DCB 0x7F
2593F9:  DCB 0x7F
2593FA:  DCB 0x7F
2593FB:  DCB 0x7F
2593FC:  DCB 0x66
2593FD:  DCB 0x66
2593FE:  DCB 0x7F
2593FF:  DCB 0x7F
259400:  DCB 0x7F
259401:  DCB 0x7F
259402:  DCB 0x7F
259403:  DCB 0x7F
259404:  DCB 0x7F
259405:  DCB 0x7F
259406:  DCB 0x7F
259407:  DCB 0x66
259408:  DCB 0x66
259409:  DCB 0x66
25940A:  DCB 0x66
25940B:  DCB 0x66
25940C:  DCB 0x66
25940D:  DCB 0x66
25940E:  DCB 0x66
25940F:  DCB 0x7F
259410:  DCB 0x7F
259411:  DCB 0x7F
259412:  DCB 0x7F
259413:  DCB 0x7F
259414:  DCB 0x7F
259415:  DCB 0x7F
259416:  DCB 0x7F
259417:  DCB 0x7F
259418:  DCB 0x60
259419:  DCB 0x60
25941A:  DCB 0x66
25941B:  ALIGN 2
25941C:  MOVS            R4, #3; jumptable 002593E4 cases 3-5
25941E:  B               loc_2594B4; jumptable 002593E4 cases 0-2,6,8,9,12,13,15,20,21,31-38,50
259420:  LDR             R0, =(TrapALError_ptr - 0x259426)
259422:  ADD             R0, PC; TrapALError_ptr
259424:  LDR             R0, [R0]; TrapALError
259426:  LDRB            R0, [R0]
259428:  CMP             R0, #0
25942A:  ITT NE
25942C:  MOVNE           R0, #5; sig
25942E:  BLXNE           raise
259432:  LDREX.W         R0, [R8,#0x50]
259436:  CBNZ            R0, loc_259486
259438:  ADD.W           R0, R8, #0x50 ; 'P'
25943C:  MOVW            R1, #0xA001
259440:  DMB.W           ISH
259444:  STREX.W         R2, R1, [R0]
259448:  CBZ             R2, loc_25948A
25944A:  LDREX.W         R2, [R0]
25944E:  CMP             R2, #0
259450:  BEQ             loc_259444
259452:  B               loc_259486
259454:  LDR             R0, =(TrapALError_ptr - 0x25945A)
259456:  ADD             R0, PC; TrapALError_ptr
259458:  LDR             R0, [R0]; TrapALError
25945A:  LDRB            R0, [R0]
25945C:  CMP             R0, #0
25945E:  ITT NE
259460:  MOVNE           R0, #5; sig
259462:  BLXNE           raise
259466:  LDREX.W         R0, [R8,#0x50]
25946A:  CBNZ            R0, loc_259486
25946C:  ADD.W           R0, R8, #0x50 ; 'P'
259470:  MOVW            R1, #0xA003
259474:  DMB.W           ISH
259478:  STREX.W         R2, R1, [R0]
25947C:  CBZ             R2, loc_25948A
25947E:  LDREX.W         R2, [R0]
259482:  CMP             R2, #0
259484:  BEQ             loc_259478
259486:  CLREX.W
25948A:  DMB.W           ISH
25948E:  B               loc_2594D8
259490:  SUB.W           R1, R6, #0x20000
259494:  SUBS            R1, #7
259496:  CMP             R1, #6
259498:  BCC             loc_2594B4; jumptable 002593E4 cases 0-2,6,8,9,12,13,15,20,21,31-38,50
25949A:  CMP.W           R6, #0xC000
25949E:  IT NE
2594A0:  CMPNE.W         R6, #0xD000
2594A4:  BEQ             loc_2594B4; jumptable 002593E4 cases 0-2,6,8,9,12,13,15,20,21,31-38,50
2594A6:  B               loc_2594E6; jumptable 002593E4 cases 7,10,11,14,16-19,22-30,39-47
2594A8:  MOVS            R4, #2; jumptable 002593E4 cases 48,49
2594AA:  B               loc_2594B4; jumptable 002593E4 cases 0-2,6,8,9,12,13,15,20,21,31-38,50
2594AC:  MOVW            R1, #0x202; jumptable 002593E4 default case
2594B0:  CMP             R6, R1
2594B2:  BNE             loc_2594E6; jumptable 002593E4 cases 7,10,11,14,16-19,22-30,39-47
2594B4:  MOV             R3, SP; jumptable 002593E4 cases 0-2,6,8,9,12,13,15,20,21,31-38,50
2594B6:  MOV             R1, R8
2594B8:  MOV             R2, R6
2594BA:  BL              sub_258E98
2594BE:  CBNZ            R0, loc_2594D8
2594C0:  MOVS            R0, #0
2594C2:  MOV             R1, SP
2594C4:  VLDR            D16, [R1]
2594C8:  ADDS            R0, #1
2594CA:  ADDS            R1, #8
2594CC:  CMP             R0, R4
2594CE:  VCVT.F32.F64    S0, D16
2594D2:  VSTM            R5!, {S0}
2594D6:  BLT             loc_2594C4
2594D8:  MOV             R0, R8
2594DA:  BLX             j_ALCcontext_DecRef
2594DE:  ADD             SP, SP, #0x18
2594E0:  POP.W           {R8}
2594E4:  POP             {R4-R7,PC}
2594E6:  LDR             R0, =(TrapALError_ptr - 0x2594EC); jumptable 002593E4 cases 7,10,11,14,16-19,22-30,39-47
2594E8:  ADD             R0, PC; TrapALError_ptr
2594EA:  LDR             R0, [R0]; TrapALError
2594EC:  LDRB            R0, [R0]
2594EE:  CMP             R0, #0
2594F0:  ITT NE
2594F2:  MOVNE           R0, #5; sig
2594F4:  BLXNE           raise
2594F8:  LDREX.W         R0, [R8,#0x50]
2594FC:  CMP             R0, #0
2594FE:  BNE             loc_259486
259500:  ADD.W           R0, R8, #0x50 ; 'P'
259504:  MOVW            R1, #0xA002
259508:  DMB.W           ISH
25950C:  STREX.W         R2, R1, [R0]
259510:  CMP             R2, #0
259512:  BEQ             loc_25948A
259514:  LDREX.W         R2, [R0]
259518:  CMP             R2, #0
25951A:  BEQ             loc_25950C
25951C:  B               loc_259486
