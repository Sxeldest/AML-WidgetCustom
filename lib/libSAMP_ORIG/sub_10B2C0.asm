; =========================================================
; Game Engine Function: sub_10B2C0
; Address            : 0x10B2C0 - 0x10B320
; =========================================================

10B2C0:  PUSH            {R4,R10,R11,LR}
10B2C4:  ADD             R11, SP, #8
10B2C8:  MOV             R4, R0
10B2CC:  LDRB            R0, [R0,#0x4D]
10B2D0:  CMP             R0, #0
10B2D4:  BEQ             loc_10B2EC
10B2D8:  LDRB            R1, [R4,#0x4C]
10B2DC:  ADD             R0, R4, #0x50 ; 'P'
10B2E0:  CMP             R1, #0
10B2E4:  BEQ             loc_10B30C
10B2E8:  BL              sub_10C100
10B2EC:  LDRB            R0, [R4,#0x4E]
10B2F0:  CMP             R0, #0
10B2F4:  BEQ             loc_10B300
10B2F8:  ADD             R0, R4, #0xD8
10B2FC:  BL              sub_10C108
10B300:  ADD             R0, R4, #8
10B304:  POP             {R4,R10,R11,LR}
10B308:  B               sub_10C0E4
10B30C:  BL              sub_10C0F8
10B310:  LDRB            R0, [R4,#0x4E]
10B314:  CMP             R0, #0
10B318:  BNE             loc_10B2F8
10B31C:  B               loc_10B300
