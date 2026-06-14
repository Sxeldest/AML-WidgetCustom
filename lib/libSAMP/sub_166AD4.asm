; =========================================================
; Game Engine Function: sub_166AD4
; Address            : 0x166AD4 - 0x166B1A
; =========================================================

166AD4:  PUSH            {R7,LR}
166AD6:  MOV             R7, SP
166AD8:  MOV             R3, R2
166ADA:  LDR.W           R2, [R0,#0x1C4]
166ADE:  LDR.W           R0, [R0,#0x1CC]
166AE2:  CMP             R3, #0
166AE4:  ADD.W           R0, R0, R2,LSL#2
166AE8:  LDR.W           R2, [R0,#-4]
166AEC:  IT NE
166AEE:  SUBNE           R3, R3, R1
166AF0:  MOV             R0, R1
166AF2:  MOV             R1, R3
166AF4:  BL              sub_16560C
166AF8:  LDR             R1, =(dword_381B58 - 0x166B02)
166AFA:  MOVW            R2, #0x19D0
166AFE:  ADD             R1, PC; dword_381B58
166B00:  LDR             R1, [R1]
166B02:  LDR             R3, [R1,R2]
166B04:  ADD             R1, R2
166B06:  CMP             R3, R0
166B08:  IT EQ
166B0A:  STREQ           R0, [R1,#4]
166B0C:  LDR             R2, [R1,#0x2C]
166B0E:  CMP             R2, R0
166B10:  ITT EQ
166B12:  MOVEQ           R2, #1
166B14:  STRBEQ.W        R2, [R1,#0x30]
166B18:  POP             {R7,PC}
