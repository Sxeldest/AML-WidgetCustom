; =========================================================
; Game Engine Function: sub_7DB60
; Address            : 0x7DB60 - 0x7DB84
; =========================================================

7DB60:  PUSH            {R4,R6,R7,LR}
7DB62:  ADD             R7, SP, #8
7DB64:  LDR             R1, =(off_114CC0 - 0x7DB6C)
7DB66:  LDR             R0, [R0,#4]
7DB68:  ADD             R1, PC; off_114CC0
7DB6A:  LDR             R1, [R1]; off_1ABF44
7DB6C:  LDR             R3, [R1]
7DB6E:  MOVS            R1, #0
7DB70:  MOVS            R2, #0
7DB72:  MOVS            R4, #0
7DB74:  BLX             R3
7DB76:  SUBS            R0, #1
7DB78:  CMN.W           R0, #2
7DB7C:  IT CC
7DB7E:  MOVCC           R4, #1
7DB80:  MOV             R0, R4
7DB82:  POP             {R4,R6,R7,PC}
