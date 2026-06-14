; =========================================================
; Game Engine Function: sub_15C8E2
; Address            : 0x15C8E2 - 0x15C902
; =========================================================

15C8E2:  PUSH            {R4,R5,R7,LR}
15C8E4:  ADD             R7, SP, #8
15C8E6:  CBZ             R1, locret_15C900
15C8E8:  MOV             R4, R1
15C8EA:  MOV             R0, R4
15C8EC:  LDR.W           R5, [R0],#0xC
15C8F0:  BL              sub_150F66
15C8F4:  MOV             R0, R4; void *
15C8F6:  BLX             j__ZdlPv; operator delete(void *)
15C8FA:  CMP             R5, #0
15C8FC:  MOV             R4, R5
15C8FE:  BNE             loc_15C8EA
15C900:  POP             {R4,R5,R7,PC}
