; =========================================================
; Game Engine Function: sub_12EB2C
; Address            : 0x12EB2C - 0x12EB8A
; =========================================================

12EB2C:  PUSH            {R4-R7,LR}
12EB2E:  ADD             R7, SP, #0xC
12EB30:  PUSH.W          {R8,R9,R11}
12EB34:  SUB             SP, SP, #0x10
12EB36:  MOV             R8, R1
12EB38:  LDR             R1, =(byte_8F794 - 0x12EB44)
12EB3A:  ADD.W           R9, SP, #0x28+var_24
12EB3E:  MOV             R4, R0
12EB40:  ADD             R1, PC; byte_8F794 ; s
12EB42:  MOV             R5, R3
12EB44:  MOV             R0, R9; int
12EB46:  MOV             R6, R2
12EB48:  BL              sub_DC6DC
12EB4C:  MOV             R0, R4
12EB4E:  MOV             R1, R9
12EB50:  MOVS            R2, #0
12EB52:  BL              sub_13CE34
12EB56:  LDRB.W          R0, [SP,#0x28+var_24]
12EB5A:  LSLS            R0, R0, #0x1F
12EB5C:  ITT NE
12EB5E:  LDRNE           R0, [SP,#0x28+var_1C]; void *
12EB60:  BLXNE           j__ZdlPv; operator delete(void *)
12EB64:  LDR             R0, =(_ZTVN12express_menu13widget_escapeE - 0x12EB6E); `vtable for'express_menu::widget_escape ...
12EB66:  STR.W           R8, [R4,#0x70]
12EB6A:  ADD             R0, PC; `vtable for'express_menu::widget_escape
12EB6C:  ADDS            R0, #8
12EB6E:  STR             R0, [R4]
12EB70:  LDRD.W          R0, R1, [R6]
12EB74:  STRD.W          R0, R1, [R4,#0x74]
12EB78:  LDRD.W          R0, R1, [R5]
12EB7C:  STRD.W          R0, R1, [R4,#0x7C]
12EB80:  MOV             R0, R4
12EB82:  ADD             SP, SP, #0x10
12EB84:  POP.W           {R8,R9,R11}
12EB88:  POP             {R4-R7,PC}
