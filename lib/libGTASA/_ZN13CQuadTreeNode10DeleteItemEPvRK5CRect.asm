; =========================================================
; Game Engine Function: _ZN13CQuadTreeNode10DeleteItemEPvRK5CRect
; Address            : 0x40E4A4 - 0x40E5C2
; =========================================================

40E4A4:  PUSH            {R4-R7,LR}
40E4A6:  ADD             R7, SP, #0xC
40E4A8:  PUSH.W          {R8,R9,R11}
40E4AC:  VPUSH           {D8}
40E4B0:  SUB             SP, SP, #8
40E4B2:  MOV             R6, R0
40E4B4:  MOV             R9, R1
40E4B6:  LDR             R1, [R6,#0x10]
40E4B8:  MOV             R4, R2
40E4BA:  CBZ             R1, loc_40E4F8
40E4BC:  MOV             R0, R1
40E4BE:  LDR             R2, [R0]
40E4C0:  CMP             R2, R9
40E4C2:  BEQ             loc_40E4CC
40E4C4:  LDR             R0, [R0,#4]
40E4C6:  CMP             R0, #0
40E4C8:  BNE             loc_40E4BE
40E4CA:  B               loc_40E4F8
40E4CC:  MOVS            R2, #0
40E4CE:  MOV             R3, R1
40E4D0:  MOV             R0, R3; void *
40E4D2:  LDR             R3, [R0]
40E4D4:  CMP             R3, R9
40E4D6:  BEQ             loc_40E4E2
40E4D8:  LDR             R3, [R0,#4]
40E4DA:  MOV             R2, R0
40E4DC:  CMP             R3, #0
40E4DE:  BNE             loc_40E4D0
40E4E0:  B               loc_40E4F8
40E4E2:  CMP             R1, R0
40E4E4:  BEQ             loc_40E4F0
40E4E6:  CMP             R2, #0
40E4E8:  ITT NE
40E4EA:  LDRNE           R1, [R0,#4]
40E4EC:  STRNE           R1, [R2,#4]
40E4EE:  B               loc_40E4F4
40E4F0:  LDR             R1, [R1,#4]
40E4F2:  STR             R1, [R6,#0x10]
40E4F4:  BLX             j__ZN18CPtrNodeSingleLinkdlEPv; CPtrNodeSingleLink::operator delete(void *)
40E4F8:  VMOV.F32        S16, #0.5
40E4FC:  ADD.W           R8, R6, #0x14
40E500:  MOVS            R5, #0
40E502:  LDR             R0, [R6,#4]
40E504:  VLDR            S2, [R6]
40E508:  STR             R0, [SP,#0x28+var_24]
40E50A:  LDR             R1, [R6,#0xC]
40E50C:  VLDR            S0, [R6,#8]
40E510:  STR             R1, [SP,#0x28+var_28]
40E512:  LDR             R2, [R6,#0x24]
40E514:  CMP             R2, #0
40E516:  BEQ             loc_40E5B0
40E518:  CMP             R5, #3; switch 4 cases
40E51A:  BHI             def_40E524; jumptable 0040E524 default case
40E51C:  VMOV            S4, R0
40E520:  VMOV            S6, R1
40E524:  TBB.W           [PC,R5]; switch jump
40E528:  DCB 2; jump table for switch statement
40E529:  DCB 8
40E52A:  DCB 0xE
40E52B:  DCB 0x13
40E52C:  VADD.F32        S0, S2, S0; jumptable 0040E524 case 0
40E530:  MOV             R0, SP
40E532:  VMUL.F32        S0, S0, S16
40E536:  B               loc_40E558
40E538:  VADD.F32        S2, S2, S0; jumptable 0040E524 case 1
40E53C:  MOV             R0, SP
40E53E:  VMUL.F32        S2, S2, S16
40E542:  B               loc_40E558
40E544:  VADD.F32        S0, S2, S0; jumptable 0040E524 case 2
40E548:  VMUL.F32        S0, S0, S16
40E54C:  B               loc_40E556
40E54E:  VADD.F32        S2, S2, S0; jumptable 0040E524 case 3
40E552:  VMUL.F32        S2, S2, S16
40E556:  ADD             R0, SP, #0x28+var_24
40E558:  VADD.F32        S4, S4, S6
40E55C:  VMUL.F32        S4, S4, S16
40E560:  VSTR            S4, [R0]
40E564:  VLDR            S4, [R4,#8]; jumptable 0040E524 default case
40E568:  VCMPE.F32       S2, S4
40E56C:  VMRS            APSR_nzcv, FPSCR
40E570:  BGT             loc_40E5B0
40E572:  VLDR            S2, [R4]
40E576:  VCMPE.F32       S0, S2
40E57A:  VMRS            APSR_nzcv, FPSCR
40E57E:  BLT             loc_40E5B0
40E580:  VLDR            S0, [SP,#0x28+var_28]
40E584:  VLDR            S2, [R4,#4]
40E588:  VCMPE.F32       S0, S2
40E58C:  VMRS            APSR_nzcv, FPSCR
40E590:  BGT             loc_40E5B0
40E592:  VLDR            S0, [SP,#0x28+var_24]
40E596:  VLDR            S2, [R4,#0xC]
40E59A:  VCMPE.F32       S0, S2
40E59E:  VMRS            APSR_nzcv, FPSCR
40E5A2:  BLT             loc_40E5B0
40E5A4:  LDR.W           R0, [R8,R5,LSL#2]
40E5A8:  MOV             R1, R9
40E5AA:  MOV             R2, R4
40E5AC:  BLX             j__ZN13CQuadTreeNode10DeleteItemEPvRK5CRect; CQuadTreeNode::DeleteItem(void *,CRect const&)
40E5B0:  ADDS            R5, #1
40E5B2:  CMP             R5, #4
40E5B4:  BNE             loc_40E502
40E5B6:  ADD             SP, SP, #8
40E5B8:  VPOP            {D8}
40E5BC:  POP.W           {R8,R9,R11}
40E5C0:  POP             {R4-R7,PC}
