; =========================================================
; Game Engine Function: sub_17E0C0
; Address            : 0x17E0C0 - 0x17E0F8
; =========================================================

17E0C0:  PUSH            {R4,R5,R7,LR}
17E0C2:  ADD             R7, SP, #8
17E0C4:  MOV             R4, R1
17E0C6:  MOV             R5, R0
17E0C8:  MOVS            R0, #1
17E0CA:  MOVS            R1, #0; int
17E0CC:  STRB.W          R0, [R5,#0x258]
17E0D0:  MOV             R0, R5; int
17E0D2:  MOVS            R2, #0x10; n
17E0D4:  MOV             R3, R4; src
17E0D6:  BL              sub_18DD38
17E0DA:  ADD.W           R0, R5, #0x120; int
17E0DE:  MOVS            R1, #1; int
17E0E0:  MOVS            R2, #0x10; n
17E0E2:  MOV             R3, R4; src
17E0E4:  BL              sub_18DD38
17E0E8:  ADD.W           R0, R5, #0x240
17E0EC:  MOVS            R1, #1
17E0EE:  MOVS            R2, #0
17E0F0:  POP.W           {R4,R5,R7,LR}
17E0F4:  B.W             sub_18DE00
