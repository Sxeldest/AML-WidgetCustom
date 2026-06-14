; =========================================================
; Game Engine Function: _Z18GetMillisecondTimev
; Address            : 0x420A68 - 0x420A74
; =========================================================

420A68:  PUSH            {R7,LR}
420A6A:  MOV             R7, SP
420A6C:  BLX             j__Z7RsTimerv; RsTimer(void)
420A70:  MOVS            R1, #0
420A72:  POP             {R7,PC}
