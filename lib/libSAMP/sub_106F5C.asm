; =========================================================
; Game Engine Function: sub_106F5C
; Address            : 0x106F5C - 0x106FA6
; =========================================================

106F5C:  PUSH            {R4,R5,R7,LR}
106F5E:  ADD             R7, SP, #8
106F60:  MOV             R5, R0
106F62:  LDR             R4, [R0,#4]
106F64:  BL              sub_F83C8
106F68:  LDRB.W          R0, [R4,#0x60]
106F6C:  BL              sub_F8400
106F70:  LDR             R0, =(off_23494C - 0x106F82)
106F72:  MOVW            R3, #0xF519
106F76:  LDRD.W          R1, R2, [R5,#8]
106F7A:  MOVT            R3, #0x49 ; 'I'
106F7E:  ADD             R0, PC; off_23494C
106F80:  LDR             R2, [R2]
106F82:  LDR             R0, [R0]; dword_23DF24
106F84:  LDR             R1, [R1]
106F86:  LDR.W           R12, [R0]
106F8A:  LDR             R0, [R4,#0x5C]
106F8C:  ADD             R12, R3
106F8E:  MOVS            R3, #1
106F90:  BLX             R12
106F92:  BL              sub_F8390
106F96:  LDR             R0, [R5,#8]
106F98:  MOVS            R2, #0
106F9A:  LDRB            R1, [R0]
106F9C:  MOV             R0, R4
106F9E:  POP.W           {R4,R5,R7,LR}
106FA2:  B.W             sub_10479C
