; =========================================================
; Game Engine Function: alGetDoublev
; Address            : 0x25D3AC - 0x25D4F8
; =========================================================

25D3AC:  PUSH            {R4-R7,LR}
25D3AE:  ADD             R7, SP, #0xC
25D3B0:  PUSH.W          {R8}
25D3B4:  VPUSH           {D8}
25D3B8:  MOV             R4, R1
25D3BA:  MOV             R6, R0
25D3BC:  CBZ             R4, loc_25D3EA
25D3BE:  SUB.W           R5, R6, #0xC000
25D3C2:  CMP             R5, #4
25D3C4:  BCS             loc_25D3E4
25D3C6:  BLX             j_GetContextRef
25D3CA:  MOV             R8, R0
25D3CC:  CMP.W           R8, #0
25D3D0:  BEQ             loc_25D42C
25D3D2:  CMP             R5, #3; switch 4 cases
25D3D4:  BHI             def_25D3D6; jumptable 0025D3D6 default case
25D3D6:  TBB.W           [PC,R5]; switch jump
25D3DA:  DCB 2; jump table for switch statement
25D3DB:  DCB 0x76
25D3DC:  DCB 0x79
25D3DD:  DCB 0x7E
25D3DE:  VLDR            S0, [R8,#0x60]; jumptable 0025D3D6 case 0
25D3E2:  B               loc_25D4DA
25D3E4:  CMP.W           R6, #0xD000
25D3E8:  BEQ             loc_25D3C6
25D3EA:  BLX             j_GetContextRef
25D3EE:  MOV             R5, R0
25D3F0:  CMP             R5, #0
25D3F2:  BEQ             loc_25D4E8
25D3F4:  LDR             R0, =(TrapALError_ptr - 0x25D3FC)
25D3F6:  CMP             R4, #0
25D3F8:  ADD             R0, PC; TrapALError_ptr
25D3FA:  LDR             R0, [R0]; TrapALError
25D3FC:  LDRB            R0, [R0]
25D3FE:  BEQ             loc_25D432
25D400:  CMP             R0, #0
25D402:  ITT NE
25D404:  MOVNE           R0, #5; sig
25D406:  BLXNE           raise
25D40A:  LDREX.W         R0, [R5,#0x50]
25D40E:  CBNZ            R0, loc_25D45C
25D410:  ADD.W           R0, R5, #0x50 ; 'P'
25D414:  MOVW            R1, #0xA002
25D418:  DMB.W           ISH
25D41C:  STREX.W         R2, R1, [R0]
25D420:  CBZ             R2, loc_25D460
25D422:  LDREX.W         R2, [R0]
25D426:  CMP             R2, #0
25D428:  BEQ             loc_25D41C
25D42A:  B               loc_25D45C
25D42C:  VMOV.I32        D8, #0
25D430:  B               loc_25D4E4
25D432:  CMP             R0, #0
25D434:  ITT NE
25D436:  MOVNE           R0, #5; sig
25D438:  BLXNE           raise
25D43C:  LDREX.W         R0, [R5,#0x50]
25D440:  CBNZ            R0, loc_25D45C
25D442:  ADD.W           R0, R5, #0x50 ; 'P'
25D446:  MOVW            R1, #0xA003
25D44A:  DMB.W           ISH
25D44E:  STREX.W         R2, R1, [R0]
25D452:  CBZ             R2, loc_25D460
25D454:  LDREX.W         R2, [R0]
25D458:  CMP             R2, #0
25D45A:  BEQ             loc_25D44E
25D45C:  CLREX.W
25D460:  DMB.W           ISH
25D464:  MOV             R0, R5
25D466:  VPOP            {D8}
25D46A:  POP.W           {R8}
25D46E:  POP.W           {R4-R7,LR}
25D472:  B.W             ALCcontext_DecRef
25D476:  CMP.W           R6, #0xD000; jumptable 0025D3D6 default case
25D47A:  BNE             loc_25D486
25D47C:  VLDR            S0, [R8,#0x58]
25D480:  VCVT.F64.U32    D8, S0
25D484:  B               loc_25D4DE
25D486:  LDR             R0, =(TrapALError_ptr - 0x25D48C)
25D488:  ADD             R0, PC; TrapALError_ptr
25D48A:  LDR             R0, [R0]; TrapALError
25D48C:  LDRB            R0, [R0]
25D48E:  CMP             R0, #0
25D490:  ITT NE
25D492:  MOVNE           R0, #5; sig
25D494:  BLXNE           raise
25D498:  LDREX.W         R0, [R8,#0x50]
25D49C:  CBNZ            R0, loc_25D4B8
25D49E:  ADD.W           R0, R8, #0x50 ; 'P'
25D4A2:  MOVW            R1, #0xA002
25D4A6:  DMB.W           ISH
25D4AA:  STREX.W         R2, R1, [R0]
25D4AE:  CBZ             R2, loc_25D4F2
25D4B0:  LDREX.W         R2, [R0]
25D4B4:  CMP             R2, #0
25D4B6:  BEQ             loc_25D4AA
25D4B8:  VMOV.I32        D8, #0
25D4BC:  CLREX.W
25D4C0:  DMB.W           ISH
25D4C4:  B               loc_25D4DE
25D4C6:  VLDR            S0, [R8,#0x64]; jumptable 0025D3D6 case 1
25D4CA:  B               loc_25D4DA
25D4CC:  VLDR            S0, [R8,#0x6C]; jumptable 0025D3D6 case 2
25D4D0:  VCVT.F64.S32    D8, S0
25D4D4:  B               loc_25D4DE
25D4D6:  VLDR            S0, [R8,#0x68]; jumptable 0025D3D6 case 3
25D4DA:  VCVT.F64.F32    D8, S0
25D4DE:  MOV             R0, R8
25D4E0:  BLX             j_ALCcontext_DecRef
25D4E4:  VSTR            D8, [R4]
25D4E8:  VPOP            {D8}
25D4EC:  POP.W           {R8}
25D4F0:  POP             {R4-R7,PC}
25D4F2:  VMOV.I32        D8, #0
25D4F6:  B               loc_25D4C0
