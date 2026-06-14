; =========================================================
; Game Engine Function: sub_17DE2C
; Address            : 0x17DE2C - 0x17DE9C
; =========================================================

17DE2C:  PUSH            {R4-R7,LR}
17DE2E:  ADD             R7, SP, #0xC
17DE30:  PUSH.W          {R8}
17DE34:  MOV             R8, R3
17DE36:  MOV             R5, R0
17DE38:  CBZ             R2, loc_17DE56
17DE3A:  MOV             R6, R2
17DE3C:  MOV             R4, R1
17DE3E:  LDRB.W          R0, [R4],#1
17DE42:  MOVS            R3, #0
17DE44:  ADD.W           R0, R5, R0,LSL#3
17DE48:  LDRH            R2, [R0,#8]
17DE4A:  LDR             R1, [R0,#4]
17DE4C:  MOV             R0, R8
17DE4E:  BL              sub_17D628
17DE52:  SUBS            R6, #1
17DE54:  BNE             loc_17DE3E
17DE56:  LDR.W           R0, [R8]
17DE5A:  LSLS            R1, R0, #0x1D
17DE5C:  BEQ             loc_17DE84
17DE5E:  ASRS            R1, R0, #0x1F
17DE60:  ADD.W           R1, R0, R1,LSR#29
17DE64:  BIC.W           R1, R1, #7
17DE68:  SUBS            R0, R1, R0
17DE6A:  ADD.W           R2, R0, #8
17DE6E:  MOVS            R0, #0
17DE70:  ADD.W           R1, R5, R0,LSL#3
17DE74:  UXTH            R6, R2
17DE76:  LDRH            R3, [R1,#8]
17DE78:  CMP             R3, R6
17DE7A:  BHI             loc_17DE8A
17DE7C:  ADDS            R0, #1
17DE7E:  CMP.W           R0, #0x100
17DE82:  BNE             loc_17DE70
17DE84:  POP.W           {R8}
17DE88:  POP             {R4-R7,PC}
17DE8A:  LDR             R1, [R1,#4]
17DE8C:  MOV             R0, R8
17DE8E:  MOVS            R3, #0
17DE90:  POP.W           {R8}
17DE94:  POP.W           {R4-R7,LR}
17DE98:  B.W             sub_17D628
