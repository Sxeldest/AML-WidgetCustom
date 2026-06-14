; =========================================================
; Game Engine Function: sub_133F78
; Address            : 0x133F78 - 0x133FD6
; =========================================================

133F78:  PUSH            {R4-R7,LR}
133F7A:  ADD             R7, SP, #0xC
133F7C:  PUSH.W          {R8,R9,R11}
133F80:  SUB             SP, SP, #0x10
133F82:  MOV             R8, R1
133F84:  LDR             R1, =(byte_8F794 - 0x133F90)
133F86:  ADD.W           R9, SP, #0x28+var_24
133F8A:  MOV             R4, R0
133F8C:  ADD             R1, PC; byte_8F794 ; s
133F8E:  MOV             R5, R3
133F90:  MOV             R0, R9; int
133F92:  MOV             R6, R2
133F94:  BL              sub_DC6DC
133F98:  MOV             R0, R4
133F9A:  MOV             R1, R9
133F9C:  MOVS            R2, #0
133F9E:  BL              sub_13CE34
133FA2:  LDRB.W          R0, [SP,#0x28+var_24]
133FA6:  LSLS            R0, R0, #0x1F
133FA8:  ITT NE
133FAA:  LDRNE           R0, [SP,#0x28+var_1C]; void *
133FAC:  BLXNE           j__ZdlPv; operator delete(void *)
133FB0:  LDR             R0, =(_ZTVN4menu7content4itemE - 0x133FBA); `vtable for'menu::content::item ...
133FB2:  STR.W           R8, [R4,#0x70]
133FB6:  ADD             R0, PC; `vtable for'menu::content::item
133FB8:  ADDS            R0, #8
133FBA:  STR             R0, [R4]
133FBC:  LDRD.W          R0, R1, [R6]
133FC0:  STRD.W          R0, R1, [R4,#0x74]
133FC4:  LDRD.W          R0, R1, [R5]
133FC8:  STRD.W          R0, R1, [R4,#0x7C]
133FCC:  MOV             R0, R4
133FCE:  ADD             SP, SP, #0x10
133FD0:  POP.W           {R8,R9,R11}
133FD4:  POP             {R4-R7,PC}
