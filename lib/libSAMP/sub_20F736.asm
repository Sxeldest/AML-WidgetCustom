; =========================================================
; Game Engine Function: sub_20F736
; Address            : 0x20F736 - 0x20F746
; =========================================================

20F736:  PUSH            {R7,LR}
20F738:  MOV             R7, SP
20F73A:  BLX             pthread_mutex_trylock
20F73E:  CLZ.W           R0, R0
20F742:  LSRS            R0, R0, #5
20F744:  POP             {R7,PC}
