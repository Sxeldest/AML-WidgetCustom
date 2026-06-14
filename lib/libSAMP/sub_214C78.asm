; =========================================================
; Game Engine Function: sub_214C78
; Address            : 0x214C78 - 0x214C86
; =========================================================

214C78:  PUSH            {R7,LR}
214C7A:  MOV             R7, SP
214C7C:  LDR             R0, [R0]; th
214C7E:  MOVS            R1, #0; thread_return
214C80:  BLX             pthread_join
214C84:  POP             {R7,PC}
