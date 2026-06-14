; =========================================================
; Game Engine Function: sub_182E34
; Address            : 0x182E34 - 0x182E82
; =========================================================

182E34:  PUSH            {R4-R7,LR}
182E36:  ADD             R7, SP, #0xC
182E38:  PUSH.W          {R8}
182E3C:  MOV             R5, R2
182E3E:  MOV             R8, R1
182E40:  MOV             R4, R0
182E42:  BL              sub_1848C6
182E46:  VMOV.I32        Q8, #0
182E4A:  ADDS            R6, R4, #4
182E4C:  MOVS            R0, #0xC
182E4E:  STR.W           R8, [R4],#0x60
182E52:  VST1.32         {D16-D17}, [R6],R0
182E56:  VST1.32         {D16-D17}, [R6]!
182E5A:  VLD1.32         {D16-D17}, [R5]!
182E5E:  MOV             R1, R6
182E60:  MOV             R0, R6
182E62:  VLD1.32         {D18-D19}, [R5]
182E66:  VST1.32         {D16-D17}, [R1]!
182E6A:  VST1.32         {D18-D19}, [R1]!
182E6E:  BL              sub_1854A8
182E72:  MOV             R0, R6
182E74:  MOV             R1, R4
182E76:  POP.W           {R8}
182E7A:  POP.W           {R4-R7,LR}
182E7E:  B.W             sub_18553A
