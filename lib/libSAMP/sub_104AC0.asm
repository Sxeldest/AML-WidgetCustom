; =========================================================
; Game Engine Function: sub_104AC0
; Address            : 0x104AC0 - 0x104B0C
; =========================================================

104AC0:  PUSH            {R4-R7,LR}
104AC2:  ADD             R7, SP, #0xC
104AC4:  PUSH.W          {R11}
104AC8:  MOV             R6, R0
104ACA:  MOV             R5, R1
104ACC:  LDR.W           R1, [R6,#0x64]!
104AD0:  MOV             R4, R0
104AD2:  CBZ             R1, loc_104AE0
104AD4:  LDR             R0, =(unk_B3762 - 0x104ADA)
104AD6:  ADD             R0, PC; unk_B3762
104AD8:  BL              sub_107188
104ADC:  MOVS            R0, #0
104ADE:  STR             R0, [R6]
104AE0:  LDR             R0, =(unk_B3776 - 0x104AEA)
104AE2:  MOV             R2, R6
104AE4:  LDR             R1, [R4,#8]
104AE6:  ADD             R0, PC; unk_B3776
104AE8:  BL              sub_107188
104AEC:  LDR             R0, =(unk_B378A - 0x104AF6)
104AEE:  MOV             R2, R5
104AF0:  LDR             R1, [R4,#0x64]
104AF2:  ADD             R0, PC; unk_B378A
104AF4:  BL              sub_107188
104AF8:  LDR             R0, =(unk_B379E - 0x104B02)
104AFA:  MOVS            R2, #2
104AFC:  LDR             R1, [R4,#0x64]
104AFE:  ADD             R0, PC; unk_B379E
104B00:  POP.W           {R11}
104B04:  POP.W           {R4-R7,LR}
104B08:  B.W             sub_107188
