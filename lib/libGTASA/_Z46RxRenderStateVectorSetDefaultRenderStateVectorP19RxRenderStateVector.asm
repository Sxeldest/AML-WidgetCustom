; =========================================================
; Game Engine Function: _Z46RxRenderStateVectorSetDefaultRenderStateVectorP19RxRenderStateVector
; Address            : 0x1E17C0 - 0x1E1866
; =========================================================

1E17C0:  PUSH            {R4,R6,R7,LR}
1E17C2:  ADD             R7, SP, #8
1E17C4:  SUB             SP, SP, #0x10
1E17C6:  MOV             R4, R0
1E17C8:  MOVS            R0, #0x80000016
1E17CE:  CBZ             R4, loc_1E1812
1E17D0:  LDR             R2, =(RwEngineInstance_ptr - 0x1E17D8)
1E17D2:  LDR             R1, =(_rxPipelineGlobalsOffset_ptr - 0x1E17DA)
1E17D4:  ADD             R2, PC; RwEngineInstance_ptr
1E17D6:  ADD             R1, PC; _rxPipelineGlobalsOffset_ptr
1E17D8:  LDR             R2, [R2]; RwEngineInstance
1E17DA:  LDR             R1, [R1]; _rxPipelineGlobalsOffset
1E17DC:  LDR             R2, [R2]
1E17DE:  LDR             R1, [R1]
1E17E0:  ADD             R1, R2
1E17E2:  LDR.W           R2, [R2,#0x148]
1E17E6:  ADDS            R1, #4
1E17E8:  CMP             R2, #3
1E17EA:  BNE             loc_1E1816
1E17EC:  MOV             R0, R1
1E17EE:  VLD1.32         {D16-D17}, [R0]!
1E17F2:  VLD1.32         {D18-D19}, [R0]
1E17F6:  ADD.W           R0, R1, #0x1C
1E17FA:  VLD1.32         {D20-D21}, [R0]
1E17FE:  ADD.W           R0, R4, #0x1C
1E1802:  VST1.32         {D20-D21}, [R0]
1E1806:  MOV             R0, R4
1E1808:  VST1.32         {D16-D17}, [R0]!
1E180C:  VST1.32         {D18-D19}, [R0]
1E1810:  B               loc_1E182C
1E1812:  MOVS            R4, #0
1E1814:  B               loc_1E181E
1E1816:  CMP             R1, R4
1E1818:  BEQ             loc_1E1832
1E181A:  MOVS            R4, #0
1E181C:  ADDS            R0, #2; int
1E181E:  STR             R4, [SP,#0x18+var_10]
1E1820:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1E1824:  STR             R0, [SP,#0x18+var_C]
1E1826:  ADD             R0, SP, #0x18+var_10
1E1828:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1E182C:  MOV             R0, R4
1E182E:  ADD             SP, SP, #0x10
1E1830:  POP             {R4,R6,R7,PC}
1E1832:  MOVS            R0, #0xFF
1E1834:  MOVS            R1, #0xFF; unsigned __int8
1E1836:  STR             R0, [SP,#0x18+var_18]; unsigned __int8
1E1838:  ADD             R0, SP, #0x18+var_10; this
1E183A:  MOVS            R2, #0xFF; unsigned __int8
1E183C:  MOVS            R3, #0xFF; unsigned __int8
1E183E:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1E1842:  ADR             R0, dword_1E1870
1E1844:  MOVS            R1, #2
1E1846:  VLD1.64         {D16-D17}, [R0@128]
1E184A:  MOVS            R0, #1
1E184C:  STRD.W          R0, R0, [R4,#0x14]
1E1850:  MOV             R0, R4
1E1852:  STR             R1, [R4,#0x1C]
1E1854:  MOVS            R1, #0
1E1856:  VST1.32         {D16-D17}, [R0]!
1E185A:  STR             R1, [R0]
1E185C:  LDR             R0, [SP,#0x18+var_10]
1E185E:  STR             R1, [R4,#0x24]
1E1860:  STR             R0, [R4,#0x20]
1E1862:  STR             R0, [R4,#0x28]
1E1864:  B               loc_1E182C
