; =========================================================
; Game Engine Function: _Z12Initialise3DPv
; Address            : 0x46F4E0 - 0x46F4F4
; =========================================================

46F4E0:  PUSH            {R7,LR}
46F4E2:  MOV             R7, SP
46F4E4:  BLX             j__Z14RsRwInitializePv; RsRwInitialize(void *)
46F4E8:  CMP             R0, #0
46F4EA:  ITE EQ
46F4EC:  MOVEQ           R0, #0; this
46F4EE:  BLXNE           j__ZN5CGame20InitialiseRenderWareEv; CGame::InitialiseRenderWare(void)
46F4F2:  POP             {R7,PC}
