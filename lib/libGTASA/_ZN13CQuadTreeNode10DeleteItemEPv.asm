; =========================================================
; Game Engine Function: _ZN13CQuadTreeNode10DeleteItemEPv
; Address            : 0x40E428 - 0x40E4A4
; =========================================================

40E428:  PUSH            {R4,R5,R7,LR}
40E42A:  ADD             R7, SP, #8
40E42C:  MOV             R5, R0
40E42E:  MOV             R4, R1
40E430:  LDR             R1, [R5,#0x10]
40E432:  CBZ             R1, loc_40E470
40E434:  MOV             R0, R1
40E436:  LDR             R2, [R0]
40E438:  CMP             R2, R4
40E43A:  BEQ             loc_40E444
40E43C:  LDR             R0, [R0,#4]
40E43E:  CMP             R0, #0
40E440:  BNE             loc_40E436
40E442:  B               loc_40E470
40E444:  MOVS            R2, #0
40E446:  MOV             R3, R1
40E448:  MOV             R0, R3; void *
40E44A:  LDR             R3, [R0]
40E44C:  CMP             R3, R4
40E44E:  BEQ             loc_40E45A
40E450:  LDR             R3, [R0,#4]
40E452:  MOV             R2, R0
40E454:  CMP             R3, #0
40E456:  BNE             loc_40E448
40E458:  B               loc_40E470
40E45A:  CMP             R1, R0
40E45C:  BEQ             loc_40E468
40E45E:  CMP             R2, #0
40E460:  ITT NE
40E462:  LDRNE           R1, [R0,#4]
40E464:  STRNE           R1, [R2,#4]
40E466:  B               loc_40E46C
40E468:  LDR             R1, [R1,#4]
40E46A:  STR             R1, [R5,#0x10]
40E46C:  BLX             j__ZN18CPtrNodeSingleLinkdlEPv; CPtrNodeSingleLink::operator delete(void *)
40E470:  LDR             R0, [R5,#0x14]; this
40E472:  CMP             R0, #0
40E474:  ITT NE
40E476:  MOVNE           R1, R4; void *
40E478:  BLXNE           j__ZN13CQuadTreeNode10DeleteItemEPv; CQuadTreeNode::DeleteItem(void *)
40E47C:  LDR             R0, [R5,#0x18]; this
40E47E:  CMP             R0, #0
40E480:  ITT NE
40E482:  MOVNE           R1, R4; void *
40E484:  BLXNE           j__ZN13CQuadTreeNode10DeleteItemEPv; CQuadTreeNode::DeleteItem(void *)
40E488:  LDR             R0, [R5,#0x1C]; this
40E48A:  CMP             R0, #0
40E48C:  ITT NE
40E48E:  MOVNE           R1, R4; void *
40E490:  BLXNE           j__ZN13CQuadTreeNode10DeleteItemEPv; CQuadTreeNode::DeleteItem(void *)
40E494:  LDR             R0, [R5,#0x20]; this
40E496:  CMP             R0, #0
40E498:  IT EQ
40E49A:  POPEQ           {R4,R5,R7,PC}
40E49C:  MOV             R1, R4; void *
40E49E:  POP.W           {R4,R5,R7,LR}
40E4A2:  B               _ZN13CQuadTreeNode10DeleteItemEPv; CQuadTreeNode::DeleteItem(void *)
