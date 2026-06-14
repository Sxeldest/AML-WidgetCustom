; =========================================================
; Game Engine Function: sub_14BC7C
; Address            : 0x14BC7C - 0x14BCDE
; =========================================================

14BC7C:  PUSH            {R7,LR}
14BC7E:  MOV             R7, SP
14BC80:  SUB             SP, SP, #0x118
14BC82:  LDRD.W          R1, R0, [R0]; src
14BC86:  MOVS            R3, #0
14BC88:  ASRS            R2, R0, #0x1F
14BC8A:  ADD.W           R0, R0, R2,LSR#29
14BC8E:  MOVS            R2, #1
14BC90:  ADD.W           R2, R2, R0,ASR#3; size
14BC94:  MOV             R0, SP; int
14BC96:  BL              sub_17D4F2
14BC9A:  ADD             R1, SP, #0x120+var_C; int
14BC9C:  MOVS            R2, #0x20 ; ' '
14BC9E:  MOVS            R3, #1
14BCA0:  BL              sub_17D786
14BCA4:  LDR             R3, [SP,#0x120+var_C]
14BCA6:  LDR             R1, =(aAxl - 0x14BCAE); "AXL" ...
14BCA8:  LDR             R2, =(aToggleplayersp - 0x14BCB0); "TogglePlayerSpectating: %d" ...
14BCAA:  ADD             R1, PC; "AXL"
14BCAC:  ADD             R2, PC; "TogglePlayerSpectating: %d"
14BCAE:  MOVS            R0, #4; prio
14BCB0:  BLX             __android_log_print
14BCB4:  LDR             R0, =(off_23496C - 0x14BCC0)
14BCB6:  MOVW            R2, #0x13BC
14BCBA:  LDR             R1, [SP,#0x120+var_C]
14BCBC:  ADD             R0, PC; off_23496C
14BCBE:  LDR             R0, [R0]; dword_23DEF4
14BCC0:  LDR             R0, [R0]
14BCC2:  LDR.W           R0, [R0,#0x3B0]
14BCC6:  LDR             R0, [R0]
14BCC8:  LDR             R0, [R0,R2]
14BCCA:  CMP             R1, #0
14BCCC:  IT NE
14BCCE:  MOVNE           R1, #1
14BCD0:  BL              sub_13F01C
14BCD4:  MOV             R0, SP
14BCD6:  BL              sub_17D542
14BCDA:  ADD             SP, SP, #0x118
14BCDC:  POP             {R7,PC}
