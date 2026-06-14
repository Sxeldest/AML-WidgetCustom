; =========================================================
; Game Engine Function: sub_15920A
; Address            : 0x15920A - 0x159256
; =========================================================

15920A:  PUSH            {R4-R7,LR}
15920C:  ADD             R7, SP, #0xC
15920E:  PUSH.W          {R8}
159212:  SUB             SP, SP, #0x10
159214:  MOV             R4, R0
159216:  MOV             R1, SP
159218:  MOVS            R0, #0
15921A:  BL              sub_164B30
15921E:  CBZ             R0, loc_15924A
159220:  MOVS            R5, #1
159222:  ADD.W           R8, SP, #0x20+var_14
159226:  MOV             R6, SP
159228:  LDR             R0, [R4,#0x10]
15922A:  SUBS            R1, R5, #1
15922C:  STR             R1, [SP,#0x20+var_14]
15922E:  CBZ             R0, loc_159252
159230:  LDR             R1, [R0]
159232:  MOV             R2, R6
159234:  LDR             R3, [R1,#0x18]
159236:  MOV             R1, R8
159238:  BLX             R3
15923A:  CBZ             R0, loc_15924A
15923C:  MOV             R0, R5
15923E:  MOV             R1, R6
159240:  BL              sub_164B30
159244:  ADDS            R5, #1
159246:  CMP             R0, #0
159248:  BNE             loc_159228
15924A:  ADD             SP, SP, #0x10
15924C:  POP.W           {R8}
159250:  POP             {R4-R7,PC}
159252:  BL              sub_DC92C
