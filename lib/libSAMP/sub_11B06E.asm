; =========================================================
; Game Engine Function: sub_11B06E
; Address            : 0x11B06E - 0x11B088
; =========================================================

11B06E:  PUSH            {R4,R5,R7,LR}
11B070:  ADD             R7, SP, #8
11B072:  LDR             R4, [R0,#4]
11B074:  LDR             R5, [R1]
11B076:  MOV             R0, R4
11B078:  MOV             R1, R5
11B07A:  BL              sub_11A698
11B07E:  LDR             R1, [R4,#0x10]
11B080:  MOV             R0, R5
11B082:  POP.W           {R4,R5,R7,LR}
11B086:  BX              R1
