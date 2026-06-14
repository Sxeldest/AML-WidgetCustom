; =========================================================
; Game Engine Function: sub_F7B34
; Address            : 0xF7B34 - 0xF7B44
; =========================================================

F7B34:  PUSH            {R7,LR}
F7B36:  MOV             R7, SP
F7B38:  BLX             pthread_mutex_trylock
F7B3C:  CLZ.W           R0, R0
F7B40:  LSRS            R0, R0, #5
F7B42:  POP             {R7,PC}
