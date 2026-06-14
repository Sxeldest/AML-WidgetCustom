; =========================================================
; Game Engine Function: inflate_codes_new
; Address            : 0x20DDF4 - 0x20DE28
; =========================================================

20DDF4:  PUSH            {R4-R7,LR}
20DDF6:  ADD             R7, SP, #0xC
20DDF8:  PUSH.W          {R8}
20DDFC:  MOV             R4, R0
20DDFE:  LDR             R0, [R7,#arg_0]
20DE00:  MOV             R8, R3
20DE02:  MOV             R5, R2
20DE04:  MOV             R6, R1
20DE06:  MOVS            R1, #1
20DE08:  LDR             R3, [R0,#0x20]
20DE0A:  MOVS            R2, #0x1C
20DE0C:  LDR             R0, [R0,#0x28]
20DE0E:  BLX             R3
20DE10:  CMP             R0, #0
20DE12:  ITTTT NE
20DE14:  STRBNE          R4, [R0,#0x10]
20DE16:  MOVNE           R1, #0
20DE18:  STRNE           R1, [R0]
20DE1A:  STRBNE          R6, [R0,#0x11]
20DE1C:  IT NE
20DE1E:  STRDNE.W        R5, R8, [R0,#0x14]
20DE22:  POP.W           {R8}
20DE26:  POP             {R4-R7,PC}
