; =========================================================
; Game Engine Function: sub_6B36C
; Address            : 0x6B36C - 0x6B384
; =========================================================

6B36C:  PUSH            {R4,R6,R7,LR}
6B36E:  ADD             R7, SP, #8
6B370:  MOV             R4, R0
6B372:  BL              sub_5F840
6B376:  MOVS            R0, #2
6B378:  MOVS            R1, #0x1F
6B37A:  BL              sub_5FD08
6B37E:  MOV             R0, R4; status
6B380:  BLX             exit
