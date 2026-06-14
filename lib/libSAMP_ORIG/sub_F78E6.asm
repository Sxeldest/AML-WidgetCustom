; =========================================================
; Game Engine Function: sub_F78E6
; Address            : 0xF78E6 - 0xF78F6
; =========================================================

F78E6:  PUSH            {R7,LR}
F78E8:  MOV             R7, SP
F78EA:  BLX             pthread_mutex_trylock
F78EE:  CLZ.W           R0, R0
F78F2:  LSRS            R0, R0, #5
F78F4:  POP             {R7,PC}
