; =========================================================
; Game Engine Function: _ZN10FxSystem_c4InitEP12FxSystemBP_cP11RwMatrixTagS3_
; Address            : 0x36E606 - 0x36E71A
; =========================================================

36E606:  PUSH            {R4-R7,LR}
36E608:  ADD             R7, SP, #0xC
36E60A:  PUSH.W          {R8}
36E60E:  MOV             R4, R0
36E610:  MOV             R5, R1
36E612:  STR             R5, [R4,#8]
36E614:  MOV             R0, R2
36E616:  VLD1.32         {D16-D17}, [R0]!
36E61A:  ADD.W           R1, R2, #0x30 ; '0'
36E61E:  ADD.W           R8, R4, #0x14
36E622:  VLD1.32         {D18-D19}, [R1]
36E626:  ADD.W           R1, R2, #0x20 ; ' '
36E62A:  VLD1.32         {D22-D23}, [R0]
36E62E:  ADD.W           R0, R4, #0x44 ; 'D'
36E632:  VLD1.32         {D20-D21}, [R1]
36E636:  VST1.32         {D16-D17}, [R8]
36E63A:  VST1.32         {D18-D19}, [R0]
36E63E:  ADD.W           R0, R4, #0x34 ; '4'
36E642:  VST1.32         {D20-D21}, [R0]
36E646:  ADD.W           R0, R4, #0x24 ; '$'
36E64A:  STR             R3, [R4,#0xC]
36E64C:  VST1.32         {D22-D23}, [R0]
36E650:  MOV             R0, R3
36E652:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
36E656:  MOVS            R6, #0
36E658:  MOVS            R0, #1
36E65A:  STR             R6, [R4,#0x58]
36E65C:  MOV.W           R1, #0x3E8; unsigned int
36E660:  STR             R6, [R4,#0x10]
36E662:  STRH.W          R0, [R4,#0x54]
36E666:  STRB.W          R6, [R4,#0x56]
36E66A:  STRH.W          R6, [R4,#0x60]
36E66E:  LDRB.W          R0, [R4,#0x66]
36E672:  STRH.W          R1, [R4,#0x62]
36E676:  AND.W           R0, R0, #0xF8
36E67A:  STRH.W          R1, [R4,#0x64]
36E67E:  STRD.W          R6, R6, [R4,#0x6C]
36E682:  ORR.W           R0, R0, #4
36E686:  STRD.W          R6, R6, [R4,#0x74]
36E68A:  STRB.W          R0, [R4,#0x66]
36E68E:  LDR             R0, [R5,#0x20]
36E690:  CBZ             R0, loc_36E6AA
36E692:  MOVS            R0, #0x14; byte_count
36E694:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
36E698:  STR             R6, [R0,#0x10]
36E69A:  STR             R0, [R4,#0x78]
36E69C:  LDR             R1, [R5,#0x20]
36E69E:  VLD1.32         {D16-D17}, [R1]!
36E6A2:  LDR             R1, [R1]
36E6A4:  VST1.32         {D16-D17}, [R0]
36E6A8:  STR             R1, [R0,#0x10]
36E6AA:  LDRSB.W         R0, [R5,#0x1B]
36E6AE:  MOVS            R1, #4
36E6B0:  UMULL.W         R0, R1, R0, R1
36E6B4:  CMP             R1, #0
36E6B6:  IT NE
36E6B8:  MOVNE           R1, #1
36E6BA:  CMP             R1, #0
36E6BC:  IT NE
36E6BE:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
36E6C2:  BLX             _Znaj; operator new[](uint)
36E6C6:  STR             R0, [R4,#0x7C]
36E6C8:  LDRSB.W         R0, [R5,#0x1B]
36E6CC:  CMP             R0, #1
36E6CE:  BLT             loc_36E702
36E6D0:  MOVS            R6, #0
36E6D2:  LDR             R0, [R5,#0x1C]
36E6D4:  LDR.W           R0, [R0,R6,LSL#2]
36E6D8:  LDR             R1, [R0]
36E6DA:  LDR             R1, [R1,#0x10]
36E6DC:  BLX             R1
36E6DE:  LDR             R1, [R4,#0x7C]
36E6E0:  STR.W           R0, [R1,R6,LSL#2]
36E6E4:  LDR             R0, [R4,#0x7C]
36E6E6:  LDR             R1, [R5,#0x1C]
36E6E8:  LDR.W           R0, [R0,R6,LSL#2]
36E6EC:  LDR.W           R1, [R1,R6,LSL#2]
36E6F0:  LDR             R2, [R0]
36E6F2:  LDR             R3, [R2,#8]
36E6F4:  MOV             R2, R4
36E6F6:  BLX             R3
36E6F8:  LDRSB.W         R0, [R5,#0x1B]
36E6FC:  ADDS            R6, #1
36E6FE:  CMP             R6, R0
36E700:  BLT             loc_36E6D2
36E702:  ADD.W           R0, R4, #0x80; this
36E706:  MOV             R1, R4; FxSystem_c *
36E708:  BLX             j__ZN18CAEFireAudioEntity10InitialiseEP10FxSystem_c; CAEFireAudioEntity::Initialise(FxSystem_c *)
36E70C:  MOV             R0, R8
36E70E:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
36E712:  MOVS            R0, #1
36E714:  POP.W           {R8}
36E718:  POP             {R4-R7,PC}
