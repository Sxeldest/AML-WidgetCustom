; =========================================================
; Game Engine Function: sub_AB7D0
; Address            : 0xAB7D0 - 0xAB8BC
; =========================================================

AB7D0:  PUSH            {R4,R6,R7,LR}
AB7D2:  ADD             R7, SP, #8
AB7D4:  LDRB            R3, [R0]
AB7D6:  B               loc_AB7E2
AB7D8:  CMP             R3, #0x25 ; '%'
AB7DA:  IT EQ
AB7DC:  ADDEQ           R0, #1
AB7DE:  LDRB.W          R3, [R0,#1]!
AB7E2:  CMP             R3, #0
AB7E4:  BEQ             loc_AB8B2
AB7E6:  CMP             R3, #0x25 ; '%'
AB7E8:  BNE             loc_AB7D8
AB7EA:  LDRB            R2, [R0,#1]
AB7EC:  CMP             R2, #0x25 ; '%'
AB7EE:  BEQ             loc_AB7D8
AB7F0:  SUB.W           R3, R2, #0x30 ; '0'
AB7F4:  CMP             R3, #9
AB7F6:  BHI             loc_AB804
AB7F8:  LDRB            R2, [R0,#2]
AB7FA:  ADDS            R0, #1
AB7FC:  SUB.W           R3, R2, #0x30 ; '0'
AB800:  CMP             R3, #0xA
AB802:  BCC             loc_AB7F8
AB804:  CMP             R2, #0x2E ; '.'
AB806:  BNE             loc_AB85E
AB808:  MOV             R2, R0
AB80A:  LDRB.W          R12, [R2,#2]!
AB80E:  SUB.W           R3, R12, #0x2D ; '-'
AB812:  CLZ.W           R3, R3
AB816:  LSRS            R3, R3, #5
AB818:  ADDS            R4, R2, R3
AB81A:  LDRB.W          LR, [R2,R3]
AB81E:  SUB.W           R2, LR, #0x2B ; '+'
AB822:  CLZ.W           R2, R2
AB826:  MOV.W           LR, R2,LSR#5
AB82A:  LDRB.W          R2, [R4,LR]
AB82E:  SUB.W           R4, R2, #0x30 ; '0'
AB832:  CMP             R4, #9
AB834:  BHI             loc_AB864
AB836:  ADD             R3, LR
AB838:  MOV.W           LR, #0
AB83C:  ADD             R0, R3
AB83E:  MOV             R3, R2
AB840:  ADDS            R0, #3
AB842:  ADD.W           R4, LR, LR,LSL#2
AB846:  LDRB.W          R2, [R0],#1
AB84A:  ADD.W           R3, R3, R4,LSL#1
AB84E:  SUB.W           LR, R3, #0x30 ; '0'
AB852:  SUB.W           R3, R2, #0x30 ; '0'
AB856:  CMP             R3, #0xA
AB858:  MOV             R3, R2
AB85A:  BCC             loc_AB842
AB85C:  B               loc_AB868
AB85E:  MOV             LR, #0x7FFFFFFF
AB862:  B               loc_AB87A
AB864:  MOV.W           LR, #0
AB868:  CMP.W           R12, #0x2D ; '-'
AB86C:  IT EQ
AB86E:  RSBEQ.W         LR, LR, #0
AB872:  CMP.W           LR, #0x63 ; 'c'
AB876:  IT HI
AB878:  MOVHI           LR, R1
AB87A:  CMP             R2, #0x45 ; 'E'
AB87C:  MOV.W           R0, #0xFFFFFFFF
AB880:  IT NE
AB882:  CMPNE           R2, #0x65 ; 'e'
AB884:  BNE             loc_AB888
AB886:  POP             {R4,R6,R7,PC}
AB888:  CMP             R2, #0x67 ; 'g'
AB88A:  BNE             loc_AB89C
AB88C:  MOV             R0, #0x7FFFFFFF
AB890:  CMP             LR, R0
AB892:  MOV             R0, LR
AB894:  IT EQ
AB896:  MOVEQ.W         R0, #0xFFFFFFFF
AB89A:  POP             {R4,R6,R7,PC}
AB89C:  CMP             R2, #0x47 ; 'G'
AB89E:  ITT EQ
AB8A0:  MOVEQ           R0, #0x7FFFFFFF
AB8A4:  CMPEQ           LR, R0
AB8A6:  BEQ             loc_AB8B6
AB8A8:  MOV             R0, #0x7FFFFFFF
AB8AC:  CMP             LR, R0
AB8AE:  IT NE
AB8B0:  MOVNE           R1, LR
AB8B2:  MOV             R0, R1
AB8B4:  POP             {R4,R6,R7,PC}
AB8B6:  MOV.W           R0, #0xFFFFFFFF
AB8BA:  POP             {R4,R6,R7,PC}
