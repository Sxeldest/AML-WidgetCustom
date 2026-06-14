; =========================================================
; Game Engine Function: sub_FE324
; Address            : 0xFE324 - 0xFE346
; =========================================================

FE324:  PUSH            {R4,R6,R7,LR}
FE326:  ADD             R7, SP, #8
FE328:  MOV             R4, R0
FE32A:  BLX             gettid
FE32E:  MOV             R1, R0
FE330:  LDR             R0, =(unk_2475D4 - 0xFE336)
FE332:  ADD             R0, PC; unk_2475D4
FE334:  BL              sub_FE350
FE338:  LDR             R0, =(off_2475E4 - 0xFE33E)
FE33A:  ADD             R0, PC; off_2475E4
FE33C:  LDR             R1, [R0]
FE33E:  MOV             R0, R4
FE340:  BLX             R1
FE342:  MOVS            R0, #0
FE344:  POP             {R4,R6,R7,PC}
