; =========================================================
; Game Engine Function: sub_14FE50
; Address            : 0x14FE50 - 0x14FE70
; =========================================================

14FE50:  PUSH            {R4,R6,R7,LR}
14FE52:  ADD             R7, SP, #8
14FE54:  MOV.W           R1, #0x3E80; n
14FE58:  MOV             R4, R0
14FE5A:  BLX             sub_22178C
14FE5E:  MOVW            R0, #0x9C40
14FE62:  MOVW            R1, #0x4E2C; n
14FE66:  ADD             R0, R4; int
14FE68:  BLX             sub_22178C
14FE6C:  MOV             R0, R4
14FE6E:  POP             {R4,R6,R7,PC}
