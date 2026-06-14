; =========================================================
; Game Engine Function: sub_11235C
; Address            : 0x11235C - 0x11236E
; =========================================================

11235C:  LDR             R2, =(_ZTSZN12custom_radarC1EvE3$_0 - 0x112366); type descriptor name
11235E:  LDR             R3, [R1,#4]
112360:  MOVS            R1, #0
112362:  ADD             R2, PC; type descriptor name
112364:  CMP             R3, R2
112366:  IT EQ
112368:  ADDEQ           R1, R0, #4
11236A:  MOV             R0, R1
11236C:  BX              LR
