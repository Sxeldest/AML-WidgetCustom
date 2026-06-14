; =========================================================
; Game Engine Function: alIsBufferFormatSupportedSOFT
; Address            : 0x1D5F10 - 0x1D5F88
; =========================================================

1D5F10:  PUSH            {R4,R10,R11,LR}
1D5F14:  ADD             R11, SP, #8
1D5F18:  MOV             R4, R0
1D5F1C:  BL              j_GetContextRef
1D5F20:  CMP             R0, #0
1D5F24:  BEQ             loc_1D5F5C
1D5F28:  MOVW            R1, #0x1204
1D5F2C:  SUB             R1, R4, R1
1D5F30:  CMP             R1, #0xF
1D5F34:  BCC             loc_1D5F78
1D5F38:  SUB             R1, R4, #4
1D5F3C:  SUB             R1, R1, #0x10000
1D5F40:  CMP             R1, #0xD
1D5F44:  BLS             loc_1D5F68
1D5F48:  SUB             R1, R4, #0x1100
1D5F4C:  CMP             R1, #4
1D5F50:  BCC             loc_1D5F78
1D5F54:  MOV             R4, #0
1D5F58:  B               loc_1D5F7C
1D5F5C:  MOV             R4, #0
1D5F60:  MOV             R0, R4
1D5F64:  POP             {R4,R10,R11,PC}
1D5F68:  MOV             R2, #1
1D5F6C:  MOVW            R3, #0x3003
1D5F70:  TST             R3, R2,LSL R1
1D5F74:  BEQ             loc_1D5F48
1D5F78:  MOV             R4, #1
1D5F7C:  BL              j_ALCcontext_DecRef
1D5F80:  MOV             R0, R4
1D5F84:  POP             {R4,R10,R11,PC}
