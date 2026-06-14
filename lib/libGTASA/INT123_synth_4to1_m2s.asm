; =========================================================
; Game Engine Function: INT123_synth_4to1_m2s
; Address            : 0x235CCC - 0x235D38
; =========================================================

235CCC:  PUSH            {R4-R7,LR}
235CCE:  ADD             R7, SP, #0xC
235CD0:  PUSH.W          {R11}
235CD4:  MOV             R4, R1
235CD6:  MOVW            R1, #0xB2A0
235CDA:  LDR             R6, [R4,R1]
235CDC:  MOVW            R1, #0x91B4
235CE0:  LDR             R5, [R4,R1]
235CE2:  MOVS            R1, #0
235CE4:  MOV             R2, R4
235CE6:  MOVS            R3, #1
235CE8:  BLX             R5
235CEA:  MOVW            R1, #0xB2A8
235CEE:  LDR             R1, [R4,R1]
235CF0:  ADD             R1, R6
235CF2:  LDRH.W          R2, [R1,#-0x20]
235CF6:  LDRH.W          R3, [R1,#-0x1C]
235CFA:  LDRH.W          R6, [R1,#-0x18]
235CFE:  LDRH.W          R5, [R1,#-0x14]
235D02:  LDRH.W          R4, [R1,#-0x10]
235D06:  LDRH.W          R12, [R1,#-0xC]
235D0A:  STRH.W          R2, [R1,#-0x1E]
235D0E:  LDRH.W          R2, [R1,#-8]
235D12:  STRH.W          R3, [R1,#-0x1A]
235D16:  LDRH.W          R3, [R1,#-4]
235D1A:  STRH.W          R6, [R1,#-0x16]
235D1E:  STRH.W          R5, [R1,#-0x12]
235D22:  STRH.W          R4, [R1,#-0xE]
235D26:  STRH.W          R12, [R1,#-0xA]
235D2A:  STRH.W          R2, [R1,#-6]
235D2E:  STRH.W          R3, [R1,#-2]
235D32:  POP.W           {R11}
235D36:  POP             {R4-R7,PC}
