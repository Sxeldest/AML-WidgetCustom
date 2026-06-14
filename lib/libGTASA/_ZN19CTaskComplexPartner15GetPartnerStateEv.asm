; =========================================================
; Game Engine Function: _ZN19CTaskComplexPartner15GetPartnerStateEv
; Address            : 0x5347C2 - 0x5347E0
; =========================================================

5347C2:  PUSH            {R7,LR}
5347C4:  MOV             R7, SP
5347C6:  LDRD.W          R1, R0, [R0,#0x34]; int
5347CA:  LDR.W           R0, [R0,#0x440]
5347CE:  ADDS            R0, #4; this
5347D0:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
5347D4:  CMP             R0, #0
5347D6:  ITE NE
5347D8:  LDRSBNE.W       R0, [R0,#0x59]
5347DC:  MOVEQ           R0, #0
5347DE:  POP             {R7,PC}
