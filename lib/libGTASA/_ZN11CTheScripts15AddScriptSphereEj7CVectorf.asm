; =========================================================
; Game Engine Function: _ZN11CTheScripts15AddScriptSphereEj7CVectorf
; Address            : 0x34A538 - 0x34A58E
; =========================================================

34A538:  PUSH            {R4,R5,R7,LR}
34A53A:  ADD             R7, SP, #8
34A53C:  LDR             R4, =(_ZN11CTheScripts17ScriptSphereArrayE_ptr - 0x34A54A)
34A53E:  MOV.W           R12, #0xFFFFFFFF
34A542:  VLDR            S0, [R7,#arg_0]
34A546:  ADD             R4, PC; _ZN11CTheScripts17ScriptSphereArrayE_ptr
34A548:  LDR             R4, [R4]; CTheScripts::ScriptSphereArray ...
34A54A:  SUBS            R4, #0xC
34A54C:  ADD.W           R12, R12, #1
34A550:  ADD.W           LR, R4, #0x18
34A554:  CMP.W           R12, #0xF
34A558:  BHI             loc_34A562
34A55A:  LDRB            R4, [R4,#0xC]; CTheScripts::ScriptSphereArray
34A55C:  CMP             R4, #0
34A55E:  MOV             R4, LR
34A560:  BNE             loc_34A54C
34A562:  MOVS            R4, #1
34A564:  ADD             R0, R12
34A566:  STRB.W          R4, [LR,#-0xC]
34A56A:  VSTR            S0, [LR,#8]
34A56E:  LDRH.W          R5, [LR,#-0xA]
34A572:  STRD.W          R0, R1, [LR,#-8]
34A576:  MOVW            R0, #0xFFFE
34A57A:  CMP             R5, R0
34A57C:  STRD.W          R2, R3, [LR]
34A580:  IT CC
34A582:  ADDCC           R4, R5, #1
34A584:  ORR.W           R0, R12, R4,LSL#16
34A588:  STRH.W          R4, [LR,#-0xA]
34A58C:  POP             {R4,R5,R7,PC}
