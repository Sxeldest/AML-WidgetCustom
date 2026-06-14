; =========================================================
; Game Engine Function: sub_FF894
; Address            : 0xFF894 - 0xFF908
; =========================================================

FF894:  PUSH            {R4-R7,LR}
FF896:  ADD             R7, SP, #0xC
FF898:  PUSH.W          {R8-R10}
FF89C:  MOV             R4, R0
FF89E:  LDRD.W          R6, R0, [R0,#4]
FF8A2:  MOV             R8, R1
FF8A4:  CMP             R6, R0
FF8A6:  BNE             loc_FF8F4
FF8A8:  MOV             R0, R4
FF8AA:  LDR.W           R9, [R0],#0xC
FF8AE:  SUB.W           R10, R6, R9
FF8B2:  CMP             R9, R0
FF8B4:  BEQ             loc_FF8C8
FF8B6:  MOV.W           R1, R10,LSL#1; size
FF8BA:  MOV             R0, R9; ptr
FF8BC:  BLX             realloc
FF8C0:  MOV             R5, R0
FF8C2:  STR             R0, [R4]
FF8C4:  CBNZ            R0, loc_FF8E0
FF8C6:  B               loc_FF904
FF8C8:  MOV.W           R0, R10,LSL#1; size
FF8CC:  BLX             malloc
FF8D0:  CBZ             R0, loc_FF904
FF8D2:  MOV             R5, R0
FF8D4:  MOV             R0, R9; src
FF8D6:  MOV             R1, R6; int
FF8D8:  MOV             R2, R5; dest
FF8DA:  BL              sub_10370C
FF8DE:  STR             R5, [R4]
FF8E0:  MOV.W           R0, R10,ASR#1
FF8E4:  MOV.W           R1, R10,ASR#2
FF8E8:  ADD.W           R6, R5, R1,LSL#2
FF8EC:  ADD.W           R0, R5, R0,LSL#2
FF8F0:  STRD.W          R6, R0, [R4,#4]
FF8F4:  LDR.W           R0, [R8]
FF8F8:  ADDS            R1, R6, #4
FF8FA:  STR             R1, [R4,#4]
FF8FC:  STR             R0, [R6]
FF8FE:  POP.W           {R8-R10}
FF902:  POP             {R4-R7,PC}
FF904:  BLX             j__ZSt9terminatev; std::terminate(void)
