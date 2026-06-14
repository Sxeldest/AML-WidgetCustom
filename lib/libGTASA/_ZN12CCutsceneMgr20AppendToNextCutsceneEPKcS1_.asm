; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr20AppendToNextCutsceneEPKcS1_
; Address            : 0x3901DC - 0x39023E
; =========================================================

3901DC:  PUSH            {R4-R7,LR}
3901DE:  ADD             R7, SP, #0xC
3901E0:  PUSH.W          {R8}
3901E4:  MOV             R8, R1
3901E6:  MOV             R1, R0; char *
3901E8:  LDR             R0, =(_ZN12CCutsceneMgr23ms_numAppendObjectNamesE_ptr - 0x3901F0)
3901EA:  LDR             R2, =(_ZN12CCutsceneMgr20ms_cAppendObjectNameE_ptr - 0x3901F2)
3901EC:  ADD             R0, PC; _ZN12CCutsceneMgr23ms_numAppendObjectNamesE_ptr
3901EE:  ADD             R2, PC; _ZN12CCutsceneMgr20ms_cAppendObjectNameE_ptr
3901F0:  LDR             R5, [R0]; CCutsceneMgr::ms_numAppendObjectNames ...
3901F2:  LDR             R6, [R2]; CCutsceneMgr::ms_cAppendObjectName ...
3901F4:  LDR             R0, [R5]; CCutsceneMgr::ms_numAppendObjectNames
3901F6:  ADD.W           R0, R6, R0,LSL#5; char *
3901FA:  BLX             strcpy
3901FE:  LDR             R0, =(RwEngineInstance_ptr - 0x390206)
390200:  LDR             R1, [R5]; CCutsceneMgr::ms_numAppendObjectNames
390202:  ADD             R0, PC; RwEngineInstance_ptr
390204:  LDR             R4, [R0]; RwEngineInstance
390206:  LDR             R0, [R4]
390208:  LDR.W           R2, [R0,#0x120]
39020C:  ADD.W           R0, R6, R1,LSL#5
390210:  BLX             R2
390212:  LDR             R0, =(_ZN12CCutsceneMgr18ms_cAppendAnimNameE_ptr - 0x39021A)
390214:  LDR             R1, [R5]; CCutsceneMgr::ms_numAppendObjectNames
390216:  ADD             R0, PC; _ZN12CCutsceneMgr18ms_cAppendAnimNameE_ptr
390218:  LDR             R6, [R0]; CCutsceneMgr::ms_cAppendAnimName ...
39021A:  ADD.W           R0, R6, R1,LSL#5; char *
39021E:  MOV             R1, R8; char *
390220:  BLX             strcpy
390224:  LDR             R0, [R4]
390226:  LDR             R1, [R5]; CCutsceneMgr::ms_numAppendObjectNames
390228:  LDR.W           R2, [R0,#0x120]
39022C:  ADD.W           R0, R6, R1,LSL#5
390230:  BLX             R2
390232:  LDR             R0, [R5]; CCutsceneMgr::ms_numAppendObjectNames
390234:  ADDS            R0, #1
390236:  STR             R0, [R5]; CCutsceneMgr::ms_numAppendObjectNames
390238:  POP.W           {R8}
39023C:  POP             {R4-R7,PC}
