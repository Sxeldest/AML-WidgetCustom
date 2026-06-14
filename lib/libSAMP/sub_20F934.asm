; =========================================================
; Game Engine Function: sub_20F934
; Address            : 0x20F934 - 0x20F944
; =========================================================

20F934:  PUSH            {R7,LR}
20F936:  MOV             R7, SP
20F938:  BLX             pthread_mutex_trylock
20F93C:  CLZ.W           R0, R0
20F940:  LSRS            R0, R0, #5
20F942:  POP             {R7,PC}
