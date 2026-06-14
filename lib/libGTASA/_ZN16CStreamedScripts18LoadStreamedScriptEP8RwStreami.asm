; =========================================================
; Game Engine Function: _ZN16CStreamedScripts18LoadStreamedScriptEP8RwStreami
; Address            : 0x3353FC - 0x335442
; =========================================================

3353FC:  PUSH            {R4-R7,LR}
3353FE:  ADD             R7, SP, #0xC
335400:  PUSH.W          {R8}
335404:  MOV             R4, R1
335406:  ADR             R1, aUnkown; "UnKown"
335408:  MOV             R6, R0
33540A:  MOV             R0, R4
33540C:  MOV             R5, R2
33540E:  BLX             j__ZN11CTheScripts26CheckStreamedScriptVersionEP8RwStreamPc; CTheScripts::CheckStreamedScriptVersion(RwStream *,char *)
335412:  CMP             R0, #1
335414:  BNE             loc_33543A
335416:  ADD.W           R0, R6, R5,LSL#5
33541A:  LDR.W           R8, [R0,#0x1C]
33541E:  MOV             R0, R8; unsigned int
335420:  BLX             _Znaj; operator new[](uint)
335424:  MOV             R1, R0; void *
335426:  LSLS            R0, R5, #5
335428:  STR             R1, [R6,R0]
33542A:  MOV             R0, R4; int
33542C:  MOV             R2, R8; size_t
33542E:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
335432:  MOVS            R0, #1
335434:  POP.W           {R8}
335438:  POP             {R4-R7,PC}
33543A:  MOVS            R0, #0
33543C:  POP.W           {R8}
335440:  POP             {R4-R7,PC}
