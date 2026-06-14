; =========================================================
; Game Engine Function: sub_17F086
; Address            : 0x17F086 - 0x17F0A4
; =========================================================

17F086:  PUSH            {R7,LR}
17F088:  MOV             R7, SP
17F08A:  SUB             SP, SP, #8
17F08C:  SUBS            R2, R7, #2
17F08E:  MOVS            R1, #0
17F090:  BL              sub_180642
17F094:  LDRH.W          R0, [R7,#-2]
17F098:  SUBS            R0, #1
17F09A:  CLZ.W           R0, R0
17F09E:  LSRS            R0, R0, #5
17F0A0:  ADD             SP, SP, #8
17F0A2:  POP             {R7,PC}
