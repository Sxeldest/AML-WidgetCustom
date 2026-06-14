; =========================================================
; Game Engine Function: sub_163A6C
; Address            : 0x163A6C - 0x163A9C
; =========================================================

163A6C:  B.W             loc_163A70
163A70:  PUSH            {R7,LR}
163A72:  MOV             R7, SP
163A74:  MOV             R1, R0
163A76:  LDR             R0, =(off_23494C - 0x163A7C)
163A78:  ADD             R0, PC; off_23494C
163A7A:  LDR             R0, [R0]; dword_23DF24
163A7C:  LDR             R2, [R0]
163A7E:  MOVS            R0, #0
163A80:  CBZ             R2, locret_163A96
163A82:  ADD.W           R2, R2, #0x670000
163A86:  ADDS.W          R2, R2, #0x590
163A8A:  IT EQ
163A8C:  POPEQ           {R7,PC}
163A8E:  LDR             R2, [R2]
163A90:  CBZ             R2, loc_163A98
163A92:  MOV             R0, R1
163A94:  BLX             R2
163A96:  POP             {R7,PC}
163A98:  MOVS            R0, #0
163A9A:  POP             {R7,PC}
