; =========================================================
; Game Engine Function: sub_21FCD0
; Address            : 0x21FCD0 - 0x21FCE6
; =========================================================

21FCD0:  PUSH            {R4,R6,R7,LR}
21FCD2:  ADD             R7, SP, #8
21FCD4:  LDR             R4, =(unk_384128 - 0x21FCDC)
21FCD6:  LDR             R1, =(sub_21FCF0+1 - 0x21FCDE)
21FCD8:  ADD             R4, PC; unk_384128
21FCDA:  ADD             R1, PC; sub_21FCF0 ; init_routine
21FCDC:  MOV             R0, R4; once_control
21FCDE:  BLX             pthread_once
21FCE2:  ADDS            R0, R4, #4
21FCE4:  POP             {R4,R6,R7,PC}
