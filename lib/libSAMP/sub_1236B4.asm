; =========================================================
; Game Engine Function: sub_1236B4
; Address            : 0x1236B4 - 0x123736
; =========================================================

1236B4:  PUSH            {R4-R7,LR}
1236B6:  ADD             R7, SP, #0xC
1236B8:  PUSH.W          {R8}
1236BC:  MOV             R8, R0
1236BE:  LDR             R0, =(off_23494C - 0x1236C4)
1236C0:  ADD             R0, PC; off_23494C
1236C2:  LDR             R6, [R0]; dword_23DF24
1236C4:  LDR             R0, [R6]
1236C6:  CBNZ            R0, loc_1236D2
1236C8:  LDR             R0, =(aLibgtasaSo - 0x1236CE); "libGTASA.so" ...
1236CA:  ADD             R0, PC; "libGTASA.so"
1236CC:  BL              sub_163FF8
1236D0:  STR             R0, [R6]
1236D2:  LDR             R5, =(sub_123748+1 - 0x1236E2)
1236D4:  MOVW            R1, #0xD77C
1236D8:  LDR             R2, =(off_263BD4 - 0x1236E6)
1236DA:  MOVT            R1, #0x66 ; 'f'
1236DE:  ADD             R5, PC; sub_123748
1236E0:  ADD             R0, R1
1236E2:  ADD             R2, PC; off_263BD4
1236E4:  MOV             R1, R5
1236E6:  BL              sub_164222
1236EA:  LDR             R0, [R6]
1236EC:  MOV             R4, #0x66DC38
1236F4:  MOV             R1, R5
1236F6:  ADD             R0, R4
1236F8:  MOVS            R2, #0
1236FA:  BL              sub_164222
1236FE:  LDR             R0, [R6]
123700:  MOV             R1, R5
123702:  MOVS            R2, #0
123704:  ADD             R0, R4
123706:  ADD.W           R0, R0, #0x128
12370A:  BL              sub_164222
12370E:  LDR             R0, [R6]
123710:  MOV             R1, R5
123712:  MOVS            R2, #0
123714:  ADD             R0, R4
123716:  ADD.W           R0, R0, #0x250
12371A:  BL              sub_164222
12371E:  LDR             R0, [R6]
123720:  MOV             R1, R5
123722:  MOVS            R2, #0
123724:  ADD             R0, R4
123726:  ADD.W           R0, R0, #0x378
12372A:  BL              sub_164222
12372E:  MOV             R0, R8
123730:  POP.W           {R8}
123734:  POP             {R4-R7,PC}
