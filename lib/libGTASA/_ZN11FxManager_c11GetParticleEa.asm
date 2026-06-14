; =========================================================
; Game Engine Function: _ZN11FxManager_c11GetParticleEa
; Address            : 0x36DA4C - 0x36DA60
; =========================================================

36DA4C:  CMP             R1, #0
36DA4E:  ITT NE
36DA50:  MOVNE           R0, #0
36DA52:  BXNE            LR
36DA54:  PUSH            {R7,LR}
36DA56:  MOV             R7, SP
36DA58:  ADDS            R0, #0x1C; this
36DA5A:  BLX             j__ZN6List_c10RemoveHeadEv; List_c::RemoveHead(void)
36DA5E:  POP             {R7,PC}
