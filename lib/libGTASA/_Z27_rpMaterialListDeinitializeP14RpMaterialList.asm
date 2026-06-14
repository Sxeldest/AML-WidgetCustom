; =========================================================
; Game Engine Function: _Z27_rpMaterialListDeinitializeP14RpMaterialList
; Address            : 0x21776C - 0x2177BE
; =========================================================

21776C:  PUSH            {R4-R7,LR}
21776E:  ADD             R7, SP, #0xC
217770:  PUSH.W          {R8,R9,R11}
217774:  MOV             R9, R0
217776:  LDR.W           R8, [R9]
21777A:  CMP.W           R8, #0
21777E:  BEQ             loc_2177B0
217780:  LDR.W           R6, [R9,#4]
217784:  CMP             R6, #1
217786:  BLT             loc_21779A
217788:  MOVS            R5, #0
21778A:  MOV             R4, R8
21778C:  LDR             R0, [R4]
21778E:  BLX             j__Z17RpMaterialDestroyP10RpMaterial; RpMaterialDestroy(RpMaterial *)
217792:  STR.W           R5, [R4],#4
217796:  SUBS            R6, #1
217798:  BNE             loc_21778C
21779A:  LDR             R0, =(RwEngineInstance_ptr - 0x2177A0)
21779C:  ADD             R0, PC; RwEngineInstance_ptr
21779E:  LDR             R0, [R0]; RwEngineInstance
2177A0:  LDR             R0, [R0]
2177A2:  LDR.W           R1, [R0,#0x130]
2177A6:  MOV             R0, R8
2177A8:  BLX             R1
2177AA:  MOVS            R0, #0
2177AC:  STR.W           R0, [R9]
2177B0:  MOVS            R0, #0
2177B2:  STRD.W          R0, R0, [R9,#4]
2177B6:  MOV             R0, R9
2177B8:  POP.W           {R8,R9,R11}
2177BC:  POP             {R4-R7,PC}
