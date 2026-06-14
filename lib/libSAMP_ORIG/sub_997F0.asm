; =========================================================
; Game Engine Function: sub_997F0
; Address            : 0x997F0 - 0x99842
; =========================================================

997F0:  PUSH            {R4,R5,R7,LR}
997F2:  ADD             R7, SP, #8
997F4:  LDR             R4, =(dword_1ACF68 - 0x997FE)
997F6:  MOVW            R5, #0x19AC
997FA:  ADD             R4, PC; dword_1ACF68
997FC:  LDR             R0, [R4]
997FE:  LDR             R0, [R0,R5]
99800:  LDR.W           R2, [R0,#0x1C0]
99804:  LDR.W           R1, [R0,#0x27C]
99808:  LDR             R2, [R2,#0xC]
9980A:  ADD.W           R0, R1, #0x64 ; 'd'
9980E:  ADDS            R2, #1
99810:  BL              sub_9E5DE
99814:  LDR             R0, [R4]
99816:  MOVS            R1, #1
99818:  LDR             R4, [R0,R5]
9981A:  LDR.W           R0, [R4,#0x27C]
9981E:  STRB.W          R1, [R4,#0x7C]
99822:  BL              sub_9C12E
99826:  LDR.W           R0, [R4,#0x27C]
9982A:  LDR             R1, [R0,#0x40]
9982C:  LDR             R0, [R0,#0x48]
9982E:  ADD.W           R0, R0, R1,LSL#4
99832:  SUBS            R0, #0x10
99834:  VLD1.32         {D16-D17}, [R0]
99838:  ADD.W           R0, R4, #0x210
9983C:  VST1.32         {D16-D17}, [R0]
99840:  POP             {R4,R5,R7,PC}
