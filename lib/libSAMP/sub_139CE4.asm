; =========================================================
; Game Engine Function: sub_139CE4
; Address            : 0x139CE4 - 0x139D00
; =========================================================

139CE4:  PUSH            {R7,LR}
139CE6:  MOV             R7, SP
139CE8:  BL              sub_12BC78
139CEC:  LDR             R1, =(_ZTV7Content - 0x139CF8); `vtable for'Content ...
139CEE:  MOV.W           R2, #0xFFFFFFFF
139CF2:  MOVS            R3, #0
139CF4:  ADD             R1, PC; `vtable for'Content
139CF6:  STRD.W          R3, R2, [R0,#0x54]
139CFA:  ADDS            R1, #8
139CFC:  STR             R1, [R0]
139CFE:  POP             {R7,PC}
