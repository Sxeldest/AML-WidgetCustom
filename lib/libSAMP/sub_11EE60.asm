; =========================================================
; Game Engine Function: sub_11EE60
; Address            : 0x11EE60 - 0x11EF0C
; =========================================================

11EE60:  PUSH            {R4-R7,LR}
11EE62:  ADD             R7, SP, #0xC
11EE64:  PUSH.W          {R8,R9,R11}
11EE68:  MOVW            R5, #0x868
11EE6C:  MOVW            R9, #0x8900
11EE70:  MOV             R4, R0
11EE72:  MOVT            R5, #0x66 ; 'f'
11EE76:  MOVT            R9, #0x67 ; 'g'
11EE7A:  MOVW            R0, #0x3E30
11EE7E:  ADD.W           R2, R5, #8
11EE82:  MOVT            R0, #0x6B ; 'k'
11EE86:  MOV             R1, R9
11EE88:  BL              sub_11EF14
11EE8C:  MOVW            R8, #0x8094
11EE90:  MOVW            R6, #0x37C4
11EE94:  MOVT            R8, #0x67 ; 'g'
11EE98:  MOVT            R6, #0x6B ; 'k'
11EE9C:  ADD.W           R0, R6, #0x448
11EEA0:  ADD.W           R1, R8, #0x698
11EEA4:  ADDS            R2, R5, #4
11EEA6:  BL              sub_11EF14
11EEAA:  ADD.W           R0, R6, #0x224
11EEAE:  ADD.W           R1, R9, #0x38 ; '8'
11EEB2:  ADD.W           R2, R5, #0xC
11EEB6:  BL              sub_11EF14
11EEBA:  MOV             R0, R6
11EEBC:  MOV             R1, R8
11EEBE:  MOV             R2, R5
11EEC0:  BL              sub_11EF14
11EEC4:  LDR             R0, =(off_23494C - 0x11EED4)
11EEC6:  MOVW            R2, #0x4FDC
11EECA:  LDR             R1, [R4,#8]
11EECC:  MOVT            R2, #0x67 ; 'g'
11EED0:  ADD             R0, PC; off_23494C
11EED2:  LDR             R5, [R0]; dword_23DF24
11EED4:  LDR             R0, [R5]
11EED6:  ADD             R0, R2
11EED8:  MOVS            R2, #0
11EEDA:  BL              sub_164196
11EEDE:  LDR             R0, [R5]
11EEE0:  MOVW            R2, #0xE7B0
11EEE4:  LDR             R1, [R4,#4]
11EEE6:  MOVT            R2, #0x66 ; 'f'
11EEEA:  ADD             R0, R2
11EEEC:  MOVS            R2, #0
11EEEE:  BL              sub_164196
11EEF2:  LDR             R0, [R5]
11EEF4:  LDR             R1, [R4]
11EEF6:  ADD.W           R0, R0, #0x670000
11EEFA:  ADD.W           R0, R0, #0x2F00
11EEFE:  MOVS            R2, #0
11EF00:  BL              sub_164196
11EF04:  MOV             R0, R4
11EF06:  POP.W           {R8,R9,R11}
11EF0A:  POP             {R4-R7,PC}
