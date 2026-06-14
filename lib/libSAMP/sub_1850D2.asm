; =========================================================
; Game Engine Function: sub_1850D2
; Address            : 0x1850D2 - 0x185136
; =========================================================

1850D2:  PUSH            {R4-R7,LR}
1850D4:  ADD             R7, SP, #0xC
1850D6:  PUSH.W          {R11}
1850DA:  AND.W           R6, R1, #0x1F
1850DE:  MOV             R4, R0
1850E0:  MOVS.W          R12, R1,LSR#5
1850E4:  BEQ             loc_18510E
1850E6:  CMP             R1, #0xFF
1850E8:  BHI             loc_185104
1850EA:  MOVS            R1, #0
1850EC:  ADD.W           R2, R4, #0x1C
1850F0:  SUB.W           R1, R1, R12,LSL#2
1850F4:  RSB.W           R3, R12, #8
1850F8:  LDR             R0, [R2,R1]
1850FA:  SUBS            R3, #1
1850FC:  CMP             R3, #0
1850FE:  STR.W           R0, [R2],#-4
185102:  BGT             loc_1850F8
185104:  MOV.W           R1, R12,LSL#2; n
185108:  MOV             R0, R4; int
18510A:  BLX             sub_22178C
18510E:  CBZ             R6, loc_185130
185110:  RSB.W           R0, R6, #0x20 ; ' '
185114:  MOVS            R1, #0
185116:  MOVS            R2, #0
185118:  LDR.W           R3, [R4,R1,LSL#2]
18511C:  LSL.W           R5, R3, R6
185120:  ORRS            R2, R5
185122:  STR.W           R2, [R4,R1,LSL#2]
185126:  ADDS            R1, #1
185128:  LSR.W           R2, R3, R0
18512C:  CMP             R1, #8
18512E:  BNE             loc_185118
185130:  POP.W           {R11}
185134:  POP             {R4-R7,PC}
