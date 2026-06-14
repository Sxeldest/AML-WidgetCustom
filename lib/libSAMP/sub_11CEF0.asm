; =========================================================
; Game Engine Function: sub_11CEF0
; Address            : 0x11CEF0 - 0x11CF14
; =========================================================

11CEF0:  PUSH            {R4,R6,R7,LR}
11CEF2:  ADD             R7, SP, #8
11CEF4:  MOV             R4, R0
11CEF6:  LDR             R0, =(off_23494C - 0x11CF02)
11CEF8:  MOVW            R2, #0xFAC
11CEFC:  LDR             R1, [R4]
11CEFE:  ADD             R0, PC; off_23494C
11CF00:  MOVT            R2, #0x67 ; 'g'
11CF04:  LDR             R0, [R0]; dword_23DF24
11CF06:  LDR             R0, [R0]
11CF08:  ADD             R0, R2
11CF0A:  MOVS            R2, #0
11CF0C:  BL              sub_164196
11CF10:  MOV             R0, R4
11CF12:  POP             {R4,R6,R7,PC}
