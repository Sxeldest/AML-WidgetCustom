; =========================================================
; Game Engine Function: sub_179D84
; Address            : 0x179D84 - 0x179DAC
; =========================================================

179D84:  LDRH            R2, [R1,#6]
179D86:  LDRH            R3, [R0,#6]
179D88:  CMP             R3, R2
179D8A:  ITT HI
179D8C:  MOVHI.W         R0, #0xFFFFFFFF
179D90:  BXHI            LR
179D92:  ITT CC
179D94:  MOVCC           R0, #1
179D96:  BXCC            LR
179D98:  LDRH            R2, [R0,#4]
179D9A:  MOVS            R0, #0
179D9C:  LDRH            R1, [R1,#4]
179D9E:  CMP             R2, R1
179DA0:  IT CC
179DA2:  MOVCC           R0, #1
179DA4:  IT HI
179DA6:  MOVHI.W         R0, #0xFFFFFFFF
179DAA:  BX              LR
