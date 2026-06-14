; =========================================================
; Game Engine Function: sub_9E5DE
; Address            : 0x9E5DE - 0x9E662
; =========================================================

9E5DE:  PUSH            {R4,R5,R7,LR}
9E5E0:  ADD             R7, SP, #8
9E5E2:  LDR             R3, [R0]
9E5E4:  CMP             R3, R2
9E5E6:  IT EQ
9E5E8:  POPEQ           {R4,R5,R7,PC}
9E5EA:  LDR.W           LR, [R0,#0x10]
9E5EE:  ADD.W           R3, R3, R3,LSL#1
9E5F2:  VLD1.8          {D16}, [R1]
9E5F6:  ADD.W           R3, LR, R3,LSL#3
9E5FA:  ADD.W           LR, R1, #0xC
9E5FE:  LDR.W           R12, [R1,#8]
9E602:  VST1.8          {D16}, [R3]
9E606:  STR.W           R12, [R3,#8]
9E60A:  LDR             R3, [R0]
9E60C:  LDR.W           R12, [R0,#0x10]
9E610:  VLD1.8          {D16}, [LR]
9E614:  ADD.W           R3, R3, R3,LSL#1
9E618:  LDR             R5, [R1,#0x14]
9E61A:  ADD.W           R3, R12, R3,LSL#3
9E61E:  ADD.W           R4, R3, #0xC
9E622:  STR             R5, [R3,#0x14]
9E624:  VST1.8          {D16}, [R4]
9E628:  STR             R2, [R0]
9E62A:  ADD.W           R2, R2, R2,LSL#1
9E62E:  LDR             R3, [R0,#0x10]
9E630:  ADD.W           R3, R3, R2,LSL#3
9E634:  VLD1.8          {D16}, [R3]
9E638:  LDR             R3, [R3,#8]
9E63A:  STR             R3, [R1,#8]
9E63C:  VST1.8          {D16}, [R1]
9E640:  LDR             R0, [R0,#0x10]
9E642:  ADD.W           R0, R0, R2,LSL#3
9E646:  ADD.W           R2, R0, #0xC
9E64A:  LDR             R0, [R0,#0x14]
9E64C:  VLD1.8          {D16}, [R2]
9E650:  VST1.8          {D16}, [LR]
9E654:  LDR             R2, [R1,#0xC]
9E656:  STR             R0, [R1,#0x14]
9E658:  LDR             R0, [R1,#0x14]
9E65A:  ADD.W           R0, R0, R2,LSL#1
9E65E:  STR             R0, [R1,#0x3C]
9E660:  POP             {R4,R5,R7,PC}
