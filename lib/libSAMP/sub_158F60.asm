; =========================================================
; Game Engine Function: sub_158F60
; Address            : 0x158F60 - 0x158FA8
; =========================================================

158F60:  PUSH            {R4-R7,LR}
158F62:  ADD             R7, SP, #0xC
158F64:  PUSH.W          {R11}
158F68:  MOV             R4, R0
158F6A:  LDRB            R0, [R0,#0x10]
158F6C:  CBZ             R0, loc_158F82
158F6E:  ADD.W           R5, R4, #0x24 ; '$'
158F72:  MOVS            R1, #0
158F74:  MOVS            R6, #0
158F76:  MOV             R0, R5
158F78:  BL              sub_158FC0
158F7C:  STR             R6, [R4,#0x28]
158F7E:  BL              sub_164B58
158F82:  ADD.W           R0, R4, #0x24 ; '$'
158F86:  MOVS            R1, #0
158F88:  BL              sub_158FC0
158F8C:  LDR             R0, =(off_234E60 - 0x158F92)
158F8E:  ADD             R0, PC; off_234E60
158F90:  LDR             R0, [R0]; `vtable for'BufferedAudioRecorder ...
158F92:  ADD.W           R1, R0, #8
158F96:  MOV             R0, R4
158F98:  STR.W           R1, [R0],#0x18
158F9C:  BL              sub_15BC16
158FA0:  MOV             R0, R4
158FA2:  POP.W           {R11}
158FA6:  POP             {R4-R7,PC}
