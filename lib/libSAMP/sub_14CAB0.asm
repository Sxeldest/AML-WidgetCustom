; =========================================================
; Game Engine Function: sub_14CAB0
; Address            : 0x14CAB0 - 0x14CAF8
; =========================================================

14CAB0:  PUSH            {R7,LR}
14CAB2:  MOV             R7, SP
14CAB4:  SUB             SP, SP, #0x118
14CAB6:  LDRD.W          R1, R0, [R0]; src
14CABA:  MOVS            R3, #0
14CABC:  ASRS            R2, R0, #0x1F
14CABE:  ADD.W           R0, R0, R2,LSR#29
14CAC2:  MOVS            R2, #1
14CAC4:  ADD.W           R2, R2, R0,ASR#3; size
14CAC8:  MOV             R0, SP; int
14CACA:  BL              sub_17D4F2
14CACE:  SUBS            R1, R7, #1; int
14CAD0:  MOVS            R2, #8
14CAD2:  MOVS            R3, #1
14CAD4:  BL              sub_17D786
14CAD8:  LDR             R0, =(off_234970 - 0x14CADE)
14CADA:  ADD             R0, PC; off_234970
14CADC:  LDR             R0, [R0]; dword_23DEF0
14CADE:  LDR             R0, [R0]
14CAE0:  BL              sub_E35A0
14CAE4:  LDRB.W          R1, [R7,#-1]
14CAE8:  MOVS            R2, #1
14CAEA:  BL              sub_105034
14CAEE:  MOV             R0, SP
14CAF0:  BL              sub_17D542
14CAF4:  ADD             SP, SP, #0x118
14CAF6:  POP             {R7,PC}
