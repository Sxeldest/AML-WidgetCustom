; =========================================================
; Game Engine Function: _ZN15ButtonContainerILi3EE6UpdateEb
; Address            : 0x27CB5C - 0x27CD48
; =========================================================

27CB5C:  PUSH            {R4-R7,LR}
27CB5E:  ADD             R7, SP, #0xC
27CB60:  PUSH.W          {R8-R11}
27CB64:  SUB             SP, SP, #4
27CB66:  MOV             R10, R0
27CB68:  MOVS            R3, #0
27CB6A:  LDR.W           R2, [R10,#0x68]
27CB6E:  LDR.W           R0, [R10]
27CB72:  STRD.W          R3, R2, [R10,#0x68]
27CB76:  ADDS            R2, R0, #1
27CB78:  CMP             R2, #2
27CB7A:  BCS             loc_27CB80
27CB7C:  MOVS            R0, #1
27CB7E:  B               loc_27CB86
27CB80:  CMP             R0, #2
27CB82:  BNE             loc_27CB8A
27CB84:  MOVS            R0, #3
27CB86:  STR.W           R0, [R10]
27CB8A:  LDRB.W          R0, [R10,#0x34]
27CB8E:  CMP             R0, #0
27CB90:  ITT NE
27CB92:  MOVNE           R0, #0
27CB94:  STRBNE.W        R0, [R10,#0x34]
27CB98:  LDR.W           R0, [R10,#4]
27CB9C:  ADDS            R2, R0, #1
27CB9E:  CMP             R2, #2
27CBA0:  BCS             loc_27CBA6
27CBA2:  MOVS            R0, #1
27CBA4:  B               loc_27CBAC
27CBA6:  CMP             R0, #2
27CBA8:  BNE             loc_27CBB0
27CBAA:  MOVS            R0, #3
27CBAC:  STR.W           R0, [R10,#4]
27CBB0:  LDRB.W          R0, [R10,#0x35]
27CBB4:  CMP             R0, #0
27CBB6:  ITT NE
27CBB8:  MOVNE           R0, #0
27CBBA:  STRBNE.W        R0, [R10,#0x35]
27CBBE:  LDR.W           R0, [R10,#8]
27CBC2:  ADDS            R2, R0, #1
27CBC4:  CMP             R2, #2
27CBC6:  BCS             loc_27CBCC
27CBC8:  MOVS            R0, #1
27CBCA:  B               loc_27CBD2
27CBCC:  CMP             R0, #2
27CBCE:  BNE             loc_27CBD6
27CBD0:  MOVS            R0, #3
27CBD2:  STR.W           R0, [R10,#8]
27CBD6:  LDRB.W          R0, [R10,#0x36]
27CBDA:  CMP             R0, #0
27CBDC:  ITT NE
27CBDE:  MOVNE           R0, #0
27CBE0:  STRBNE.W        R0, [R10,#0x36]
27CBE4:  CMP             R1, #0
27CBE6:  BEQ             loc_27CC02
27CBE8:  MOVS            R0, #0
27CBEA:  MOVS            R1, #1
27CBEC:  STR.W           R0, [R10,#0x28]
27CBF0:  STRH.W          R0, [R10,#0x34]
27CBF4:  STRB.W          R0, [R10,#0x36]
27CBF8:  STRD.W          R1, R1, [R10]
27CBFC:  STR.W           R1, [R10,#8]
27CC00:  B               loc_27CCFA
27CC02:  LDR.W           R3, [R10,#0x28]
27CC06:  CMP             R3, #0
27CC08:  BEQ             loc_27CCFA
27CC0A:  LDR             R0, =(windowSize_ptr - 0x27CC1A)
27CC0C:  MOVW            R12, #0x6667
27CC10:  MOVS            R2, #0
27CC12:  MOVT            R12, #0x6666
27CC16:  ADD             R0, PC; windowSize_ptr
27CC18:  MOV.W           R11, #0
27CC1C:  LDR.W           R8, [R0]; windowSize
27CC20:  LDR.W           R0, [R10,#0x2C]; dest
27CC24:  ADDS            R1, R0, R2; src
27CC26:  LDR.W           R9, [R0,R2]
27CC2A:  LDR             R6, [R1,#4]
27CC2C:  LDR.W           R4, [R10,R9,LSL#2]
27CC30:  CMP             R4, R6
27CC32:  BEQ             loc_27CCEC
27CC34:  CMP             R4, #1
27CC36:  IT EQ
27CC38:  CMPEQ           R6, #0
27CC3A:  BEQ             loc_27CCEC
27CC3C:  CMP             R4, #3
27CC3E:  BEQ             loc_27CC4C
27CC40:  ADDS            R5, R4, #1
27CC42:  CMP             R5, #2
27CC44:  BCC             loc_27CD16
27CC46:  CMP             R4, #2
27CC48:  BNE             loc_27CC50
27CC4A:  B               loc_27CD16
27CC4C:  CMP             R6, #2
27CC4E:  BEQ             loc_27CCEC
27CC50:  CMP             R6, #0
27CC52:  STR.W           R6, [R10,R9,LSL#2]
27CC56:  BNE             loc_27CCEC
27CC58:  LDR.W           R0, [R10,#0x2C]
27CC5C:  ADD.W           R1, R10, R9,LSL#3
27CC60:  VLDR            S2, [R10,#0x30]
27CC64:  ADD             R0, R2
27CC66:  VLDR            D17, [R1,#0x38]
27CC6A:  VLDR            D16, [R0,#0x10]
27CC6E:  ADD.W           R0, R1, #0x38 ; '8'
27CC72:  VSUB.F64        D17, D16, D17
27CC76:  VCVT.F32.F64    S0, D17
27CC7A:  VCMPE.F32       S2, S0
27CC7E:  VMRS            APSR_nzcv, FPSCR
27CC82:  BLE             loc_27CCD2
27CC84:  LDR.W           R1, [R8]
27CC88:  ADD.W           R4, R10, R9,LSL#2
27CC8C:  LDR.W           R5, [R10,#0xC]
27CC90:  SMMUL.W         R3, R1, R12
27CC94:  MOV             R1, R4
27CC96:  LDR.W           R6, [R1,#0x50]!
27CC9A:  SUBS            R6, R5, R6
27CC9C:  IT MI
27CC9E:  NEGMI           R6, R6
27CCA0:  MOV.W           LR, R3,ASR#2
27CCA4:  ADD.W           R3, LR, R3,LSR#31
27CCA8:  CMP             R6, R3
27CCAA:  BGE             loc_27CCD8
27CCAC:  LDR.W           R6, [R10,#0x10]
27CCB0:  LDR             R5, [R4,#0x5C]
27CCB2:  SUBS            R4, R6, R5
27CCB4:  IT MI
27CCB6:  NEGMI           R4, R4
27CCB8:  CMP             R4, R3
27CCBA:  BGE             loc_27CCD8
27CCBC:  ADD.W           R3, R10, R9
27CCC0:  MOVS            R6, #1
27CCC2:  STRB.W          R6, [R3,#0x34]
27CCC6:  LDR.W           R3, [R10,#0x2C]
27CCCA:  ADD             R3, R2
27CCCC:  VLDR            D16, [R3,#0x10]
27CCD0:  B               loc_27CCD8
27CCD2:  ADD.W           R1, R10, R9,LSL#2
27CCD6:  ADDS            R1, #0x50 ; 'P'
27CCD8:  VSTR            D16, [R0]
27CCDC:  LDR.W           R0, [R10,#0xC]
27CCE0:  STR             R0, [R1]
27CCE2:  ADD.W           R1, R10, R9,LSL#2
27CCE6:  LDR.W           R0, [R10,#0x10]
27CCEA:  STR             R0, [R1,#0x5C]
27CCEC:  LDR.W           R3, [R10,#0x28]
27CCF0:  ADD.W           R11, R11, #1
27CCF4:  ADDS            R2, #0x20 ; ' '
27CCF6:  CMP             R11, R3
27CCF8:  BCC             loc_27CC20
27CCFA:  ADD.W           R2, R10, #0x18
27CCFE:  MOVS            R3, #0
27CD00:  LDM             R2, {R0-R2}
27CD02:  STR.W           R3, [R10,#0x28]
27CD06:  ADD.W           R3, R10, #0xC
27CD0A:  STM             R3!, {R0-R2}
27CD0C:  MOVS            R0, #1
27CD0E:  ADD             SP, SP, #4
27CD10:  POP.W           {R8-R11}
27CD14:  POP             {R4-R7,PC}
27CD16:  LDR.W           R2, [R1,#-0x18]
27CD1A:  STR.W           R2, [R10,#0xC]
27CD1E:  LDR.W           R2, [R1,#-0x14]
27CD22:  STR.W           R2, [R10,#0x10]
27CD26:  LDR.W           R2, [R1,#-8]
27CD2A:  STR.W           R2, [R10,#0x14]
27CD2E:  SUB.W           R2, R3, R11
27CD32:  LSLS            R2, R2, #5; n
27CD34:  BLX             memmove
27CD38:  LDR.W           R0, [R10,#0x28]
27CD3C:  SUB.W           R0, R0, R11
27CD40:  STR.W           R0, [R10,#0x28]
27CD44:  MOVS            R0, #0
27CD46:  B               loc_27CD0E
