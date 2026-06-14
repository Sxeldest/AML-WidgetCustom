; =========================================================
; Game Engine Function: sub_174F42
; Address            : 0x174F42 - 0x174FC6
; =========================================================

174F42:  PUSH            {R4,R5,R7,LR}
174F44:  ADD             R7, SP, #8
174F46:  LDR             R3, [R0]
174F48:  CMP             R3, R2
174F4A:  IT EQ
174F4C:  POPEQ           {R4,R5,R7,PC}
174F4E:  LDR.W           LR, [R0,#0x10]
174F52:  ADD.W           R3, R3, R3,LSL#1
174F56:  VLD1.8          {D16}, [R1]
174F5A:  ADD.W           R3, LR, R3,LSL#3
174F5E:  ADD.W           LR, R1, #0xC
174F62:  LDR.W           R12, [R1,#8]
174F66:  VST1.8          {D16}, [R3]
174F6A:  STR.W           R12, [R3,#8]
174F6E:  LDR             R3, [R0]
174F70:  LDR.W           R12, [R0,#0x10]
174F74:  VLD1.8          {D16}, [LR]
174F78:  ADD.W           R3, R3, R3,LSL#1
174F7C:  LDR             R5, [R1,#0x14]
174F7E:  ADD.W           R3, R12, R3,LSL#3
174F82:  ADD.W           R4, R3, #0xC
174F86:  STR             R5, [R3,#0x14]
174F88:  VST1.8          {D16}, [R4]
174F8C:  STR             R2, [R0]
174F8E:  ADD.W           R2, R2, R2,LSL#1
174F92:  LDR             R3, [R0,#0x10]
174F94:  ADD.W           R3, R3, R2,LSL#3
174F98:  VLD1.8          {D16}, [R3]
174F9C:  LDR             R3, [R3,#8]
174F9E:  STR             R3, [R1,#8]
174FA0:  VST1.8          {D16}, [R1]
174FA4:  LDR             R0, [R0,#0x10]
174FA6:  ADD.W           R0, R0, R2,LSL#3
174FAA:  ADD.W           R2, R0, #0xC
174FAE:  LDR             R0, [R0,#0x14]
174FB0:  VLD1.8          {D16}, [R2]
174FB4:  VST1.8          {D16}, [LR]
174FB8:  LDR             R2, [R1,#0xC]
174FBA:  STR             R0, [R1,#0x14]
174FBC:  LDR             R0, [R1,#0x14]
174FBE:  ADD.W           R0, R0, R2,LSL#1
174FC2:  STR             R0, [R1,#0x3C]
174FC4:  POP             {R4,R5,R7,PC}
