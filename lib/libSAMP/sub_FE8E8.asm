; =========================================================
; Game Engine Function: sub_FE8E8
; Address            : 0xFE8E8 - 0xFE960
; =========================================================

FE8E8:  PUSH            {R4-R7,LR}
FE8EA:  ADD             R7, SP, #0xC
FE8EC:  PUSH.W          {R11}
FE8F0:  SUB             SP, SP, #0x18
FE8F2:  MOV             R6, R0
FE8F4:  MOV             R0, R1; s
FE8F6:  MOV             R4, R1
FE8F8:  BLX             strlen
FE8FC:  LDR             R1, =(dword_25AE90 - 0xFE904)
FE8FE:  LSLS            R2, R0, #0x1D
FE900:  ADD             R1, PC; dword_25AE90
FE902:  STR             R0, [R1]
FE904:  BEQ             loc_FE916
FE906:  MOVS            R5, #8
FE908:  CMP             R0, R5
FE90A:  BLT             loc_FE91A
FE90C:  ADD.W           R2, R5, #8
FE910:  CMP             R5, #0x19
FE912:  MOV             R5, R2
FE914:  BCC             loc_FE908
FE916:  MOV             R5, R0
FE918:  B               loc_FE91C
FE91A:  STR             R5, [R1]
FE91C:  LDR             R1, [R4,#4]
FE91E:  MOVS            R3, #0
FE920:  LDR             R2, [R6]
FE922:  LDR             R0, [R4]
FE924:  STRB.W          R3, [SP,#0x28+var_18]
FE928:  STRD.W          R0, R1, [SP,#0x28+var_20]
FE92C:  LDR             R0, [R2]
FE92E:  LDR             R1, =(aAxl - 0xFE936); "AXL" ...
FE930:  LDRH            R3, [R0,#0x26]
FE932:  ADD             R1, PC; "AXL"
FE934:  LDR             R2, =(aCreateNumberpl - 0xFE942); "Create numberplate for model %d: %s[%d]" ...
FE936:  ADD             R0, SP, #0x28+var_20
FE938:  STRD.W          R0, R5, [SP,#0x28+var_28]
FE93C:  MOVS            R0, #4; prio
FE93E:  ADD             R2, PC; "Create numberplate for model %d: %s[%d]"
FE940:  BLX             __android_log_print
FE944:  LDR             R0, =(off_25AE98 - 0xFE94C)
FE946:  LDR             R1, [R6,#4]
FE948:  ADD             R0, PC; off_25AE98
FE94A:  LDR             R5, [R0]
FE94C:  LDR             R0, [R1]
FE94E:  BL              sub_16381E
FE952:  MOV             R1, R0
FE954:  MOV             R0, R4
FE956:  BLX             R5
FE958:  ADD             SP, SP, #0x18
FE95A:  POP.W           {R11}
FE95E:  POP             {R4-R7,PC}
