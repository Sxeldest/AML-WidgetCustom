; =========================================================
; Game Engine Function: sub_17FE9E
; Address            : 0x17FE9E - 0x17FF4A
; =========================================================

17FE9E:  PUSH            {R4-R7,LR}
17FEA0:  ADD             R7, SP, #0xC
17FEA2:  PUSH.W          {R8,R9,R11}
17FEA6:  SUB             SP, SP, #0x20
17FEA8:  MOV             R4, R0
17FEAA:  LDR.W           R9, [R7,#arg_0]
17FEAE:  LDRB            R0, [R0,#4]
17FEB0:  CMP             R0, #0
17FEB2:  BEQ             loc_17FF42
17FEB4:  MOV             R8, R3
17FEB6:  MOV             R6, R2
17FEB8:  MOV             R5, R1
17FEBA:  BL              sub_17E2E4
17FEBE:  BL              sub_186FF8
17FEC2:  MOV             R0, R4
17FEC4:  BL              sub_17FF4A
17FEC8:  MOVS            R0, #1
17FECA:  STRB.W          R0, [R4,#0x96D]
17FECE:  CBNZ            R6, loc_17FEF6
17FED0:  CBNZ            R5, loc_17FEF6
17FED2:  CMP.W           R8, #0
17FED6:  IT EQ
17FED8:  CMPEQ.W         R9, #0
17FEDC:  BNE             loc_17FEF6
17FEDE:  MOVS            R0, #1
17FEE0:  STRB.W          R0, [R4,#0x96C]
17FEE4:  ADDW            R0, R4, #0x814
17FEE8:  ADD             SP, SP, #0x20 ; ' '
17FEEA:  POP.W           {R8,R9,R11}
17FEEE:  POP.W           {R4-R7,LR}
17FEF2:  B.W             sub_17FF90
17FEF6:  CBZ             R5, loc_17FF14
17FEF8:  CBZ             R6, loc_17FF14
17FEFA:  LDR             R0, [R5]
17FEFC:  STR.W           R0, [R4,#0x948]
17FF00:  ADDW            R0, R4, #0x94C
17FF04:  VLD1.8          {D16-D17}, [R6]!
17FF08:  VLD1.8          {D18-D19}, [R6]
17FF0C:  VST1.8          {D16-D17}, [R0]!
17FF10:  VST1.8          {D18-D19}, [R0]
17FF14:  CMP.W           R8, #0
17FF18:  IT NE
17FF1A:  CMPNE.W         R9, #0
17FF1E:  BEQ             loc_17FF3C
17FF20:  VLD1.8          {D16-D17}, [R9]
17FF24:  ADD             R1, SP, #0x38+var_28
17FF26:  ADDW            R0, R4, #0x814
17FF2A:  MOV             R2, SP
17FF2C:  VLD1.8          {D18-D19}, [R8]
17FF30:  VST1.64         {D18-D19}, [R1]
17FF34:  VST1.64         {D16-D17}, [R2,#0x38+var_38]
17FF38:  BL              sub_17FFBE
17FF3C:  MOVS            R0, #0
17FF3E:  STRB.W          R0, [R4,#0x96C]
17FF42:  ADD             SP, SP, #0x20 ; ' '
17FF44:  POP.W           {R8,R9,R11}
17FF48:  POP             {R4-R7,PC}
