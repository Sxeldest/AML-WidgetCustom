; =========================================================
; Game Engine Function: sub_18A83A
; Address            : 0x18A83A - 0x18A8B6
; =========================================================

18A83A:  PUSH            {R4-R7,LR}
18A83C:  ADD             R7, SP, #0xC
18A83E:  PUSH.W          {R8,R9,R11}
18A842:  ADD.W           R0, R1, #0xD0
18A846:  SUB.W           R12, R2, #1
18A84A:  LDR.W           LR, [R0,R12,LSL#2]
18A84E:  LDR.W           R9, [R0,R2,LSL#2]
18A852:  LDR.W           R2, [LR,#4]
18A856:  LDRH.W          R5, [R9,#8]
18A85A:  STRH            R5, [R3]
18A85C:  ADDS            R5, R2, #1
18A85E:  STR.W           R5, [LR,#4]
18A862:  ADD.W           R6, LR, R2,LSL#1
18A866:  LDR.W           R4, [R9,#4]
18A86A:  ADD.W           R2, LR, R2,LSL#2
18A86E:  LDR.W           R8, [R9,#0x48]
18A872:  SUB.W           LR, R4, #1
18A876:  LDRH.W          R5, [R9,#8]
18A87A:  CMP             R4, #2
18A87C:  STRH            R5, [R6,#8]
18A87E:  STR.W           R8, [R2,#0x48]
18A882:  BLT             loc_18A89C
18A884:  MOVS            R2, #0
18A886:  ADD.W           R4, R9, R2,LSL#1
18A88A:  ADD.W           R6, R9, R2,LSL#2
18A88E:  ADDS            R2, #1
18A890:  LDRH            R5, [R4,#0xA]
18A892:  CMP             LR, R2
18A894:  LDR             R0, [R6,#0x4C]
18A896:  STRH            R5, [R4,#8]
18A898:  STR             R0, [R6,#0x48]
18A89A:  BNE             loc_18A886
18A89C:  ADD.W           R1, R1, R12,LSL#1
18A8A0:  LDRH.W          R2, [R9,#8]
18A8A4:  STR.W           LR, [R9,#4]
18A8A8:  STRH            R2, [R1,#8]
18A8AA:  LDRH.W          R0, [R9,#8]
18A8AE:  STRH            R0, [R3,#2]
18A8B0:  POP.W           {R8,R9,R11}
18A8B4:  POP             {R4-R7,PC}
