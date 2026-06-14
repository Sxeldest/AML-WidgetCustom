; =========================================================
; Game Engine Function: _ZN11CFileLoader8LoadLineEPPhRi
; Address            : 0x3EEF88 - 0x3EF00C
; =========================================================

3EEF88:  LDR             R2, [R1]
3EEF8A:  CMP             R2, #1
3EEF8C:  BLT             loc_3EEFDE
3EEF8E:  LDR.W           R12, [R0]
3EEF92:  LDRB.W          R2, [R12]
3EEF96:  CBZ             R2, loc_3EEFDE
3EEF98:  PUSH            {R4,R6,R7,LR}
3EEF9A:  ADD             R7, SP, #0x10+var_8
3EEF9C:  LDR             R3, =(PC_Scratch_ptr - 0x3EEFA6)
3EEF9E:  ADD.W           R12, R12, #1
3EEFA2:  ADD             R3, PC; PC_Scratch_ptr
3EEFA4:  LDR.W           LR, [R3]; PC_Scratch
3EEFA8:  B               loc_3EEFB0
3EEFAA:  LDRB.W          R2, [R12],#1
3EEFAE:  MOV             LR, R3
3EEFB0:  UXTB            R3, R2
3EEFB2:  CMP             R3, #0
3EEFB4:  IT NE
3EEFB6:  CMPNE           R3, #0xA
3EEFB8:  BEQ             loc_3EEFE2
3EEFBA:  CMP             R3, #0x2C ; ','
3EEFBC:  IT EQ
3EEFBE:  MOVEQ           R2, #0x20 ; ' '
3EEFC0:  CMP             R3, #0x20 ; ' '
3EEFC2:  IT CC
3EEFC4:  MOVCC           R2, #0x20 ; ' '
3EEFC6:  MOV             R3, LR
3EEFC8:  STRB.W          R2, [R3],#1
3EEFCC:  LDR             R2, [R1]
3EEFCE:  CMP             R2, #2
3EEFD0:  SUB.W           R4, R2, #1
3EEFD4:  STR             R4, [R1]
3EEFD6:  BGE             loc_3EEFAA
3EEFD8:  ADD.W           LR, LR, #1
3EEFDC:  B               loc_3EEFE6
3EEFDE:  MOVS            R0, #0
3EEFE0:  BX              LR
3EEFE2:  SUB.W           R12, R12, #1
3EEFE6:  LDR             R1, =(PC_Scratch_ptr - 0x3EEFF4)
3EEFE8:  ADD.W           R2, R12, #1
3EEFEC:  STR             R2, [R0]
3EEFEE:  MOVS            R0, #0
3EEFF0:  ADD             R1, PC; PC_Scratch_ptr
3EEFF2:  STRB.W          R0, [LR]
3EEFF6:  LDR             R1, [R1]; PC_Scratch
3EEFF8:  SUBS            R0, R1, #1
3EEFFA:  POP.W           {R4,R6,R7,LR}
3EEFFE:  LDRB.W          R1, [R0,#1]!
3EF002:  SUBS            R1, #1
3EF004:  UXTB            R1, R1
3EF006:  CMP             R1, #0x20 ; ' '
3EF008:  BCC             loc_3EEFFE
3EF00A:  BX              LR
