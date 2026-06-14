; =========================================================
; Game Engine Function: sub_1076F8
; Address            : 0x1076F8 - 0x10772E
; =========================================================

1076F8:  PUSH            {R4,R5,R7,LR}
1076FA:  ADD             R7, SP, #8
1076FC:  LDR             R3, [R0]
1076FE:  MOVS            R2, #0
107700:  MOVS            R1, #0
107702:  LDRB.W          R4, [R3],#1
107706:  AND.W           R5, R4, #0x7F
10770A:  LSLS            R5, R2
10770C:  ADDS            R2, #7
10770E:  ORRS            R1, R5
107710:  LSLS            R5, R4, #0x18
107712:  BMI             loc_107702
107714:  STR             R3, [R0]
107716:  MOV.W           R0, #0xFFFFFFFF
10771A:  LSL.W           R3, R0, R2
10771E:  MOV             R0, R1
107720:  CMP             R2, #0x20 ; ' '
107722:  IT CC
107724:  ORRCC           R0, R3
107726:  LSLS            R2, R4, #0x19
107728:  IT PL
10772A:  MOVPL           R0, R1
10772C:  POP             {R4,R5,R7,PC}
