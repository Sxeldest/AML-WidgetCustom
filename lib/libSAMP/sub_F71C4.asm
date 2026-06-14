; =========================================================
; Game Engine Function: sub_F71C4
; Address            : 0xF71C4 - 0xF725C
; =========================================================

F71C4:  PUSH            {R4-R7,LR}
F71C6:  ADD             R7, SP, #0xC
F71C8:  PUSH.W          {R8}
F71CC:  SUB             SP, SP, #0x18
F71CE:  MOV             R6, R0
F71D0:  MOV             R4, R0
F71D2:  LDR.W           R0, [R6,#8]!
F71D6:  MOV             R8, R1
F71D8:  LDR.W           R5, [R6,#-4]
F71DC:  CMP             R5, R0
F71DE:  BEQ             loc_F71F2
F71E0:  MOV             R0, R6
F71E2:  MOV             R1, R5
F71E4:  MOV             R2, R8
F71E6:  BL              sub_F7AC2
F71EA:  ADD.W           R0, R5, #0x1C
F71EE:  STR             R0, [R4,#4]
F71F0:  B               loc_F724E
F71F2:  LDR             R0, [R4]
F71F4:  MOV             R1, #0xB6DB6DB7
F71FC:  SUBS            R0, R5, R0
F71FE:  ASRS            R0, R0, #2
F7200:  MUL.W           R2, R0, R1
F7204:  MOV             R1, #0x9249249
F720C:  ADDS            R0, R2, #1
F720E:  CMP             R0, R1
F7210:  BHI             loc_F7256
F7212:  CMP.W           R0, R2,LSL#1
F7216:  MOVW            R3, #0x4924
F721A:  IT LS
F721C:  LSLLS           R0, R2, #1
F721E:  MOVT            R3, #0x492
F7222:  CMP             R2, R3
F7224:  IT CC
F7226:  MOVCC           R1, R0
F7228:  ADD             R0, SP, #0x28+var_24
F722A:  MOV             R3, R6
F722C:  BL              sub_F7AF4
F7230:  LDR             R1, [SP,#0x28+var_1C]
F7232:  MOV             R0, R6
F7234:  MOV             R2, R8
F7236:  BL              sub_F7AC2
F723A:  LDR             R0, [SP,#0x28+var_1C]
F723C:  ADDS            R0, #0x1C
F723E:  STR             R0, [SP,#0x28+var_1C]
F7240:  ADD             R1, SP, #0x28+var_24
F7242:  MOV             R0, R4
F7244:  BL              sub_F7B4C
F7248:  ADD             R0, SP, #0x28+var_24
F724A:  BL              sub_F7BC4
F724E:  ADD             SP, SP, #0x18
F7250:  POP.W           {R8}
F7254:  POP             {R4-R7,PC}
F7256:  MOV             R0, R4
F7258:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
