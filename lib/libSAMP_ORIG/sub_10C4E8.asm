; =========================================================
; Game Engine Function: sub_10C4E8
; Address            : 0x10C4E8 - 0x10C4F4
; =========================================================

10C4E8:  MOV             R12, #(pthread_mutex_unlock - 0x10C4F4)
10C4F0:  ADD             R12, PC; pthread_mutex_unlock
10C4F2:  BX              R12; pthread_mutex_unlock
