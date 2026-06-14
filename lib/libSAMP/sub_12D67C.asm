; =========================================================
; Game Engine Function: sub_12D67C
; Address            : 0x12D67C - 0x12D6AE
; =========================================================

12D67C:  PUSH            {R4,R5,R7,LR}
12D67E:  ADD             R7, SP, #8
12D680:  SUB             SP, SP, #0x88
12D682:  ADD             R5, SP, #0x90+timer
12D684:  MOV             R4, R0
12D686:  MOV             R0, R5; timer
12D688:  BLX             time
12D68C:  MOV             R0, R5; timer
12D68E:  BLX             localtime
12D692:  LDR             R2, =(aHMS_1 - 0x12D69E); "[%H:%M:%S] " ...
12D694:  ADD             R5, SP, #0x90+s
12D696:  MOV             R3, R0; tp
12D698:  MOVS            R1, #0x80; maxsize
12D69A:  ADD             R2, PC; "[%H:%M:%S] "
12D69C:  MOV             R0, R5; s
12D69E:  BLX             strftime
12D6A2:  MOV             R0, R4; int
12D6A4:  MOV             R1, R5; s
12D6A6:  BL              sub_DC6DC
12D6AA:  ADD             SP, SP, #0x88
12D6AC:  POP             {R4,R5,R7,PC}
