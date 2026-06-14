; =========================================================
; Game Engine Function: _Z18RwRGBAGammaCorrectP6RwRGBA
; Address            : 0x1DA36C - 0x1DA3A6
; =========================================================

1DA36C:  PUSH            {R4,R6,R7,LR}
1DA36E:  ADD             R7, SP, #8
1DA370:  LDR             R1, =(RwEngineInstance_ptr - 0x1DA378)
1DA372:  LDR             R2, =(dword_6BCF04 - 0x1DA37E)
1DA374:  ADD             R1, PC; RwEngineInstance_ptr
1DA376:  LDRB.W          R12, [R0]
1DA37A:  ADD             R2, PC; dword_6BCF04
1DA37C:  LDRB.W          LR, [R0,#1]
1DA380:  LDR             R1, [R1]; RwEngineInstance
1DA382:  LDR             R2, [R2]
1DA384:  LDRB            R4, [R0,#2]
1DA386:  LDR             R3, [R1]
1DA388:  ADD             R3, R2
1DA38A:  ADD             R3, R12
1DA38C:  LDRB            R3, [R3,#0xC]
1DA38E:  STRB            R3, [R0]
1DA390:  LDR             R3, [R1]
1DA392:  ADD             R3, R2
1DA394:  ADD             R3, LR
1DA396:  LDRB            R3, [R3,#0xC]
1DA398:  STRB            R3, [R0,#1]
1DA39A:  LDR             R1, [R1]
1DA39C:  ADD             R1, R2
1DA39E:  ADD             R1, R4
1DA3A0:  LDRB            R1, [R1,#0xC]
1DA3A2:  STRB            R1, [R0,#2]
1DA3A4:  POP             {R4,R6,R7,PC}
