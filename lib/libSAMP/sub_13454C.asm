; =========================================================
; Game Engine Function: sub_13454C
; Address            : 0x13454C - 0x13455E
; =========================================================

13454C:  LDR             R2, =(_ZTSZN4menuC1EvE3$_1 - 0x134556); type descriptor name
13454E:  LDR             R3, [R1,#4]
134550:  MOVS            R1, #0
134552:  ADD             R2, PC; type descriptor name
134554:  CMP             R3, R2
134556:  IT EQ
134558:  ADDEQ           R1, R0, #4
13455A:  MOV             R0, R1
13455C:  BX              LR
