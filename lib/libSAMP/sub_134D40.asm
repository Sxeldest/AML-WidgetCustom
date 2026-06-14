; =========================================================
; Game Engine Function: sub_134D40
; Address            : 0x134D40 - 0x134DD0
; =========================================================

134D40:  PUSH            {R4,R6,R7,LR}
134D42:  ADD             R7, SP, #8
134D44:  SUB             SP, SP, #8
134D46:  MOV             R4, R0
134D48:  LDR             R0, [R0,#0x5C]
134D4A:  VMOV.F32        Q8, #1.0
134D4E:  MOV.W           R12, #0
134D52:  ADR             R2, dword_134DD0
134D54:  LDR             R0, [R0,#0x70]
134D56:  VLD1.64         {D18-D19}, [R2]
134D5A:  MOVS            R2, #1
134D5C:  LDR             R1, [R0,#0x54]
134D5E:  STRB.W          R12, [R0,#0x70]
134D62:  ADD.W           R0, R1, #0x60 ; '`'
134D66:  VST1.32         {D16-D17}, [R0]
134D6A:  LDR             R0, [R4,#0x60]
134D6C:  LDR             R1, [R0,#0x6C]
134D6E:  LDR             R3, [R1,#0x54]
134D70:  STRB.W          R2, [R1,#0x70]
134D74:  ADD.W           R1, R3, #0x60 ; '`'
134D78:  MOVS            R3, #0
134D7A:  VST1.32         {D18-D19}, [R1]
134D7E:  LDR             R1, [R0,#0x70]
134D80:  LDR             R2, [R1,#0x54]
134D82:  STRB.W          R12, [R1,#0x70]
134D86:  ADD.W           R1, R2, #0x60 ; '`'
134D8A:  MOVS            R2, #0
134D8C:  VST1.32         {D16-D17}, [R1]
134D90:  LDR             R0, [R0,#0x74]
134D92:  LDR             R1, [R0,#0x54]
134D94:  STRB.W          R12, [R0,#0x70]
134D98:  ADD.W           R0, R1, #0x60 ; '`'
134D9C:  MOVS            R1, #0
134D9E:  VST1.32         {D16-D17}, [R0]
134DA2:  LDR             R0, [R4,#0x64]
134DA4:  STR.W           R12, [SP,#0x10+var_10]
134DA8:  BL              sub_1357D0
134DAC:  MOVW            R2, #0xCCCD
134DB0:  LDR             R1, [R4,#0x54]
134DB2:  LDR             R0, [R4,#0x64]
134DB4:  MOVT            R2, #0x3DCC
134DB8:  STR             R2, [SP,#0x10+var_10]
134DBA:  ADDS            R2, R1, #4
134DBC:  ADD.W           R3, R1, #8
134DC0:  BL              sub_1357D0
134DC4:  MOV             R0, R4
134DC6:  ADD             SP, SP, #8
134DC8:  POP.W           {R4,R6,R7,LR}
134DCC:  B.W             sub_134E26
