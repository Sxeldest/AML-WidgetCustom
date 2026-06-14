; =========================================================
; Game Engine Function: sub_152AC0
; Address            : 0x152AC0 - 0x152B48
; =========================================================

152AC0:  PUSH            {R4-R7,LR}
152AC2:  ADD             R7, SP, #0xC
152AC4:  PUSH.W          {R11}
152AC8:  SUB             SP, SP, #0x120
152ACA:  MOV             R5, R2
152ACC:  MOV             R6, R1
152ACE:  MOV             R4, R0
152AD0:  ADD             R0, SP, #0x130+var_128
152AD2:  BL              sub_17D4A8
152AD6:  MOVS            R0, #0xFC
152AD8:  STRB.W          R0, [R7,#var_12]
152ADC:  ADD             R0, SP, #0x130+var_128
152ADE:  SUB.W           R1, R7, #-var_12
152AE2:  MOVS            R2, #8
152AE4:  MOVS            R3, #1
152AE6:  BL              sub_17D628
152AEA:  LDRH.W          R0, [R4,#0x52]
152AEE:  ADDS            R0, #1
152AF0:  STRH.W          R0, [R4,#0x52]
152AF4:  STRH.W          R0, [R7,#var_12]
152AF8:  ADD             R0, SP, #0x130+var_128
152AFA:  SUB.W           R1, R7, #-var_12
152AFE:  MOVS            R2, #0x10
152B00:  MOVS            R3, #1
152B02:  BL              sub_17D628
152B06:  LDRB            R0, [R4,#5]
152B08:  STRB.W          R0, [R7,#var_12]
152B0C:  ADD             R0, SP, #0x130+var_128
152B0E:  SUB.W           R1, R7, #-var_12
152B12:  MOVS            R2, #8
152B14:  MOVS            R3, #1
152B16:  BL              sub_17D628
152B1A:  CBZ             R5, loc_152B26
152B1C:  ADD             R0, SP, #0x130+var_128
152B1E:  MOV             R1, R6
152B20:  MOV             R2, R5
152B22:  BL              sub_17D566
152B26:  LDR             R0, [R4]
152B28:  LDR             R0, [R0,#0x10]
152B2A:  LDR             R1, [R0]
152B2C:  LDR             R6, [R1,#0x20]
152B2E:  MOVS            R1, #5
152B30:  MOVS            R2, #1
152B32:  STR             R1, [SP,#0x130+var_130]
152B34:  ADD             R1, SP, #0x130+var_128
152B36:  MOVS            R3, #7
152B38:  BLX             R6
152B3A:  ADD             R0, SP, #0x130+var_128
152B3C:  BL              sub_17D542
152B40:  ADD             SP, SP, #0x120
152B42:  POP.W           {R11}
152B46:  POP             {R4-R7,PC}
