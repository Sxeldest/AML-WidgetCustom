; =========================================================
; Game Engine Function: sub_21BB48
; Address            : 0x21BB48 - 0x21BD3A
; =========================================================

21BB48:  PUSH            {R4-R7,LR}
21BB4A:  ADD             R7, SP, #0xC
21BB4C:  PUSH.W          {R8-R11}
21BB50:  SUB             SP, SP, #0x24
21BB52:  MOV             R8, R0
21BB54:  MOVW            R0, #0xAAAB
21BB58:  LDRD.W          R4, R9, [R8]
21BB5C:  MOVT            R0, #0xAAAA
21BB60:  UMULL.W         R0, R6, R9, R0
21BB64:  CMP.W           R9, #0
21BB68:  BEQ             loc_21BBD4
21BB6A:  CMP.W           R9, #4
21BB6E:  BCC             loc_21BBBA
21BB70:  BIC.W           R0, R9, #3
21BB74:  CBZ             R0, loc_21BBBA
21BB76:  VMOV.I32        Q8, #0
21BB7A:  ADD             R1, SP, #0x40+var_28
21BB7C:  MOV             R12, R6
21BB7E:  MOV             R2, R0
21BB80:  MOV             R3, R4
21BB82:  LDR             R5, [R3,#4]
21BB84:  SUBS            R2, #4
21BB86:  LDR             R6, [R3]
21BB88:  ADD.W           R3, R3, #8
21BB8C:  STRD.W          R6, R5, [SP,#0x40+var_28]
21BB90:  VLD1.16         {D18}, [R1@64]
21BB94:  VMOVL.U16       Q9, D18
21BB98:  VORR            Q8, Q8, Q9
21BB9C:  BNE             loc_21BB82
21BB9E:  VEXT.8          Q9, Q8, Q8, #8
21BBA2:  CMP             R9, R0
21BBA4:  MOV             R6, R12
21BBA6:  VORR            Q8, Q8, Q9
21BBAA:  VDUP.32         Q9, D16[1]
21BBAE:  VORR            Q8, Q8, Q9
21BBB2:  VMOV.32         R1, D16[0]
21BBB6:  BNE             loc_21BBBE
21BBB8:  B               loc_21BBCC
21BBBA:  MOVS            R1, #0
21BBBC:  MOVS            R0, #0
21BBBE:  LDRH.W          R2, [R4,R0,LSL#1]
21BBC2:  ADDS            R0, #1
21BBC4:  CMP             R0, R9
21BBC6:  ORR.W           R1, R1, R2
21BBCA:  BCC             loc_21BBBE
21BBCC:  ADD.W           R0, R1, #0x1F
21BBD0:  LSRS            R5, R0, #3
21BBD2:  B               loc_21BBD6
21BBD4:  MOVS            R5, #3
21BBD6:  LDR             R0, =(RwEngineInstance_ptr - 0x21BBDC)
21BBD8:  ADD             R0, PC; RwEngineInstance_ptr
21BBDA:  LDR             R0, [R0]; RwEngineInstance
21BBDC:  LDR             R0, [R0]
21BBDE:  LDR.W           R1, [R0,#0x12C]
21BBE2:  MOV             R0, R5
21BBE4:  BLX             R1
21BBE6:  MOV             R11, R0
21BBE8:  CMP.W           R11, #0
21BBEC:  BEQ.W           loc_21BD30
21BBF0:  LDR             R0, =(RwEngineInstance_ptr - 0x21BBF8)
21BBF2:  STR             R5, [SP,#0x40+var_30]
21BBF4:  ADD             R0, PC; RwEngineInstance_ptr
21BBF6:  LDR.W           R1, [R8,#4]
21BBFA:  LDR             R0, [R0]; RwEngineInstance
21BBFC:  MOV.W           R10, R1,LSL#1
21BC00:  LDR             R0, [R0]
21BC02:  LDR.W           R2, [R0,#0x12C]
21BC06:  MOV             R0, R10
21BC08:  BLX             R2
21BC0A:  CMP             R0, #0
21BC0C:  BEQ.W           loc_21BD20
21BC10:  MOV             R5, R4
21BC12:  MOV             R2, R10; size_t
21BC14:  MOV             R1, R5; void *
21BC16:  STRD.W          R8, R0, [SP,#0x40+var_3C]
21BC1A:  BLX             memcpy_1
21BC1E:  MOV             LR, R5
21BC20:  CMP.W           R9, #3
21BC24:  BCC             loc_21BD0C
21BC26:  LDR             R0, [SP,#0x40+var_38]
21BC28:  MOV.W           R9, R6,LSR#1
21BC2C:  MOVW            R8, #0xFFFF
21BC30:  MOV.W           R10, #1
21BC34:  ADDS            R0, #2
21BC36:  STR             R0, [SP,#0x40+var_34]
21BC38:  MOVS            R0, #0
21BC3A:  STR             R0, [SP,#0x40+var_2C]
21BC3C:  LDR             R1, [SP,#0x40+var_30]
21BC3E:  CBZ             R1, loc_21BC4A
21BC40:  MOV             R0, R11
21BC42:  MOV             R4, LR
21BC44:  BLX             j___aeabi_memclr8_1
21BC48:  MOV             LR, R4
21BC4A:  LDR             R1, [SP,#0x40+var_34]
21BC4C:  MOVS            R0, #0
21BC4E:  LDRH.W          R3, [R1,#-2]
21BC52:  LDRH            R6, [R1]
21BC54:  LDRH            R2, [R1,#2]
21BC56:  AND.W           R5, R6, R3
21BC5A:  ANDS            R5, R2
21BC5C:  CMP             R5, R8
21BC5E:  BEQ             loc_21BCFE
21BC60:  MOV.W           R12, R3,LSR#5
21BC64:  AND.W           R4, R3, #0x1F
21BC68:  LDR.W           R5, [R11,R12,LSL#2]
21BC6C:  LSL.W           R4, R10, R4
21BC70:  TST             R5, R4
21BC72:  BNE             loc_21BCFE
21BC74:  UBFX.W          R3, R6, #5, #0xB
21BC78:  AND.W           R6, R6, #0x1F
21BC7C:  LDR.W           R3, [R11,R3,LSL#2]
21BC80:  LSL.W           R6, R10, R6
21BC84:  TST             R3, R6
21BC86:  BNE             loc_21BCFE
21BC88:  UBFX.W          R3, R2, #5, #0xB
21BC8C:  AND.W           R2, R2, #0x1F
21BC90:  LDR.W           R3, [R11,R3,LSL#2]
21BC94:  LSL.W           R2, R10, R2
21BC98:  TST             R3, R2
21BC9A:  BNE             loc_21BCFE
21BC9C:  ORR.W           R2, R5, R4
21BCA0:  STR.W           R2, [R11,R12,LSL#2]
21BCA4:  LDRH            R2, [R1]
21BCA6:  AND.W           R3, R2, #0x1F
21BCAA:  UBFX.W          R2, R2, #5, #0xB
21BCAE:  LSL.W           R3, R10, R3
21BCB2:  LDR.W           R6, [R11,R2,LSL#2]
21BCB6:  ORRS            R3, R6
21BCB8:  STR.W           R3, [R11,R2,LSL#2]
21BCBC:  LDRH            R2, [R1,#2]
21BCBE:  UBFX.W          R3, R2, #5, #0xB
21BCC2:  AND.W           R2, R2, #0x1F
21BCC6:  LDR.W           R6, [R11,R3,LSL#2]
21BCCA:  LSL.W           R2, R10, R2
21BCCE:  ORRS            R2, R6
21BCD0:  STR.W           R2, [R11,R3,LSL#2]
21BCD4:  LDRH.W          R2, [R1,#-2]
21BCD8:  STRH.W          R2, [LR]
21BCDC:  LDRH            R2, [R1]
21BCDE:  STRH.W          R2, [LR,#2]
21BCE2:  LDRH            R2, [R1,#2]
21BCE4:  STRH.W          R2, [LR,#4]
21BCE8:  ADD.W           LR, LR, #6
21BCEC:  STRH.W          R8, [R1]
21BCF0:  STRH.W          R8, [R1,#2]
21BCF4:  STRH.W          R8, [R1,#-2]
21BCF8:  LDR             R2, [SP,#0x40+var_2C]
21BCFA:  ADDS            R2, #1
21BCFC:  STR             R2, [SP,#0x40+var_2C]
21BCFE:  ADDS            R0, #1
21BD00:  ADDS            R1, #6
21BD02:  CMP             R0, R9
21BD04:  BCC             loc_21BC4E
21BD06:  LDR             R0, [SP,#0x40+var_2C]
21BD08:  CMP             R0, R9
21BD0A:  BCC             loc_21BC3C
21BD0C:  LDR             R0, =(RwEngineInstance_ptr - 0x21BD12)
21BD0E:  ADD             R0, PC; RwEngineInstance_ptr
21BD10:  LDR             R0, [R0]; RwEngineInstance
21BD12:  LDR             R0, [R0]
21BD14:  LDR.W           R1, [R0,#0x130]
21BD18:  LDR             R0, [SP,#0x40+var_38]
21BD1A:  BLX             R1
21BD1C:  LDR.W           R8, [SP,#0x40+var_3C]
21BD20:  LDR             R0, =(RwEngineInstance_ptr - 0x21BD26)
21BD22:  ADD             R0, PC; RwEngineInstance_ptr
21BD24:  LDR             R0, [R0]; RwEngineInstance
21BD26:  LDR             R0, [R0]
21BD28:  LDR.W           R1, [R0,#0x130]
21BD2C:  MOV             R0, R11
21BD2E:  BLX             R1
21BD30:  MOV             R0, R8
21BD32:  ADD             SP, SP, #0x24 ; '$'
21BD34:  POP.W           {R8-R11}
21BD38:  POP             {R4-R7,PC}
