; =========================================================
; Game Engine Function: sub_7C4B2
; Address            : 0x7C4B2 - 0x7C4F0
; =========================================================

7C4B2:  PUSH            {R4,R5,R7,LR}
7C4B4:  ADD             R7, SP, #8
7C4B6:  LDR             R1, [R0,#4]
7C4B8:  CBZ             R1, loc_7C4C8
7C4BA:  VLDR            D16, [R0,#0xC]
7C4BE:  VLDR            D17, [R1,#0x2C]
7C4C2:  VADD.F32        D16, D17, D16
7C4C6:  B               loc_7C4CC
7C4C8:  VLDR            D16, [R0,#0xC]
7C4CC:  ADD.W           R1, R0, #0x30 ; '0'
7C4D0:  LDRD.W          R4, R5, [R0,#0x48]
7C4D4:  ADDS            R0, #0x2C ; ','
7C4D6:  VST1.32         {D16[1]}, [R1@32]
7C4DA:  VST1.32         {D16[0]}, [R0@32]
7C4DE:  CMP             R4, R5
7C4E0:  BEQ             locret_7C4EE
7C4E2:  LDR.W           R0, [R4],#4
7C4E6:  BL              sub_7C4B2
7C4EA:  CMP             R4, R5
7C4EC:  BNE             loc_7C4E2
7C4EE:  POP             {R4,R5,R7,PC}
