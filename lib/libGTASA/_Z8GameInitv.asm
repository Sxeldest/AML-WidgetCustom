; =========================================================
; Game Engine Function: _Z8GameInitv
; Address            : 0x46F6C4 - 0x46F6E2
; =========================================================

46F6C4:  PUSH            {R7,LR}
46F6C6:  MOV             R7, SP
46F6C8:  MOVS            R0, #0; void *
46F6CA:  BLX             j__Z14RsRwInitializePv; RsRwInitialize(void *)
46F6CE:  CMP             R0, #0
46F6D0:  IT NE
46F6D2:  BLXNE           j__ZN5CGame20InitialiseRenderWareEv; CGame::InitialiseRenderWare(void)
46F6D6:  BLX             j__Z7RsTimerv; RsTimer(void)
46F6DA:  POP.W           {R7,LR}
46F6DE:  B.W             j_srand
