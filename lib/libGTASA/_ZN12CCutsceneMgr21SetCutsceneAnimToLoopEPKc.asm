; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr21SetCutsceneAnimToLoopEPKc
; Address            : 0x4650C8 - 0x4650E2
; =========================================================

4650C8:  PUSH            {R7,LR}
4650CA:  MOV             R7, SP
4650CC:  MOV             R1, R0; CKeyGen *
4650CE:  LDR             R0, =(_ZN12CCutsceneMgr23ms_cutsceneAssociationsE_ptr - 0x4650D4)
4650D0:  ADD             R0, PC; _ZN12CCutsceneMgr23ms_cutsceneAssociationsE_ptr
4650D2:  LDR             R0, [R0]; this
4650D4:  BLX             j__ZN20CAnimBlendAssocGroup12GetAnimationEPKc; CAnimBlendAssocGroup::GetAnimation(char const*)
4650D8:  LDRH            R1, [R0,#0xA]
4650DA:  ORR.W           R1, R1, #2
4650DE:  STRH            R1, [R0,#0xA]
4650E0:  POP             {R7,PC}
