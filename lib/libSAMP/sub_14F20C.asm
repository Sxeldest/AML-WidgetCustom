; =========================================================
; Game Engine Function: sub_14F20C
; Address            : 0x14F20C - 0x14F250
; =========================================================

14F20C:  PUSH            {R4-R7,LR}
14F20E:  ADD             R7, SP, #0xC
14F210:  PUSH.W          {R8}
14F214:  MOV             R4, R0
14F216:  MOV.W           R0, #0x2400
14F21A:  ADD.W           R8, R4, #0x2400
14F21E:  LDR             R5, [R4,R0]
14F220:  LDR.W           R6, [R8,#4]
14F224:  CMP             R5, R6
14F226:  BEQ             loc_14F23C
14F228:  LDRH.W          R1, [R5],#2
14F22C:  MOV             R0, R4
14F22E:  MOVS            R2, #0
14F230:  BL              sub_14F250
14F234:  CMP             R5, R6
14F236:  BNE             loc_14F228
14F238:  LDR.W           R5, [R8]
14F23C:  CBZ             R5, loc_14F248
14F23E:  MOV             R0, R5; void *
14F240:  STR.W           R5, [R8,#4]
14F244:  BLX             j__ZdlPv; operator delete(void *)
14F248:  MOV             R0, R4
14F24A:  POP.W           {R8}
14F24E:  POP             {R4-R7,PC}
