; =========================================================
; Game Engine Function: sub_109D28
; Address            : 0x109D28 - 0x109DF4
; =========================================================

109D28:  PUSH            {R4-R7,LR}
109D2A:  ADD             R7, SP, #0xC
109D2C:  PUSH.W          {R8-R11}
109D30:  SUB             SP, SP, #4
109D32:  VMOV.I32        Q8, #0
109D36:  MOV             R4, R0
109D38:  ADDS            R0, #0x29 ; ')'
109D3A:  MOV             R5, R1
109D3C:  VST1.8          {D16-D17}, [R0]!
109D40:  VST1.8          {D16-D17}, [R0]
109D44:  MOV             R0, R1; s
109D46:  BLX             strlen
109D4A:  CMP             R0, #1
109D4C:  BLT             loc_109DEC
109D4E:  LDR             R1, =(off_23496C - 0x109D5C)
109D50:  SUB.W           R10, R0, #7
109D54:  MOV             R8, R0
109D56:  MOVS            R0, #0
109D58:  ADD             R1, PC; off_23496C
109D5A:  MOVW            R3, #0xEA60
109D5E:  MOVS            R6, #0
109D60:  LDR.W           R9, [R1]; dword_23DEF4
109D64:  CMP             R0, R10
109D66:  BGT             loc_109D82
109D68:  LDRB            R1, [R5,R0]
109D6A:  CMP             R1, #0x7B ; '{'
109D6C:  BNE             loc_109D82
109D6E:  ADD.W           R11, R0, #7
109D72:  LDRB.W          R1, [R5,R11]
109D76:  CMP             R1, #0x7D ; '}'
109D78:  BNE             loc_109D82
109D7A:  CMP             R0, R10
109D7C:  BNE             loc_109D9C
109D7E:  MOV             R11, R10
109D80:  B               loc_109D92
109D82:  CMP             R6, #0x1F
109D84:  BEQ             loc_109DE6
109D86:  ADDS            R2, R4, R6
109D88:  LDRB            R1, [R5,R0]
109D8A:  ADDS            R6, #1
109D8C:  MOV             R11, R0
109D8E:  STRB.W          R1, [R2,#0x29]
109D92:  ADD.W           R0, R11, #1
109D96:  CMP             R0, R8
109D98:  BLT             loc_109D64
109D9A:  B               loc_109DEC
109D9C:  LDR.W           R0, [R9]
109DA0:  LDR.W           R0, [R0,#0x3B0]
109DA4:  LDR             R2, [R0,#4]
109DA6:  CMP             R2, #0
109DA8:  BEQ             loc_109D92
109DAA:  ADDS            R1, R2, R3
109DAC:  LDRD.W          R0, R1, [R1]
109DB0:  CMP             R0, R1
109DB2:  BEQ             loc_109DC6
109DB4:  LDR             R3, [R0]
109DB6:  LDR.W           R3, [R2,R3,LSL#2]
109DBA:  CMP             R3, R4
109DBC:  BEQ             loc_109DC6
109DBE:  ADDS            R0, #4
109DC0:  CMP             R0, R1
109DC2:  BNE             loc_109DB4
109DC4:  B               loc_109DCE
109DC6:  CMP             R0, R1
109DC8:  BEQ             loc_109DCE
109DCA:  LDRH            R3, [R0]
109DCC:  B               loc_109DD2
109DCE:  MOVW            R3, #0xFFFF
109DD2:  LDR             R1, =(aAxl - 0x109DDC); "AXL" ...
109DD4:  MOVS            R0, #5; prio
109DD6:  LDR             R2, =(aSkipColortagIn - 0x109DDE); "Skip colortag in numberplate for vehicl"... ...
109DD8:  ADD             R1, PC; "AXL"
109DDA:  ADD             R2, PC; "Skip colortag in numberplate for vehicl"...
109DDC:  BLX             __android_log_print
109DE0:  MOVW            R3, #0xEA60
109DE4:  B               loc_109D92
109DE6:  MOVS            R0, #0
109DE8:  STRB.W          R0, [R4,#0x48]
109DEC:  ADD             SP, SP, #4
109DEE:  POP.W           {R8-R11}
109DF2:  POP             {R4-R7,PC}
