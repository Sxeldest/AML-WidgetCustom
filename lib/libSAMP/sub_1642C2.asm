; =========================================================
; Game Engine Function: sub_1642C2
; Address            : 0x1642C2 - 0x1642EC
; =========================================================

1642C2:  PUSH            {R4-R7,LR}
1642C4:  ADD             R7, SP, #0xC
1642C6:  PUSH.W          {R11}
1642CA:  MOV             R5, R1
1642CC:  UXTH            R1, R1
1642CE:  MOVS            R3, #0
1642D0:  MOV             R4, R2
1642D2:  MOV             R6, R0
1642D4:  BL              sub_164250
1642D8:  ADDS            R0, R6, #4
1642DA:  LSRS            R1, R5, #0x10
1642DC:  MOV             R2, R4
1642DE:  MOVS            R3, #1
1642E0:  POP.W           {R11}
1642E4:  POP.W           {R4-R7,LR}
1642E8:  B.W             sub_164250
