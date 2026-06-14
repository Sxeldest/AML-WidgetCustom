; =========================================================
; Game Engine Function: _ZN12CDummyObject12CreateObjectEv
; Address            : 0x45280C - 0x452864
; =========================================================

45280C:  PUSH            {R4-R7,LR}
45280E:  ADD             R7, SP, #0xC
452810:  PUSH.W          {R8}
452814:  MOV             R5, R0
452816:  MOV             R4, R5
452818:  LDR.W           R0, [R4,#0x1C]!
45281C:  ORR.W           R0, R0, #0x2000
452820:  STR             R0, [R4]
452822:  MOV             R0, R5; this
452824:  BLX             j__ZN7CObject6CreateEP12CDummyObject; CObject::Create(CDummyObject *)
452828:  MOV             R6, R0
45282A:  LDR             R0, [R4]
45282C:  MOV.W           R8, #0
452830:  CMP             R6, #0
452832:  BIC.W           R0, R0, #0x2000
452836:  STR             R0, [R4]
452838:  BEQ             loc_45285C
45283A:  LDR             R0, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x452846)
45283C:  MOV             R1, R6
45283E:  MOVS            R2, #1
452840:  MOVS            R3, #0
452842:  ADD             R0, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
452844:  LDR             R0, [R0]; CTheScripts::ScriptsForBrains ...
452846:  BLX             j__ZN17CScriptsForBrains27CheckIfNewEntityNeedsScriptEP7CEntityaP13CPedGenerator; CScriptsForBrains::CheckIfNewEntityNeedsScript(CEntity *,signed char,CPedGenerator *)
45284A:  LDR             R0, [R4]
45284C:  BIC.W           R0, R0, #0x81
452850:  STR             R0, [R4]
452852:  LDR             R0, [R5,#0x34]
452854:  STR             R0, [R6,#0x34]
452856:  STR.W           R8, [R5,#0x34]
45285A:  MOV             R8, R6
45285C:  MOV             R0, R8
45285E:  POP.W           {R8}
452862:  POP             {R4-R7,PC}
