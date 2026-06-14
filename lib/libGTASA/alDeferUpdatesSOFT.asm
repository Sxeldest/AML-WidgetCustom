; =========================================================
; Game Engine Function: alDeferUpdatesSOFT
; Address            : 0x25DA80 - 0x25DBAC
; =========================================================

25DA80:  PUSH            {R4-R7,LR}
25DA82:  ADD             R7, SP, #0xC
25DA84:  PUSH.W          {R8-R11}
25DA88:  SUB             SP, SP, #4
25DA8A:  BLX             j_GetContextRef
25DA8E:  MOV             R4, R0
25DA90:  CMP             R4, #0
25DA92:  BEQ.W           loc_25DBA4
25DA96:  LDR             R0, [R4,#0x6C]
25DA98:  CMP             R0, #0
25DA9A:  BNE             loc_25DB94
25DA9C:  BLX             fegetround
25DAA0:  MOV             R9, R0
25DAA2:  MOVS            R0, #3; rounding_direction
25DAA4:  BLX             fesetround
25DAA8:  LDR.W           R0, [R4,#0x88]
25DAAC:  MOV             R1, #0x161AC
25DAB4:  LDR             R1, [R0,R1]
25DAB6:  LDR             R1, [R1,#0x2C]
25DAB8:  BLX             R1
25DABA:  MOVS            R0, #1
25DABC:  ADD.W           R1, R4, #0x54 ; 'T'
25DAC0:  STR             R0, [R4,#0x6C]
25DAC2:  MOVS            R2, #0
25DAC4:  DMB.W           ISH
25DAC8:  LDREX.W         R0, [R1]
25DACC:  STREX.W         R3, R2, [R1]
25DAD0:  CMP             R3, #0
25DAD2:  BNE             loc_25DAC8
25DAD4:  DMB.W           ISH
25DAD8:  LDR             R1, [R4,#0x74]
25DADA:  CBZ             R1, loc_25DB3E
25DADC:  LDR             R6, [R4,#0x70]
25DADE:  UXTB.W          R10, R0
25DAE2:  MOVW            R11, #0x1012
25DAE6:  MOV.W           R8, #0
25DAEA:  ADD.W           R5, R6, R1,LSL#2
25DAEE:  MOVW            R3, #0x5984
25DAF2:  LDR             R0, [R6]
25DAF4:  LDR.W           R1, [R0,#0x80]
25DAF8:  CMP             R1, R11
25DAFA:  BEQ             loc_25DB0E
25DAFC:  LDR             R0, [R4,#0x74]
25DAFE:  SUBS            R0, #1
25DB00:  STR             R0, [R4,#0x74]
25DB02:  LDR.W           R0, [R5,#-4]!
25DB06:  CMP             R6, R5
25DB08:  STR             R0, [R6]
25DB0A:  BNE             loc_25DAF4
25DB0C:  B               loc_25DB3E
25DB0E:  ADD.W           R0, R0, #0x5980
25DB12:  DMB.W           ISH
25DB16:  LDREX.W         R1, [R0]
25DB1A:  STREX.W         R2, R8, [R0]
25DB1E:  CMP             R2, #0
25DB20:  BNE             loc_25DB16
25DB22:  ORRS.W          R0, R1, R10
25DB26:  DMB.W           ISH
25DB2A:  BEQ             loc_25DB38
25DB2C:  LDR             R0, [R6]
25DB2E:  MOV             R1, R4
25DB30:  LDR             R2, [R0,R3]
25DB32:  BLX             R2
25DB34:  MOVW            R3, #0x5984
25DB38:  ADDS            R6, #4
25DB3A:  CMP             R6, R5
25DB3C:  BNE             loc_25DAF2
25DB3E:  LDR.W           R0, [R4,#0x80]
25DB42:  CBZ             R0, loc_25DB7C
25DB44:  LDR             R5, [R4,#0x7C]
25DB46:  MOVS            R6, #0
25DB48:  ADD.W           R8, R5, R0,LSL#2
25DB4C:  LDR             R0, [R5]
25DB4E:  DMB.W           ISH
25DB52:  ADDS            R0, #0xC0
25DB54:  LDREX.W         R1, [R0]
25DB58:  STREX.W         R2, R6, [R0]
25DB5C:  CMP             R2, #0
25DB5E:  BNE             loc_25DB54
25DB60:  CMP             R1, #0
25DB62:  DMB.W           ISH
25DB66:  BEQ             loc_25DB76
25DB68:  LDR             R2, [R5]
25DB6A:  LDR.W           R1, [R4,#0x88]
25DB6E:  LDR.W           R0, [R2,#0xC4]
25DB72:  LDR             R3, [R0,#8]
25DB74:  BLX             R3
25DB76:  ADDS            R5, #4
25DB78:  CMP             R5, R8
25DB7A:  BNE             loc_25DB4C
25DB7C:  LDR.W           R0, [R4,#0x88]
25DB80:  MOV             R1, #0x161AC
25DB88:  LDR             R1, [R0,R1]
25DB8A:  LDR             R1, [R1,#0x30]
25DB8C:  BLX             R1
25DB8E:  MOV             R0, R9; rounding_direction
25DB90:  BLX             fesetround
25DB94:  MOV             R0, R4
25DB96:  ADD             SP, SP, #4
25DB98:  POP.W           {R8-R11}
25DB9C:  POP.W           {R4-R7,LR}
25DBA0:  B.W             ALCcontext_DecRef
25DBA4:  ADD             SP, SP, #4
25DBA6:  POP.W           {R8-R11}
25DBAA:  POP             {R4-R7,PC}
