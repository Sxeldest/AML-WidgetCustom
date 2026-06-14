; =========================================================
; Game Engine Function: silk_bwexpander
; Address            : 0x192A04 - 0x192A5A
; =========================================================

192A04:  PUSH            {R4-R7,LR}
192A06:  ADD             R7, SP, #0xC
192A08:  PUSH.W          {R11}
192A0C:  SUB.W           R12, R1, #1
192A10:  CMP             R1, #2
192A12:  BLT             loc_192A42
192A14:  SUB.W           LR, R2, #0x10000
192A18:  MOVS            R3, #1
192A1A:  MOV             R1, R12
192A1C:  MOV             R4, R0
192A1E:  LDRSH.W         R5, [R4]
192A22:  MUL.W           R6, R2, LR
192A26:  SUBS            R1, #1
192A28:  MUL.W           R5, R2, R5
192A2C:  ADD.W           R6, R3, R6,ASR#15
192A30:  ADD.W           R2, R2, R6,ASR#1
192A34:  ADD.W           R5, R3, R5,LSR#15
192A38:  MOV.W           R5, R5,LSR#1
192A3C:  STRH.W          R5, [R4],#2
192A40:  BNE             loc_192A1E
192A42:  LDRSH.W         R1, [R0,R12,LSL#1]
192A46:  MULS            R1, R2
192A48:  MOVS            R2, #1
192A4A:  ADD.W           R1, R2, R1,LSR#15
192A4E:  LSRS            R1, R1, #1
192A50:  STRH.W          R1, [R0,R12,LSL#1]
192A54:  POP.W           {R11}
192A58:  POP             {R4-R7,PC}
