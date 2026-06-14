; =========================================================
; Game Engine Function: sub_134140
; Address            : 0x134140 - 0x13419E
; =========================================================

134140:  PUSH            {R4-R7,LR}
134142:  ADD             R7, SP, #0xC
134144:  PUSH.W          {R8,R9,R11}
134148:  SUB             SP, SP, #0x10
13414A:  MOV             R8, R1
13414C:  LDR             R1, =(byte_8F794 - 0x134158)
13414E:  ADD.W           R9, SP, #0x28+var_24
134152:  MOV             R4, R0
134154:  ADD             R1, PC; byte_8F794 ; s
134156:  MOV             R5, R3
134158:  MOV             R0, R9; int
13415A:  MOV             R6, R2
13415C:  BL              sub_DC6DC
134160:  MOV             R0, R4
134162:  MOV             R1, R9
134164:  MOVS            R2, #0
134166:  BL              sub_13CE34
13416A:  LDRB.W          R0, [SP,#0x28+var_24]
13416E:  LSLS            R0, R0, #0x1F
134170:  ITT NE
134172:  LDRNE           R0, [SP,#0x28+var_1C]; void *
134174:  BLXNE           j__ZdlPv; operator delete(void *)
134178:  LDR             R0, =(_ZTVN4menu12widget_closeE - 0x134182); `vtable for'menu::widget_close ...
13417A:  STR.W           R8, [R4,#0x70]
13417E:  ADD             R0, PC; `vtable for'menu::widget_close
134180:  ADDS            R0, #8
134182:  STR             R0, [R4]
134184:  LDRD.W          R0, R1, [R6]
134188:  STRD.W          R0, R1, [R4,#0x74]
13418C:  LDRD.W          R0, R1, [R5]
134190:  STRD.W          R0, R1, [R4,#0x7C]
134194:  MOV             R0, R4
134196:  ADD             SP, SP, #0x10
134198:  POP.W           {R8,R9,R11}
13419C:  POP             {R4-R7,PC}
