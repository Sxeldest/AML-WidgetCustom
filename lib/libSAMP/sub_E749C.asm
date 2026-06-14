; =========================================================
; Game Engine Function: sub_E749C
; Address            : 0xE749C - 0xE74FC
; =========================================================

E749C:  PUSH            {R4-R7,LR}
E749E:  ADD             R7, SP, #0xC
E74A0:  PUSH.W          {R8-R11}
E74A4:  SUB             SP, SP, #4
E74A6:  ADD.W           R10, R0, #4
E74AA:  VMOV.I32        Q8, #0
E74AE:  MOV.W           R11, #9
E74B2:  MOV             R9, R0
E74B4:  MOV             R6, R10
E74B6:  MOV             R5, R0
E74B8:  VST1.32         {D16-D17}, [R6]!
E74BC:  MOVS            R0, #0x13
E74BE:  MOV             R8, R3
E74C0:  VST1.32         {D16-D17}, [R6],R11
E74C4:  STR.W           R1, [R9],#0x10
E74C8:  VST1.8          {D16-D17}, [R6],R0
E74CC:  MOV             R0, R6
E74CE:  MOV             R1, R2
E74D0:  BL              sub_E67B8
E74D4:  MOV             R4, R5
E74D6:  MOVS            R0, #0
E74D8:  STRB.W          R11, [R4,#0x50]!
E74DC:  STR             R0, [R4,#8]
E74DE:  MOVS            R0, #1
E74E0:  STRB.W          R8, [R4,#-8]
E74E4:  STRB.W          R0, [R7,#var_1D]
E74E8:  SUB.W           R1, R7, #-var_1D
E74EC:  MOV             R0, R9
E74EE:  BL              sub_E8994
E74F2:  MOV             R0, R5
E74F4:  ADD             SP, SP, #4
E74F6:  POP.W           {R8-R11}
E74FA:  POP             {R4-R7,PC}
