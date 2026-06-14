; =========================================================
; Game Engine Function: _ZN22TextureDatabaseRuntime9FullyLoadEv
; Address            : 0x1E9534 - 0x1E9594
; =========================================================

1E9534:  PUSH            {R4-R7,LR}
1E9536:  ADD             R7, SP, #0xC
1E9538:  PUSH.W          {R8}
1E953C:  MOV             R4, R0
1E953E:  LDR             R0, [R4,#0x18]
1E9540:  CBZ             R0, loc_1E958E
1E9542:  LDR             R1, =(_ZN22TextureDatabaseRuntime12storedTexelsE_ptr - 0x1E954C)
1E9544:  MOVS            R6, #0
1E9546:  MOVS            R5, #0
1E9548:  ADD             R1, PC; _ZN22TextureDatabaseRuntime12storedTexelsE_ptr
1E954A:  LDR.W           R8, [R1]; TextureDatabaseRuntime::storedTexels ...
1E954E:  LDR             R1, [R4,#0x1C]
1E9550:  ADDS            R2, R1, R6
1E9552:  LDRB            R3, [R2,#0xA]
1E9554:  LSLS            R3, R3, #0x1D
1E9556:  BMI             loc_1E9586
1E9558:  LDRH            R0, [R2,#8]
1E955A:  AND.W           R0, R0, #0xF000
1E955E:  CMP.W           R0, #0x3000
1E9562:  BEQ             loc_1E9578
1E9564:  MOV             R0, R4; this
1E9566:  MOV             R1, R5; unsigned int
1E9568:  BLX             j__ZN22TextureDatabaseRuntime15LoadFullTextureEj; TextureDatabaseRuntime::LoadFullTexture(uint)
1E956C:  LDR.W           R1, [R8]; TextureDatabaseRuntime::storedTexels
1E9570:  ADD             R0, R1
1E9572:  STR.W           R0, [R8]; TextureDatabaseRuntime::storedTexels
1E9576:  LDR             R1, [R4,#0x1C]
1E9578:  ADDS            R0, R1, R6
1E957A:  LDR.W           R0, [R0,#0x13]
1E957E:  LDR             R1, [R0,#0x54]
1E9580:  ADDS            R1, #1
1E9582:  STR             R1, [R0,#0x54]
1E9584:  LDR             R0, [R4,#0x18]
1E9586:  ADDS            R5, #1
1E9588:  ADDS            R6, #0x17
1E958A:  CMP             R5, R0
1E958C:  BCC             loc_1E954E
1E958E:  POP.W           {R8}
1E9592:  POP             {R4-R7,PC}
