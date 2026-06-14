; =========================================================
; Game Engine Function: sub_106CC4
; Address            : 0x106CC4 - 0x106CE6
; =========================================================

106CC4:  PUSH            {R4,R6,R7,LR}
106CC6:  ADD             R7, SP, #8
106CC8:  MOV             R4, R0
106CCA:  LDR             R0, =(unk_1AF688 - 0x106CD0)
106CCC:  ADD             R0, PC; unk_1AF688 ; mutex
106CCE:  BLX             pthread_mutex_unlock
106CD2:  CBNZ            R0, loc_106CD8
106CD4:  MOV             R0, R4
106CD6:  POP             {R4,R6,R7,PC}
106CD8:  LDR             R1, [R4]
106CDA:  LDR             R0, =(aSFailedToRelea - 0x106CE0); "%s failed to release mutex" ...
106CDC:  ADD             R0, PC; "%s failed to release mutex"
106CDE:  BL              loc_106D0C
106CE2:  BL              sub_71D14
