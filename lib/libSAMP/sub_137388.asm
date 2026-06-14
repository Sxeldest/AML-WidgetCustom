; =========================================================
; Game Engine Function: sub_137388
; Address            : 0x137388 - 0x13739A
; =========================================================

137388:  LDR             R2, =(_ZTSZN5SpawnC1EvE3$_2 - 0x137392); type descriptor name
13738A:  LDR             R3, [R1,#4]
13738C:  MOVS            R1, #0
13738E:  ADD             R2, PC; type descriptor name
137390:  CMP             R3, R2
137392:  IT EQ
137394:  ADDEQ           R1, R0, #4
137396:  MOV             R0, R1
137398:  BX              LR
