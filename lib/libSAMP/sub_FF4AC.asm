; =========================================================
; Game Engine Function: sub_FF4AC
; Address            : 0xFF4AC - 0xFF508
; =========================================================

FF4AC:  PUSH            {R4-R7,LR}
FF4AE:  ADD             R7, SP, #0xC
FF4B0:  PUSH.W          {R11}
FF4B4:  CBZ             R0, loc_FF4F4
FF4B6:  LDR             R6, [R0,#4]
FF4B8:  MOV             R4, R0
FF4BA:  CBZ             R6, loc_FF4E2
FF4BC:  LDR.W           R0, [R6,#0x98]!
FF4C0:  CMP             R0, R4
FF4C2:  BEQ             loc_FF4E2
FF4C4:  LDR             R5, =(aRwframedeinitC - 0xFF4CA); "rwFrameDeinit(): child == nullptr. Tryi"... ...
FF4C6:  ADD             R5, PC; "rwFrameDeinit(): child == nullptr. Tryi"...
FF4C8:  CBNZ            R0, loc_FF4D8
FF4CA:  MOVS            R0, #3; int
FF4CC:  MOV             R1, R5; text
FF4CE:  MOVS            R2, #0x32 ; '2'
FF4D0:  BL              sub_ED4F8
FF4D4:  MOV             R0, R4
FF4D6:  STR             R4, [R6]
FF4D8:  MOV             R6, R0
FF4DA:  LDR.W           R0, [R6,#0x9C]!
FF4DE:  CMP             R0, R4
FF4E0:  BNE             loc_FF4C8
FF4E2:  LDR             R0, =(off_25B188 - 0xFF4E8)
FF4E4:  ADD             R0, PC; off_25B188
FF4E6:  LDR             R1, [R0]
FF4E8:  MOV             R0, R4
FF4EA:  POP.W           {R11}
FF4EE:  POP.W           {R4-R7,LR}
FF4F2:  BX              R1
FF4F4:  LDR             R1, =(aRwframedeinitF - 0xFF4FE); "rwFrameDeInit(): frame == nullptr." ...
FF4F6:  MOVS            R0, #3; int
FF4F8:  MOVS            R2, #0x22 ; '"'
FF4FA:  ADD             R1, PC; "rwFrameDeInit(): frame == nullptr."
FF4FC:  BL              sub_ED4F8
FF500:  MOVS            R0, #0
FF502:  POP.W           {R11}
FF506:  POP             {R4-R7,PC}
