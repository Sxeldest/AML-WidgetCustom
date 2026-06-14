; =========================================================
; Game Engine Function: sub_15C614
; Address            : 0x15C614 - 0x15C65C
; =========================================================

15C614:  PUSH            {R4-R7,LR}
15C616:  ADD             R7, SP, #0xC
15C618:  PUSH.W          {R11}
15C61C:  SUB             SP, SP, #0x10
15C61E:  ADD.W           R4, R0, #0x18
15C622:  STRH.W          R1, [R7,#var_1E]
15C626:  SUB.W           R1, R7, #-var_1E
15C62A:  MOV             R5, R0
15C62C:  MOV             R0, R4
15C62E:  BL              sub_15D7E2
15C632:  CBZ             R0, loc_15C654
15C634:  ADD.W           R1, R0, #0xC
15C638:  MOV             R6, R0
15C63A:  MOV             R0, R5
15C63C:  BL              sub_15BEC4
15C640:  ADD             R5, SP, #0x20+var_1C
15C642:  MOV             R1, R4
15C644:  MOV             R2, R6
15C646:  MOV             R0, R5
15C648:  BL              sub_15DA90
15C64C:  MOV             R0, R5
15C64E:  MOVS            R1, #0
15C650:  BL              sub_15D7C0
15C654:  ADD             SP, SP, #0x10
15C656:  POP.W           {R11}
15C65A:  POP             {R4-R7,PC}
