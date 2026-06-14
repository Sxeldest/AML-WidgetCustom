; =========================================================
; Game Engine Function: _ZN20CObjectSaveStructure7ExtractEP7CObject
; Address            : 0x484612 - 0x4846EE
; =========================================================

484612:  PUSH            {R4,R5,R7,LR}
484614:  ADD             R7, SP, #8
484616:  MOV             R4, R1
484618:  MOV             R5, R0
48461A:  LDR             R1, [R4,#0x14]; CMatrix *
48461C:  BLX             j__ZN27CCompressedMatrixNotAligned24DecompressIntoFullMatrixER7CMatrix; CCompressedMatrixNotAligned::DecompressIntoFullMatrix(CMatrix &)
484620:  LDRB            R0, [R5,#0x18]
484622:  STRB.W          R0, [R4,#0x141]
484626:  LDRH            R0, [R5,#0x1A]
484628:  STRH.W          R0, [R4,#0x142]
48462C:  LDR             R0, [R5,#0x1C]
48462E:  STR.W           R0, [R4,#0x154]
484632:  LDRD.W          R0, R1, [R5,#0x20]
484636:  STRD.W          R0, R1, [R4,#0x1C]
48463A:  MOVS            R1, #2
48463C:  LDR.W           R0, [R5,#0x2A]
484640:  STRB.W          R1, [R4,#0x140]
484644:  STR.W           R0, [R4,#0x144]
484648:  LDRB.W          R0, [R5,#0x2F]
48464C:  STRB.W          R0, [R4,#0x148]
484650:  LDRB.W          R0, [R5,#0x30]
484654:  LDR             R1, [R4,#0x44]
484656:  STRB.W          R0, [R4,#0x149]
48465A:  LDRH            R0, [R5,#0x32]
48465C:  BIC.W           R2, R1, #4
484660:  STRH.W          R0, [R4,#0x16C]
484664:  LDRB.W          R0, [R5,#0x31]
484668:  TST.W           R0, #1
48466C:  IT NE
48466E:  ORRNE.W         R2, R1, #4
484672:  STR             R2, [R4,#0x44]
484674:  BIC.W           R1, R2, #0x2000
484678:  LDRB.W          R0, [R5,#0x31]
48467C:  TST.W           R0, #2
484680:  IT NE
484682:  ORRNE.W         R1, R2, #0x2000
484686:  STR             R1, [R4,#0x44]
484688:  BIC.W           R2, R1, #0x40000
48468C:  LDRB.W          R0, [R5,#0x31]
484690:  TST.W           R0, #4
484694:  IT NE
484696:  ORRNE.W         R2, R1, #0x40000
48469A:  STR             R2, [R4,#0x44]
48469C:  BIC.W           R1, R2, #0x80000
4846A0:  LDRB.W          R0, [R5,#0x31]
4846A4:  TST.W           R0, #8
4846A8:  IT NE
4846AA:  ORRNE.W         R1, R2, #0x80000
4846AE:  STR             R1, [R4,#0x44]
4846B0:  BIC.W           R2, R1, #0x100000
4846B4:  LDRB.W          R0, [R5,#0x31]
4846B8:  TST.W           R0, #0x10
4846BC:  IT NE
4846BE:  ORRNE.W         R2, R1, #0x100000
4846C2:  STR             R2, [R4,#0x44]
4846C4:  BIC.W           R1, R2, #0x200000
4846C8:  LDRB.W          R0, [R5,#0x31]
4846CC:  TST.W           R0, #0x20
4846D0:  IT NE
4846D2:  ORRNE.W         R1, R2, #0x200000
4846D6:  STR             R1, [R4,#0x44]
4846D8:  BIC.W           R2, R1, #0x800000
4846DC:  LDRB.W          R0, [R5,#0x31]
4846E0:  TST.W           R0, #0x40
4846E4:  IT NE
4846E6:  ORRNE.W         R2, R1, #0x800000
4846EA:  STR             R2, [R4,#0x44]
4846EC:  POP             {R4,R5,R7,PC}
