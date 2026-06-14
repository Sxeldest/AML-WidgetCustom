; =========================================================
; Game Engine Function: _Z32_rpWorldSetupSectorBoundingBoxesP7RpWorld
; Address            : 0x21C9A4 - 0x21CA5A
; =========================================================

21C9A4:  PUSH            {R4-R7,LR}
21C9A6:  ADD             R7, SP, #0xC
21C9A8:  PUSH.W          {R11}
21C9AC:  SUB.W           SP, SP, #0x718
21C9B0:  ADD.W           R1, R0, #0x50 ; 'P'
21C9B4:  LDR             R2, [R0,#0x1C]
21C9B6:  VLD1.32         {D16-D17}, [R1]
21C9BA:  ADD.W           R1, SP, #0x728+var_128
21C9BE:  ADD.W           LR, SP, #0x728+var_110
21C9C2:  MOV             R12, SP
21C9C4:  MOV             R3, R1
21C9C6:  VLDR            D18, [R0,#0x60]
21C9CA:  VST1.64         {D16-D17}, [R3]!
21C9CE:  VSTR            D18, [R3]
21C9D2:  MOVS            R3, #0
21C9D4:  LDR             R4, [R2]
21C9D6:  CMP.W           R4, #0xFFFFFFFF
21C9DA:  BLE             loc_21CA16
21C9DC:  ADDS            R3, #1
21C9DE:  LDR             R4, [R2,#0xC]
21C9E0:  STR.W           R4, [LR,R3,LSL#2]
21C9E4:  MOV             R4, R1
21C9E6:  ADD.W           R5, R3, R3,LSL#1
21C9EA:  VLD1.32         {D16-D17}, [R4]!
21C9EE:  VLDR            D18, [R4]
21C9F2:  ADD.W           R4, R12, R5,LSL#3
21C9F6:  MOV             R5, R4
21C9F8:  VST1.32         {D16-D17}, [R5]!
21C9FC:  VSTR            D18, [R5]
21CA00:  LDR             R5, [R2]
21CA02:  LDR             R6, [R2,#0x14]
21CA04:  ADD             R4, R5
21CA06:  STR             R6, [R4,#0xC]
21CA08:  LDR             R4, [R2,#0x10]
21CA0A:  STR             R4, [R1,R5]
21CA0C:  LDR             R2, [R2,#8]
21CA0E:  CMP.W           R3, #0xFFFFFFFF
21CA12:  BGT             loc_21C9D4
21CA14:  B               loc_21CA50
21CA16:  MOV             R4, R1
21CA18:  ADD.W           R5, R2, #0x50 ; 'P'
21CA1C:  VLD1.64         {D16-D17}, [R4]!
21CA20:  VLDR            D18, [R4]
21CA24:  VST1.32         {D16-D17}, [R5]
21CA28:  VSTR            D18, [R2,#0x60]
21CA2C:  ADD.W           R2, R3, R3,LSL#1
21CA30:  ADD.W           R5, R12, R2,LSL#3
21CA34:  LDR.W           R2, [LR,R3,LSL#2]
21CA38:  VLD1.32         {D16-D17}, [R5]!
21CA3C:  SUBS            R3, #1
21CA3E:  VLDR            D18, [R5]
21CA42:  VST1.64         {D16-D17}, [R1]
21CA46:  VSTR            D18, [R4]
21CA4A:  CMP.W           R3, #0xFFFFFFFF
21CA4E:  BGT             loc_21C9D4
21CA50:  ADD.W           SP, SP, #0x718
21CA54:  POP.W           {R11}
21CA58:  POP             {R4-R7,PC}
