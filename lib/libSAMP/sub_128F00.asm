; =========================================================
; Game Engine Function: sub_128F00
; Address            : 0x128F00 - 0x128F92
; =========================================================

128F00:  PUSH            {R4,R5,R7,LR}
128F02:  ADD             R7, SP, #8
128F04:  LDR             R0, =(off_23494C - 0x128F16)
128F06:  MOV             R5, #0x46C140
128F0E:  MOVW            R1, #0x4E20
128F12:  ADD             R0, PC; off_23494C
128F14:  MOVS            R2, #1
128F16:  MOVS            R3, #0
128F18:  LDR             R4, [R0]; dword_23DF24
128F1A:  LDR             R0, [R4]
128F1C:  ADD             R0, R5
128F1E:  BL              sub_164250
128F22:  LDR             R0, [R4]
128F24:  MOVW            R1, #0x61A8
128F28:  MOVS            R2, #1
128F2A:  MOVS            R3, #0
128F2C:  ADD             R0, R5
128F2E:  ADDS            R0, #0x1A
128F30:  BL              sub_164250
128F34:  LDR             R0, [R4]
128F36:  MOVW            R1, #0x62A7
128F3A:  MOVS            R2, #1
128F3C:  MOVS            R3, #0
128F3E:  ADD             R0, R5
128F40:  ADDS            R0, #0x62 ; 'b'
128F42:  BL              sub_164250
128F46:  LDR             R0, [R4]
128F48:  MOVW            R1, #0x63A7
128F4C:  MOVS            R2, #1
128F4E:  MOVS            R3, #0
128F50:  ADD             R0, R5
128F52:  ADDS            R0, #0x7A ; 'z'
128F54:  BL              sub_164250
128F58:  LDR             R0, [R4]
128F5A:  MOVW            R1, #0x63E7
128F5E:  MOVS            R2, #1
128F60:  MOVS            R3, #0
128F62:  ADD             R0, R5
128F64:  ADDS            R0, #0x86
128F66:  BL              sub_164250
128F6A:  LDR             R0, [R4]
128F6C:  MOVW            R1, #0x649B
128F70:  MOVS            R2, #1
128F72:  MOVS            R3, #0
128F74:  ADD             R0, R5
128F76:  ADDS            R0, #0x92
128F78:  BL              sub_164250
128F7C:  LDR             R0, [R4]
128F7E:  MOVW            R1, #0x6676
128F82:  MOVS            R2, #1
128F84:  MOVS            R3, #0
128F86:  ADD             R0, R5
128F88:  ADDS            R0, #0xA0
128F8A:  POP.W           {R4,R5,R7,LR}
128F8E:  B.W             sub_164250
