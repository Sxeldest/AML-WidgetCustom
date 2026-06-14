; =========================================================
; Game Engine Function: sub_124120
; Address            : 0x124120 - 0x12414A
; =========================================================

124120:  PUSH            {R7,LR}
124122:  MOV             R7, SP
124124:  LDR             R0, =(off_23494C - 0x12412A)
124126:  ADD             R0, PC; off_23494C
124128:  LDR             R0, [R0]; dword_23DF24
12412A:  LDR             R1, [R0]
12412C:  MOVS            R0, #0
12412E:  CBZ             R1, locret_124144
124130:  MOV             R2, #0x66F438
124138:  ADDS            R1, R1, R2
12413A:  IT EQ
12413C:  POPEQ           {R7,PC}
12413E:  LDR             R0, [R1]
124140:  CBZ             R0, loc_124146
124142:  BLX             R0
124144:  POP             {R7,PC}
124146:  MOVS            R0, #0
124148:  POP             {R7,PC}
