; =========================================================
; Game Engine Function: sub_2150D0
; Address            : 0x2150D0 - 0x215154
; =========================================================

2150D0:  PUSH            {R4-R7,LR}
2150D2:  ADD             R7, SP, #0xC
2150D4:  PUSH.W          {R8}
2150D8:  SUB             SP, SP, #0x18
2150DA:  MOV             R4, R0
2150DC:  LDR             R0, =(__stack_chk_guard_ptr - 0x2150E4)
2150DE:  MOV             R8, R1
2150E0:  ADD             R0, PC; __stack_chk_guard_ptr
2150E2:  LDR             R0, [R0]; __stack_chk_guard
2150E4:  LDR             R0, [R0]
2150E6:  STR             R0, [SP,#0x28+var_14]
2150E8:  LDRD.W          R0, R1, [R4]
2150EC:  SUBS            R0, R1, R0
2150EE:  MOVS            R1, #1
2150F0:  ADD.W           R1, R1, R0,ASR#2
2150F4:  MOV             R0, R4
2150F6:  BL              sub_215168
2150FA:  MOV             R6, R0
2150FC:  ADD.W           R0, R4, #8
215100:  STR             R0, [SP,#0x28+var_18]
215102:  LDRD.W          R0, R1, [R4]
215106:  SUBS            R0, R1, R0
215108:  ASRS            R5, R0, #2
21510A:  CBZ             R6, loc_215114
21510C:  LSLS            R0, R6, #2; unsigned int
21510E:  BLX             j__Znwj; operator new(uint)
215112:  B               loc_215116
215114:  MOVS            R0, #0
215116:  ADD.W           R1, R0, R6,LSL#2
21511A:  STR             R1, [SP,#0x28+var_1C]
21511C:  LDR.W           R1, [R8]
215120:  STR             R0, [SP,#0x28+var_28]
215122:  ADD.W           R0, R0, R5,LSL#2
215126:  STR             R0, [SP,#0x28+var_24]
215128:  STM             R0!, {R1}
21512A:  STR             R0, [SP,#0x28+var_20]
21512C:  MOV             R1, SP
21512E:  MOV             R0, R4
215130:  BL              sub_215198
215134:  MOV             R0, SP
215136:  BL              sub_2151C8
21513A:  LDR             R0, [SP,#0x28+var_14]
21513C:  LDR             R1, =(__stack_chk_guard_ptr - 0x215142)
21513E:  ADD             R1, PC; __stack_chk_guard_ptr
215140:  LDR             R1, [R1]; __stack_chk_guard
215142:  LDR             R1, [R1]
215144:  CMP             R1, R0
215146:  ITTT EQ
215148:  ADDEQ           SP, SP, #0x18
21514A:  POPEQ.W         {R8}
21514E:  POPEQ           {R4-R7,PC}
215150:  BLX             __stack_chk_fail
