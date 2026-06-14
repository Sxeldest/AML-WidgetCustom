; =========================================================
; Game Engine Function: sub_2173EC
; Address            : 0x2173EC - 0x217430
; =========================================================

2173EC:  PUSH            {R4,R6,R7,LR}
2173EE:  ADD             R7, SP, #8
2173F0:  LDRD.W          R2, R3, [R0]
2173F4:  MOV             R1, R0
2173F6:  CMP             R2, R3
2173F8:  BEQ             loc_217408
2173FA:  LDRB            R0, [R2]
2173FC:  CMP             R0, #0x72 ; 'r'
2173FE:  BNE             loc_217408
217400:  ADDS            R2, #1
217402:  MOVS            R0, #4
217404:  STR             R2, [R1]
217406:  B               loc_21740A
217408:  MOVS            R0, #0
21740A:  CMP             R2, R3
21740C:  BEQ             locret_21742E
21740E:  LDRB            R4, [R2]
217410:  CMP             R4, #0x56 ; 'V'
217412:  ITTT EQ
217414:  ADDEQ           R2, #1
217416:  STREQ           R2, [R1]
217418:  ORREQ.W         R0, R0, #2
21741C:  CMP             R2, R3
21741E:  BEQ             locret_21742E
217420:  LDRB            R3, [R2]
217422:  CMP             R3, #0x4B ; 'K'
217424:  ITTT EQ
217426:  ADDEQ           R2, #1
217428:  STREQ           R2, [R1]
21742A:  ORREQ.W         R0, R0, #1
21742E:  POP             {R4,R6,R7,PC}
