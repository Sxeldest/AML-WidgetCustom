; =========================================================
; Game Engine Function: sub_11DC38
; Address            : 0x11DC38 - 0x11DC5A
; =========================================================

11DC38:  PUSH            {R4,R6,R7,LR}
11DC3A:  ADD             R7, SP, #8
11DC3C:  MOV             R4, R0
11DC3E:  LDR             R0, =(off_23494C - 0x11DC46)
11DC40:  LDR             R1, [R4]
11DC42:  ADD             R0, PC; off_23494C
11DC44:  LDR             R0, [R0]; dword_23DF24
11DC46:  LDR             R0, [R0]
11DC48:  ADD.W           R0, R0, #0x670000
11DC4C:  ADD.W           R0, R0, #0xA90
11DC50:  MOVS            R2, #0
11DC52:  BL              sub_164196
11DC56:  MOV             R0, R4
11DC58:  POP             {R4,R6,R7,PC}
