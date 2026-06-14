; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager20UpdateJoyButtonStateEi
; Address            : 0x3EA800 - 0x3EA8E6
; =========================================================

3EA800:  ADD.W           R1, R1, R1,LSL#4
3EA804:  VMOV.I32        Q8, #0
3EA808:  ADD             R1, R0
3EA80A:  MOVW            R12, #0x38EC
3EA80E:  ADD.W           R3, R1, R12
3EA812:  MOVS            R2, #0
3EA814:  VST1.8          {D16-D17}, [R3]!
3EA818:  STRB            R2, [R3]
3EA81A:  MOVW            R3, #0x38ED
3EA81E:  LDR             R2, [R0,#8]
3EA820:  AND.W           R2, R2, #1
3EA824:  STRB.W          R2, [R1,R12]
3EA828:  LDR             R2, [R0,#8]
3EA82A:  UBFX.W          R2, R2, #1, #1
3EA82E:  STRB            R2, [R1,R3]
3EA830:  MOVW            R3, #0x38EE
3EA834:  LDR             R2, [R0,#8]
3EA836:  UBFX.W          R2, R2, #2, #1
3EA83A:  STRB            R2, [R1,R3]
3EA83C:  MOVW            R3, #0x38EF
3EA840:  LDR             R2, [R0,#8]
3EA842:  UBFX.W          R2, R2, #3, #1
3EA846:  STRB            R2, [R1,R3]
3EA848:  MOVW            R3, #0x38F0
3EA84C:  LDR             R2, [R0,#8]
3EA84E:  UBFX.W          R2, R2, #4, #1
3EA852:  STRB            R2, [R1,R3]
3EA854:  MOVW            R3, #0x38F1
3EA858:  LDR             R2, [R0,#8]
3EA85A:  UBFX.W          R2, R2, #5, #1
3EA85E:  STRB            R2, [R1,R3]
3EA860:  MOVW            R3, #0x38F2
3EA864:  LDR             R2, [R0,#8]
3EA866:  UBFX.W          R2, R2, #6, #1
3EA86A:  STRB            R2, [R1,R3]
3EA86C:  MOVW            R3, #0x38F3
3EA870:  LDR             R2, [R0,#8]
3EA872:  UBFX.W          R2, R2, #7, #1
3EA876:  STRB            R2, [R1,R3]
3EA878:  MOVW            R3, #0x38F4
3EA87C:  LDR             R2, [R0,#8]
3EA87E:  UBFX.W          R2, R2, #8, #1
3EA882:  STRB            R2, [R1,R3]
3EA884:  MOVW            R3, #0x38F5
3EA888:  LDR             R2, [R0,#8]
3EA88A:  UBFX.W          R2, R2, #9, #1
3EA88E:  STRB            R2, [R1,R3]
3EA890:  MOVW            R3, #0x38F6
3EA894:  LDR             R2, [R0,#8]
3EA896:  UBFX.W          R2, R2, #0xA, #1
3EA89A:  STRB            R2, [R1,R3]
3EA89C:  MOVW            R3, #0x38F7
3EA8A0:  LDR             R2, [R0,#8]
3EA8A2:  UBFX.W          R2, R2, #0xB, #1
3EA8A6:  STRB            R2, [R1,R3]
3EA8A8:  MOVW            R3, #0x38F8
3EA8AC:  LDR             R2, [R0,#8]
3EA8AE:  UBFX.W          R2, R2, #0xC, #1
3EA8B2:  STRB            R2, [R1,R3]
3EA8B4:  MOVW            R3, #0x38F9
3EA8B8:  LDR             R2, [R0,#8]
3EA8BA:  UBFX.W          R2, R2, #0xD, #1
3EA8BE:  STRB            R2, [R1,R3]
3EA8C0:  MOVW            R3, #0x38FA
3EA8C4:  LDR             R2, [R0,#8]
3EA8C6:  UBFX.W          R2, R2, #0xE, #1
3EA8CA:  STRB            R2, [R1,R3]
3EA8CC:  MOVW            R3, #0x38FB
3EA8D0:  LDR             R2, [R0,#8]
3EA8D2:  UBFX.W          R2, R2, #0xF, #1
3EA8D6:  STRB            R2, [R1,R3]
3EA8D8:  MOVW            R2, #0x38FC
3EA8DC:  LDRH            R0, [R0,#0xA]
3EA8DE:  AND.W           R0, R0, #1
3EA8E2:  STRB            R0, [R1,R2]
3EA8E4:  BX              LR
