; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo20ConvertAnimFileIndexEv
; Address            : 0x386ED0 - 0x386EF8
; =========================================================

386ED0:  PUSH            {R4,R5,R7,LR}
386ED2:  ADD             R7, SP, #8
386ED4:  MOV             R4, R0
386ED6:  LDR.W           R0, [R4,#0x3A4]; this
386EDA:  ADDS            R1, R0, #1; char *
386EDC:  IT EQ
386EDE:  POPEQ           {R4,R5,R7,PC}
386EE0:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
386EE4:  MOV             R5, R0
386EE6:  LDR.W           R0, [R4,#0x3A4]; void *
386EEA:  CMP             R0, #0
386EEC:  IT NE
386EEE:  BLXNE           _ZdaPv; operator delete[](void *)
386EF2:  STR.W           R5, [R4,#0x3A4]
386EF6:  POP             {R4,R5,R7,PC}
