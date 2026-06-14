; =========================================================
; Game Engine Function: sub_163888
; Address            : 0x163888 - 0x1638AC
; =========================================================

163888:  PUSH            {R4,R6,R7,LR}
16388A:  ADD             R7, SP, #8
16388C:  MOVS            R1, #0x5C ; '\'; n
16388E:  MOV             R4, R0
163890:  BLX             sub_22178C
163894:  LDR             R0, =(off_23494C - 0x1638A2)
163896:  MOV             R1, #0x667668
16389E:  ADD             R0, PC; off_23494C
1638A0:  LDR             R0, [R0]; dword_23DF24
1638A2:  LDR             R0, [R0]
1638A4:  ADD             R0, R1
1638A6:  STR             R0, [R4]
1638A8:  MOV             R0, R4
1638AA:  POP             {R4,R6,R7,PC}
