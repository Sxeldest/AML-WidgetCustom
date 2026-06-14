; =========================================================
; Game Engine Function: sub_134294
; Address            : 0x134294 - 0x1342F2
; =========================================================

134294:  PUSH            {R4-R7,LR}
134296:  ADD             R7, SP, #0xC
134298:  PUSH.W          {R8,R9,R11}
13429C:  SUB             SP, SP, #0x10
13429E:  MOV             R8, R1
1342A0:  LDR             R1, =(byte_8F794 - 0x1342AC)
1342A2:  ADD.W           R9, SP, #0x28+var_24
1342A6:  MOV             R4, R0
1342A8:  ADD             R1, PC; byte_8F794 ; s
1342AA:  MOV             R5, R3
1342AC:  MOV             R0, R9; int
1342AE:  MOV             R6, R2
1342B0:  BL              sub_DC6DC
1342B4:  MOV             R0, R4
1342B6:  MOV             R1, R9
1342B8:  MOVS            R2, #0
1342BA:  BL              sub_13CE34
1342BE:  LDRB.W          R0, [SP,#0x28+var_24]
1342C2:  LSLS            R0, R0, #0x1F
1342C4:  ITT NE
1342C6:  LDRNE           R0, [SP,#0x28+var_1C]; void *
1342C8:  BLXNE           j__ZdlPv; operator delete(void *)
1342CC:  LDR             R0, =(_ZTVN4menu15widget_settingsE - 0x1342D6); `vtable for'menu::widget_settings ...
1342CE:  STR.W           R8, [R4,#0x70]
1342D2:  ADD             R0, PC; `vtable for'menu::widget_settings
1342D4:  ADDS            R0, #8
1342D6:  STR             R0, [R4]
1342D8:  LDRD.W          R0, R1, [R6]
1342DC:  STRD.W          R0, R1, [R4,#0x74]
1342E0:  LDRD.W          R0, R1, [R5]
1342E4:  STRD.W          R0, R1, [R4,#0x7C]
1342E8:  MOV             R0, R4
1342EA:  ADD             SP, SP, #0x10
1342EC:  POP.W           {R8,R9,R11}
1342F0:  POP             {R4-R7,PC}
