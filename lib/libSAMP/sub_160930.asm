; =========================================================
; Game Engine Function: sub_160930
; Address            : 0x160930 - 0x160946
; =========================================================

160930:  PUSH            {R4,R6,R7,LR}
160932:  ADD             R7, SP, #8
160934:  MOV             R4, R0
160936:  BL              sub_160946
16093A:  LDR             R0, [R4]; void *
16093C:  CBZ             R0, loc_160942
16093E:  BLX             j__ZdlPv; operator delete(void *)
160942:  MOV             R0, R4
160944:  POP             {R4,R6,R7,PC}
