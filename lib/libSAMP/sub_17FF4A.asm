; =========================================================
; Game Engine Function: sub_17FF4A
; Address            : 0x17FF4A - 0x17FF90
; =========================================================

17FF4A:  PUSH            {R4-R7,LR}
17FF4C:  ADD             R7, SP, #0xC
17FF4E:  PUSH.W          {R8}
17FF52:  ADDW            R5, R0, #0x974
17FF56:  MOV             R8, R0
17FF58:  ADDW            R1, R8, #0x988
17FF5C:  MOV             R6, #0xFFFFFFFC
17FF60:  MOV             R0, R5
17FF62:  VLD1.32         {D16-D17}, [R0]!
17FF66:  VST1.32         {D16-D17}, [R1]!
17FF6A:  LDR             R0, [R0]
17FF6C:  STR             R0, [R1]
17FF6E:  ADDS            R4, R5, R6
17FF70:  BL              sub_187150
17FF74:  ADDS            R6, #4
17FF76:  STR             R0, [R4,#4]
17FF78:  CMP             R6, #0x10
17FF7A:  BCC             loc_17FF6E
17FF7C:  BL              sub_17E2E4
17FF80:  MOVW            R1, #0x1388
17FF84:  ADD             R0, R1
17FF86:  STR.W           R0, [R8,#0x970]
17FF8A:  POP.W           {R8}
17FF8E:  POP             {R4-R7,PC}
