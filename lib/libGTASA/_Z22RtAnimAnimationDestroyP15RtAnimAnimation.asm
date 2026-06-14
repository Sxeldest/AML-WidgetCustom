; =========================================================
; Game Engine Function: _Z22RtAnimAnimationDestroyP15RtAnimAnimation
; Address            : 0x1EB03C - 0x1EB052
; =========================================================

1EB03C:  PUSH            {R7,LR}
1EB03E:  MOV             R7, SP
1EB040:  LDR             R1, =(RwEngineInstance_ptr - 0x1EB046)
1EB042:  ADD             R1, PC; RwEngineInstance_ptr
1EB044:  LDR             R1, [R1]; RwEngineInstance
1EB046:  LDR             R1, [R1]
1EB048:  LDR.W           R1, [R1,#0x130]
1EB04C:  BLX             R1
1EB04E:  MOVS            R0, #1
1EB050:  POP             {R7,PC}
