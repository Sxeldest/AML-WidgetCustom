; =========================================================
; Game Engine Function: sub_E9460
; Address            : 0xE9460 - 0xE9484
; =========================================================

E9460:  PUSH            {R7,LR}
E9462:  MOV             R7, SP
E9464:  SUB             SP, SP, #8
E9466:  LDR             R0, [R0,#0x10]
E9468:  STRB.W          R2, [R7,#-5]
E946C:  STR             R1, [SP,#0x10+var_C]
E946E:  CBZ             R0, loc_E9480
E9470:  LDR             R1, [R0]
E9472:  SUBS            R2, R7, #5
E9474:  LDR.W           R12, [R1,#0x18]
E9478:  ADD             R1, SP, #0x10+var_C
E947A:  BLX             R12
E947C:  ADD             SP, SP, #8
E947E:  POP             {R7,PC}
E9480:  BL              sub_DC92C
