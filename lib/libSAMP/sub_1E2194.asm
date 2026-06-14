; =========================================================
; Game Engine Function: sub_1E2194
; Address            : 0x1E2194 - 0x1E21B4
; =========================================================

1E2194:  PUSH            {R4,R10,R11,LR}
1E2198:  ADD             R11, SP, #8
1E219C:  MOV             R4, R0
1E21A0:  MOV             R0, R1; s
1E21A4:  BL              strdup
1E21A8:  STR             R0, [R4,#0x20]
1E21AC:  MOV             R0, #0
1E21B0:  POP             {R4,R10,R11,PC}
