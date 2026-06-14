; =========================================================
; Game Engine Function: sub_18A49E
; Address            : 0x18A49E - 0x18A52C
; =========================================================

18A49E:  PUSH            {R4-R7,LR}
18A4A0:  ADD             R7, SP, #0xC
18A4A2:  PUSH.W          {R8,R9,R11}
18A4A6:  MOV             R4, R0
18A4A8:  LDRD.W          R5, R0, [R0,#4]
18A4AC:  MOV             R8, R1
18A4AE:  CMP             R5, R0
18A4B0:  BNE             loc_18A516
18A4B2:  MOVW            R0, #0xFFFE
18A4B6:  LSLS            R6, R5, #1
18A4B8:  MOVT            R0, #0x3FFF
18A4BC:  CMP             R5, #0
18A4BE:  IT EQ
18A4C0:  MOVEQ           R6, #0x10
18A4C2:  ANDS            R0, R6
18A4C4:  SUBS            R1, R6, R0
18A4C6:  MOV.W           R0, #8
18A4CA:  ADD.W           R0, R0, R6,LSL#2
18A4CE:  STR             R6, [R4,#8]
18A4D0:  IT NE
18A4D2:  MOVNE           R1, #1
18A4D4:  CMP.W           R0, R6,LSL#2
18A4D8:  IT CC
18A4DA:  MOVCC.W         R0, #0xFFFFFFFF
18A4DE:  CMP             R1, #0
18A4E0:  IT NE
18A4E2:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
18A4E6:  BLX             j__Znaj; operator new[](uint)
18A4EA:  MOVS            R1, #4
18A4EC:  LDR.W           R9, [R4]
18A4F0:  STRD.W          R1, R6, [R0]
18A4F4:  ADD.W           R6, R0, #8
18A4F8:  LSLS            R2, R5, #2; n
18A4FA:  MOV             R0, R6; dest
18A4FC:  MOV             R1, R9; src
18A4FE:  BLX             j_memcpy
18A502:  CMP.W           R9, #0
18A506:  BEQ             loc_18A512
18A508:  SUB.W           R0, R9, #8; void *
18A50C:  BLX             j__ZdaPv; operator delete[](void *)
18A510:  LDR             R5, [R4,#4]
18A512:  STR             R6, [R4]
18A514:  B               loc_18A518
18A516:  LDR             R6, [R4]
18A518:  LDR.W           R0, [R8]
18A51C:  STR.W           R0, [R6,R5,LSL#2]
18A520:  LDR             R0, [R4,#4]
18A522:  ADDS            R0, #1
18A524:  STR             R0, [R4,#4]
18A526:  POP.W           {R8,R9,R11}
18A52A:  POP             {R4-R7,PC}
