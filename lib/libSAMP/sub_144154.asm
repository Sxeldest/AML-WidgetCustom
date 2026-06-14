; =========================================================
; Game Engine Function: sub_144154
; Address            : 0x144154 - 0x14419E
; =========================================================

144154:  PUSH            {R4,R5,R7,LR}
144156:  ADD             R7, SP, #8
144158:  SUB             SP, SP, #8
14415A:  SUB.W           R1, R7, #-var_9; int
14415E:  MOVS            R5, #0
144160:  MOVS            R2, #8
144162:  MOVS            R3, #1
144164:  MOV             R4, R0
144166:  STRB.W          R5, [R7,#var_9]
14416A:  BL              sub_17D786
14416E:  ADD             R1, SP, #0x10+var_C; int
144170:  MOV             R0, R4; int
144172:  MOVS            R2, #0x10
144174:  MOVS            R3, #1
144176:  STRH.W          R5, [SP,#0x10+var_C]
14417A:  BL              sub_17D786
14417E:  LDR             R0, =(off_234970 - 0x144184)
144180:  ADD             R0, PC; off_234970
144182:  LDR             R0, [R0]; dword_23DEF0
144184:  LDR             R0, [R0]
144186:  BL              sub_E35A0
14418A:  CBZ             R0, loc_14419A
14418C:  LDRSH.W         R2, [SP,#0x10+var_C]
144190:  LDRB.W          R1, [R7,#var_9]
144194:  LDR             R0, [R0,#0x5C]
144196:  BL              sub_1107A0
14419A:  ADD             SP, SP, #8
14419C:  POP             {R4,R5,R7,PC}
