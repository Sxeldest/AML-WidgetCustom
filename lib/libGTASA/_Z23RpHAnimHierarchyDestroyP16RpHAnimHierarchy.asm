; =========================================================
; Game Engine Function: _Z23RpHAnimHierarchyDestroyP16RpHAnimHierarchy
; Address            : 0x1C27CC - 0x1C2840
; =========================================================

1C27CC:  PUSH            {R4-R7,LR}
1C27CE:  ADD             R7, SP, #0xC
1C27D0:  PUSH.W          {R11}
1C27D4:  MOV             R4, R0
1C27D6:  LDR             R0, [R4]
1C27D8:  LDR             R5, [R4,#0x14]
1C27DA:  TST.W           R0, #1
1C27DE:  BNE             loc_1C2804
1C27E0:  LSLS            R0, R0, #0x1E
1C27E2:  BMI             loc_1C27F4
1C27E4:  LDR             R0, =(RwEngineInstance_ptr - 0x1C27EA)
1C27E6:  ADD             R0, PC; RwEngineInstance_ptr
1C27E8:  LDR             R0, [R0]; RwEngineInstance
1C27EA:  LDR             R1, [R0]
1C27EC:  LDR             R0, [R4,#0xC]
1C27EE:  LDR.W           R1, [R1,#0x130]
1C27F2:  BLX             R1
1C27F4:  LDR             R0, =(RwEngineInstance_ptr - 0x1C27FA)
1C27F6:  ADD             R0, PC; RwEngineInstance_ptr
1C27F8:  LDR             R0, [R0]; RwEngineInstance
1C27FA:  LDR             R1, [R0]
1C27FC:  LDR             R0, [R4,#0x10]
1C27FE:  LDR.W           R1, [R1,#0x130]
1C2802:  BLX             R1
1C2804:  LDR             R0, [R4,#0x20]
1C2806:  MOVS            R6, #0
1C2808:  STRD.W          R6, R6, [R4,#8]
1C280C:  STR             R6, [R4,#0x10]
1C280E:  BLX             j__Z25RtAnimInterpolatorDestroyP18RtAnimInterpolator; RtAnimInterpolatorDestroy(RtAnimInterpolator *)
1C2812:  LDR             R0, =(RwEngineInstance_ptr - 0x1C281A)
1C2814:  LDR             R1, =(RpHAnimAtomicGlobals_ptr - 0x1C281C)
1C2816:  ADD             R0, PC; RwEngineInstance_ptr
1C2818:  ADD             R1, PC; RpHAnimAtomicGlobals_ptr
1C281A:  LDR             R0, [R0]; RwEngineInstance
1C281C:  LDR             R1, [R1]; RpHAnimAtomicGlobals
1C281E:  LDR             R2, [R0]
1C2820:  LDR             R0, [R1,#(dword_6B70A0 - 0x6B709C)]
1C2822:  MOV             R1, R4
1C2824:  LDR.W           R2, [R2,#0x140]
1C2828:  BLX             R2
1C282A:  CBZ             R5, loc_1C2838
1C282C:  LDR             R0, =(RpHAnimAtomicGlobals_ptr - 0x1C2832)
1C282E:  ADD             R0, PC; RpHAnimAtomicGlobals_ptr
1C2830:  LDR             R0, [R0]; RpHAnimAtomicGlobals
1C2832:  LDR             R0, [R0]
1C2834:  ADD             R0, R5
1C2836:  STR             R6, [R0,#4]
1C2838:  MOVS            R0, #0
1C283A:  POP.W           {R11}
1C283E:  POP             {R4-R7,PC}
