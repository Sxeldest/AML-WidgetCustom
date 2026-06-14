; =========================================================
; Game Engine Function: _ZN9CColStore9RemoveColEi
; Address            : 0x2E2530 - 0x2E25A4
; =========================================================

2E2530:  PUSH            {R4-R7,LR}
2E2532:  ADD             R7, SP, #0xC
2E2534:  PUSH.W          {R8}
2E2538:  MOV             R8, R0
2E253A:  LDR             R0, =(_ZN9CColStore11ms_pColPoolE_ptr - 0x2E2542)
2E253C:  MOVS            R2, #0
2E253E:  ADD             R0, PC; _ZN9CColStore11ms_pColPoolE_ptr
2E2540:  LDR             R0, [R0]; CColStore::ms_pColPool ...
2E2542:  LDR             R0, [R0]; CColStore::ms_pColPool
2E2544:  LDR             R1, [R0,#4]
2E2546:  LDRSB.W         R1, [R1,R8]
2E254A:  CMP             R1, #0
2E254C:  BLT             loc_2E2558
2E254E:  MOVS            R1, #0x2C ; ','
2E2550:  LDR             R0, [R0]
2E2552:  MLA.W           R5, R8, R1, R0
2E2556:  B               loc_2E255A
2E2558:  MOVS            R5, #0
2E255A:  LDRSH.W         R0, [R5,#0x22]
2E255E:  LDRSH.W         R1, [R5,#0x24]
2E2562:  STRB.W          R2, [R5,#0x28]
2E2566:  CMP             R0, R1
2E2568:  BGT             loc_2E259E
2E256A:  LDR             R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2E2570)
2E256C:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2E256E:  LDR             R6, [R2]; CModelInfo::ms_modelInfoPtrs ...
2E2570:  MOV             R4, R0
2E2572:  LDR.W           R2, [R6,R4,LSL#2]
2E2576:  CMP             R2, #0
2E2578:  ITT NE
2E257A:  LDRNE           R0, [R2,#0x2C]; this
2E257C:  CMPNE           R0, #0
2E257E:  BEQ             loc_2E2596
2E2580:  LDRB.W          R2, [R2,#0x28]
2E2584:  LSLS            R2, R2, #0x18
2E2586:  BPL             loc_2E2596
2E2588:  LDRB.W          R2, [R0,#0x28]
2E258C:  CMP             R2, R8
2E258E:  BNE             loc_2E2596
2E2590:  BLX             j__ZN9CColModel22RemoveCollisionVolumesEv; CColModel::RemoveCollisionVolumes(void)
2E2594:  LDRH            R1, [R5,#0x24]
2E2596:  ADDS            R0, R4, #1
2E2598:  SXTH            R2, R1
2E259A:  CMP             R4, R2
2E259C:  BLT             loc_2E2570
2E259E:  POP.W           {R8}
2E25A2:  POP             {R4-R7,PC}
