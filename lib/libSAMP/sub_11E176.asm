; =========================================================
; Game Engine Function: sub_11E176
; Address            : 0x11E176 - 0x11E196
; =========================================================

11E176:  PUSH            {R4,R6,R7,LR}
11E178:  ADD             R7, SP, #8
11E17A:  SUB             SP, SP, #0x10
11E17C:  MOV             R4, R0
11E17E:  MOVS            R0, #0
11E180:  STR             R0, [R4,#0x10]
11E182:  STR             R2, [SP,#0x18+var_C]
11E184:  STRD.W          R3, R1, [SP,#0x18+var_14]
11E188:  ADD             R1, SP, #0x18+var_14
11E18A:  MOV             R0, R4
11E18C:  BL              sub_11E3B8
11E190:  MOV             R0, R4
11E192:  ADD             SP, SP, #0x10
11E194:  POP             {R4,R6,R7,PC}
