; =========================================================
; Game Engine Function: _ZN20CObjectSaveStructure9ConstructEP7CObject
; Address            : 0x484558 - 0x484612
; =========================================================

484558:  PUSH            {R4,R5,R7,LR}
48455A:  ADD             R7, SP, #8
48455C:  MOV             R5, R1
48455E:  MOV             R4, R0
484560:  LDR             R1, [R5,#0x14]; CMatrix *
484562:  BLX             j__ZN27CCompressedMatrixNotAligned22CompressFromFullMatrixER7CMatrix; CCompressedMatrixNotAligned::CompressFromFullMatrix(CMatrix &)
484566:  LDRB.W          R0, [R5,#0x141]
48456A:  STRB            R0, [R4,#0x18]
48456C:  LDRH.W          R0, [R5,#0x142]
484570:  STRH            R0, [R4,#0x1A]
484572:  LDR.W           R0, [R5,#0x154]
484576:  STR             R0, [R4,#0x1C]
484578:  LDR             R0, [R5,#0x1C]
48457A:  LDR             R1, [R5,#0x20]
48457C:  STR             R1, [R4,#0x24]
48457E:  STR             R0, [R4,#0x20]
484580:  MOVS            R0, #0
484582:  STRB.W          R0, [R4,#0x28]
484586:  LDR.W           R1, [R5,#0x144]
48458A:  STR.W           R1, [R4,#0x2A]
48458E:  LDRB.W          R1, [R5,#0x140]
484592:  STRB.W          R1, [R4,#0x2E]
484596:  LDRB.W          R1, [R5,#0x148]
48459A:  STRB.W          R1, [R4,#0x2F]
48459E:  LDRB.W          R1, [R5,#0x149]
4845A2:  STRB.W          R1, [R4,#0x30]
4845A6:  LDRH.W          R1, [R5,#0x16C]
4845AA:  STRB.W          R0, [R4,#0x31]
4845AE:  STRH            R1, [R4,#0x32]
4845B0:  LDR             R0, [R5,#0x44]
4845B2:  UBFX.W          R0, R0, #2, #1
4845B6:  STRB.W          R0, [R4,#0x31]
4845BA:  LDR             R1, [R5,#0x44]
4845BC:  TST.W           R1, #0x2000
4845C0:  ITTT NE
4845C2:  ORRNE.W         R0, R0, #2
4845C6:  STRBNE.W        R0, [R4,#0x31]
4845CA:  LDRNE           R1, [R5,#0x44]
4845CC:  LSLS            R2, R1, #0xD
4845CE:  ITTT MI
4845D0:  ORRMI.W         R0, R0, #4
4845D4:  STRBMI.W        R0, [R4,#0x31]
4845D8:  LDRMI           R1, [R5,#0x44]
4845DA:  LSLS            R2, R1, #0xC
4845DC:  ITTT MI
4845DE:  ORRMI.W         R0, R0, #8
4845E2:  STRBMI.W        R0, [R4,#0x31]
4845E6:  LDRMI           R1, [R5,#0x44]
4845E8:  LSLS            R2, R1, #0xB
4845EA:  ITTT MI
4845EC:  ORRMI.W         R0, R0, #0x10
4845F0:  STRBMI.W        R0, [R4,#0x31]
4845F4:  LDRMI           R1, [R5,#0x44]
4845F6:  LSLS            R2, R1, #0xA
4845F8:  ITTT MI
4845FA:  ORRMI.W         R0, R0, #0x20 ; ' '
4845FE:  STRBMI.W        R0, [R4,#0x31]
484602:  LDRMI           R1, [R5,#0x44]
484604:  LSLS            R1, R1, #8
484606:  ITT MI
484608:  ORRMI.W         R0, R0, #0x40 ; '@'
48460C:  STRBMI.W        R0, [R4,#0x31]
484610:  POP             {R4,R5,R7,PC}
