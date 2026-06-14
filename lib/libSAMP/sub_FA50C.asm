; =========================================================
; Game Engine Function: sub_FA50C
; Address            : 0xFA50C - 0xFA522
; =========================================================

FA50C:  PUSH            {R4,R6,R7,LR}
FA50E:  ADD             R7, SP, #8
FA510:  MOV             R4, R0
FA512:  LDR             R0, [R0,#4]
FA514:  CBZ             R0, loc_FA51E
FA516:  BL              sub_FAAD0
FA51A:  BLX             j__ZdlPv; operator delete(void *)
FA51E:  MOV             R0, R4
FA520:  POP             {R4,R6,R7,PC}
