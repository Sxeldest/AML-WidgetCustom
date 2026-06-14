; =========================================================
; Game Engine Function: sub_106CF0
; Address            : 0x106CF0 - 0x106D06
; =========================================================

106CF0:  PUSH            {R7,LR}
106CF2:  MOV             R7, SP
106CF4:  LDR             R0, =(unk_1AF688 - 0x106CFA)
106CF6:  ADD             R0, PC; unk_1AF688
106CF8:  ADDS            R0, #4; cond
106CFA:  BLX             pthread_cond_broadcast
106CFE:  CMP             R0, #0
106D00:  IT NE
106D02:  MOVNE           R0, #1
106D04:  POP             {R7,PC}
