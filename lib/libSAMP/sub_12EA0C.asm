; =========================================================
; Game Engine Function: sub_12EA0C
; Address            : 0x12EA0C - 0x12EA6A
; =========================================================

12EA0C:  PUSH            {R4-R7,LR}
12EA0E:  ADD             R7, SP, #0xC
12EA10:  PUSH.W          {R8,R9,R11}
12EA14:  SUB             SP, SP, #0x10
12EA16:  MOV             R8, R1
12EA18:  LDR             R1, =(byte_8F794 - 0x12EA24)
12EA1A:  ADD.W           R9, SP, #0x28+var_24
12EA1E:  MOV             R4, R0
12EA20:  ADD             R1, PC; byte_8F794 ; s
12EA22:  MOV             R5, R3
12EA24:  MOV             R0, R9; int
12EA26:  MOV             R6, R2
12EA28:  BL              sub_DC6DC
12EA2C:  MOV             R0, R4
12EA2E:  MOV             R1, R9
12EA30:  MOVS            R2, #0
12EA32:  BL              sub_13CE34
12EA36:  LDRB.W          R0, [SP,#0x28+var_24]
12EA3A:  LSLS            R0, R0, #0x1F
12EA3C:  ITT NE
12EA3E:  LDRNE           R0, [SP,#0x28+var_1C]; void *
12EA40:  BLXNE           j__ZdlPv; operator delete(void *)
12EA44:  LDR             R0, =(_ZTVN12express_menu11widget_menuE - 0x12EA4E); `vtable for'express_menu::widget_menu ...
12EA46:  STR.W           R8, [R4,#0x70]
12EA4A:  ADD             R0, PC; `vtable for'express_menu::widget_menu
12EA4C:  ADDS            R0, #8
12EA4E:  STR             R0, [R4]
12EA50:  LDRD.W          R0, R1, [R6]
12EA54:  STRD.W          R0, R1, [R4,#0x74]
12EA58:  LDRD.W          R0, R1, [R5]
12EA5C:  STRD.W          R0, R1, [R4,#0x7C]
12EA60:  MOV             R0, R4
12EA62:  ADD             SP, SP, #0x10
12EA64:  POP.W           {R8,R9,R11}
12EA68:  POP             {R4-R7,PC}
