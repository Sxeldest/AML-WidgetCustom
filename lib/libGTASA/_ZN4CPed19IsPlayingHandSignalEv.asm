; =========================================================
; Game Engine Function: _ZN4CPed19IsPlayingHandSignalEv
; Address            : 0x4A822C - 0x4A8246
; =========================================================

4A822C:  PUSH            {R7,LR}
4A822E:  MOV             R7, SP
4A8230:  LDR.W           R0, [R0,#0x440]
4A8234:  MOV.W           R1, #0x1AA; int
4A8238:  ADDS            R0, #4; this
4A823A:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4A823E:  CMP             R0, #0
4A8240:  IT NE
4A8242:  MOVNE           R0, #1
4A8244:  POP             {R7,PC}
