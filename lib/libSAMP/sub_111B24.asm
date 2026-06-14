; =========================================================
; Game Engine Function: sub_111B24
; Address            : 0x111B24 - 0x111B94
; =========================================================

111B24:  PUSH            {R4,R5,R7,LR}
111B26:  ADD             R7, SP, #8
111B28:  SUB             SP, SP, #8
111B2A:  MOV             R5, R0
111B2C:  LDR             R0, [R0,#0x10]
111B2E:  CMP             R0, R1
111B30:  BEQ             loc_111B90
111B32:  MOV             R4, R1
111B34:  CMP             R1, #2
111B36:  BEQ             loc_111B6A
111B38:  CMP             R4, #1
111B3A:  BEQ             loc_111B56
111B3C:  CBNZ            R4, loc_111B8E
111B3E:  ADD.W           R0, R5, #0x14
111B42:  BL              sub_1630A8
111B46:  BL              sub_115004
111B4A:  MOVS            R1, #0
111B4C:  BL              sub_114E60
111B50:  VLDR            S0, =180.0
111B54:  B               loc_111B8A
111B56:  ADD.W           R0, R5, #0x14
111B5A:  BL              sub_1630A8
111B5E:  BL              sub_115004
111B62:  MOVS            R1, #1
111B64:  BL              sub_114E60
111B68:  B               loc_111B86
111B6A:  BL              sub_111BD4
111B6E:  MOV             R1, R0
111B70:  LDR             R2, =(aArzhudBgRadar - 0x111B76); "arzhud_bg_radar" ...
111B72:  ADD             R2, PC; "arzhud_bg_radar"
111B74:  ADD.W           R0, R5, #0x14
111B78:  BL              sub_163144
111B7C:  BL              sub_115004
111B80:  MOVS            R1, #1
111B82:  BL              sub_114E60
111B86:  VLDR            S0, =100.0
111B8A:  VSTR            S0, [R5,#0x2C]
111B8E:  STR             R4, [R5,#0x10]
111B90:  ADD             SP, SP, #8
111B92:  POP             {R4,R5,R7,PC}
