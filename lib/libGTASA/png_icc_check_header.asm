; =========================================================
; Game Engine Function: png_icc_check_header
; Address            : 0x1EFB20 - 0x1EFD12
; =========================================================

1EFB20:  PUSH            {R4-R7,LR}
1EFB22:  ADD             R7, SP, #0xC
1EFB24:  PUSH.W          {R8,R9,R11}
1EFB28:  SUB             SP, SP, #8
1EFB2A:  LDR.W           R9, [R7,#arg_0]
1EFB2E:  MOV             R6, R0
1EFB30:  MOV             R8, R2
1EFB32:  MOV             R5, R1
1EFB34:  LDR.W           R0, [R9]
1EFB38:  REV             R4, R0
1EFB3A:  CMP             R4, R3
1EFB3C:  BNE             loc_1EFB56
1EFB3E:  LSLS            R0, R3, #0x1E
1EFB40:  BEQ             loc_1EFB5A
1EFB42:  LDRB.W          R0, [R9,#8]
1EFB46:  CMP             R0, #4
1EFB48:  BCC             loc_1EFB5A
1EFB4A:  ADR             R0, aInvalidLength; "invalid length"
1EFB4C:  STR             R0, [SP,#0x20+var_20]
1EFB4E:  MOV             R0, R6
1EFB50:  MOV             R1, R5
1EFB52:  MOV             R2, R8
1EFB54:  B               loc_1EFB86
1EFB56:  ADR             R0, aLengthDoesNotM; "length does not match profile"
1EFB58:  B               loc_1EFB7C
1EFB5A:  LDR.W           R0, [R9,#0x80]
1EFB5E:  REV             R4, R0
1EFB60:  MOV             R0, #0x1555554A
1EFB68:  CMP             R4, R0
1EFB6A:  BHI             loc_1EFB7A
1EFB6C:  ADD.W           R0, R4, R4,LSL#1
1EFB70:  MOVS            R1, #0x84
1EFB72:  ADD.W           R0, R1, R0,LSL#2
1EFB76:  CMP             R0, R3
1EFB78:  BLS             loc_1EFB94
1EFB7A:  ADR             R0, aTagCountTooLar; "tag count too large"
1EFB7C:  STR             R0, [SP,#0x20+var_20]
1EFB7E:  MOV             R0, R6
1EFB80:  MOV             R1, R5
1EFB82:  MOV             R2, R8
1EFB84:  MOV             R3, R4
1EFB86:  BL              sub_1EF844
1EFB8A:  MOVS            R0, #0
1EFB8C:  ADD             SP, SP, #8
1EFB8E:  POP.W           {R8,R9,R11}
1EFB92:  POP             {R4-R7,PC}
1EFB94:  LDR.W           R0, [R9,#0x40]
1EFB98:  REV             R3, R0
1EFB9A:  MOVW            R0, #0xFFFF
1EFB9E:  CMP             R3, R0
1EFBA0:  BCC             loc_1EFBA8
1EFBA2:  LDR             R0, =(aInvalidRenderi - 0x1EFBA8); "invalid rendering intent"
1EFBA4:  ADD             R0, PC; "invalid rendering intent"
1EFBA6:  B               loc_1EFB4C
1EFBA8:  CMP             R3, #4
1EFBAA:  BCC             loc_1EFBBA
1EFBAC:  ADR             R0, aIntentOutsideD; "intent outside defined range"
1EFBAE:  STR             R0, [SP,#0x20+var_20]
1EFBB0:  MOV             R0, R6
1EFBB2:  MOVS            R1, #0
1EFBB4:  MOV             R2, R8
1EFBB6:  BL              sub_1EF844
1EFBBA:  LDR.W           R0, [R9,#0x24]
1EFBBE:  REV             R3, R0
1EFBC0:  MOV             R0, #0x61637370
1EFBC8:  CMP             R3, R0
1EFBCA:  BNE             loc_1EFC1E
1EFBCC:  LDR             R1, =(unk_5EDDC8 - 0x1EFBD8)
1EFBCE:  ADD.W           R0, R9, #0x44 ; 'D'; void *
1EFBD2:  MOVS            R2, #0xC; size_t
1EFBD4:  ADD             R1, PC; unk_5EDDC8 ; void *
1EFBD6:  BLX             memcmp
1EFBDA:  CBZ             R0, loc_1EFBEC
1EFBDC:  ADR             R0, aPcsIlluminantI; "PCS illuminant is not D50"
1EFBDE:  STR             R0, [SP,#0x20+var_20]
1EFBE0:  MOV             R0, R6
1EFBE2:  MOVS            R1, #0
1EFBE4:  MOV             R2, R8
1EFBE6:  MOVS            R3, #0
1EFBE8:  BL              sub_1EF844
1EFBEC:  LDR.W           R1, [R9,#0x10]
1EFBF0:  LDR             R0, [R7,#arg_4]
1EFBF2:  REV             R3, R1
1EFBF4:  MOV             R1, #0x47524159
1EFBFC:  CMP             R3, R1
1EFBFE:  BEQ             loc_1EFC22
1EFC00:  MOV             R1, #0x52474220
1EFC08:  CMP             R3, R1
1EFC0A:  BNE             loc_1EFC5E
1EFC0C:  LSLS            R0, R0, #0x1E
1EFC0E:  BMI             loc_1EFC26
1EFC10:  LDR             R0, =(aRgbColorSpaceN - 0x1EFC1E); "RGB color space not permitted on graysc"...
1EFC12:  MOV             R3, #0x52474220
1EFC1A:  ADD             R0, PC; "RGB color space not permitted on graysc"...
1EFC1C:  B               loc_1EFB4C
1EFC1E:  ADR             R0, aInvalidSignatu; "invalid signature"
1EFC20:  B               loc_1EFB4C
1EFC22:  LSLS            R0, R0, #0x1E
1EFC24:  BMI             loc_1EFC64
1EFC26:  LDR.W           R0, [R9,#0xC]
1EFC2A:  REV             R3, R0
1EFC2C:  MOV             R0, #0x6E6D636B
1EFC34:  CMP             R3, R0
1EFC36:  BLE             loc_1EFC72
1EFC38:  MOV             R0, #0x73636E71
1EFC40:  CMP             R3, R0
1EFC42:  BGT             loc_1EFC98
1EFC44:  MOV             R0, #0x6E6D636C
1EFC4C:  CMP             R3, R0
1EFC4E:  BEQ             loc_1EFCB6
1EFC50:  MOV             R0, #0x70727472
1EFC58:  CMP             R3, R0
1EFC5A:  BEQ             loc_1EFCCE
1EFC5C:  B               loc_1EFCB0
1EFC5E:  LDR             R0, =(aInvalidIccProf - 0x1EFC64); "invalid ICC profile color space"
1EFC60:  ADD             R0, PC; "invalid ICC profile color space"
1EFC62:  B               loc_1EFB4C
1EFC64:  LDR             R0, =(aGrayColorSpace - 0x1EFC72); "Gray color space not permitted on RGB P"...
1EFC66:  MOV             R3, #0x47524159
1EFC6E:  ADD             R0, PC; "Gray color space not permitted on RGB P"...
1EFC70:  B               loc_1EFB4C
1EFC72:  MOV             R0, #0x61627374
1EFC7A:  CMP             R3, R0
1EFC7C:  BEQ             loc_1EFCF6
1EFC7E:  MOV             R0, #0x6C696E6B
1EFC86:  CMP             R3, R0
1EFC88:  BEQ             loc_1EFD04
1EFC8A:  MOV             R0, #0x6D6E7472
1EFC92:  CMP             R3, R0
1EFC94:  BEQ             loc_1EFCCE
1EFC96:  B               loc_1EFCB0
1EFC98:  MOV             R0, #0x73636E72
1EFCA0:  CMP             R3, R0
1EFCA2:  BEQ             loc_1EFCCE
1EFCA4:  MOV             R0, #0x73706163
1EFCAC:  CMP             R3, R0
1EFCAE:  BEQ             loc_1EFCCE
1EFCB0:  LDR             R0, =(aUnrecognizedIc - 0x1EFCB6); "unrecognized ICC profile class"
1EFCB2:  ADD             R0, PC; "unrecognized ICC profile class"
1EFCB4:  B               loc_1EFCC2
1EFCB6:  LDR             R0, =(aUnexpectedName - 0x1EFCC4); "unexpected NamedColor ICC profile class"
1EFCB8:  MOV             R3, #0x6E6D636C
1EFCC0:  ADD             R0, PC; "unexpected NamedColor ICC profile class"
1EFCC2:  STR             R0, [SP,#0x20+var_20]
1EFCC4:  MOV             R0, R6
1EFCC6:  MOVS            R1, #0
1EFCC8:  MOV             R2, R8
1EFCCA:  BL              sub_1EF844
1EFCCE:  LDR.W           R0, [R9,#0x14]
1EFCD2:  MOV             R1, #0x4C616220
1EFCDA:  REV             R3, R0
1EFCDC:  MOVS            R0, #1
1EFCDE:  CMP             R3, R1
1EFCE0:  ITTT NE
1EFCE2:  MOVWNE          R1, #0x5A20
1EFCE6:  MOVTNE          R1, #0x5859
1EFCEA:  CMPNE           R3, R1
1EFCEC:  BEQ.W           loc_1EFB8C
1EFCF0:  LDR             R0, =(aUnexpectedIccP - 0x1EFCF6); "unexpected ICC PCS encoding"
1EFCF2:  ADD             R0, PC; "unexpected ICC PCS encoding"
1EFCF4:  B               loc_1EFB4C
1EFCF6:  LDR             R0, =(aInvalidEmbedde - 0x1EFD04); "invalid embedded Abstract ICC profile"
1EFCF8:  MOV             R3, #0x61627374
1EFD00:  ADD             R0, PC; "invalid embedded Abstract ICC profile"
1EFD02:  B               loc_1EFB4C
1EFD04:  LDR             R0, =(aUnexpectedDevi - 0x1EFD12); "unexpected DeviceLink ICC profile class"
1EFD06:  MOV             R3, #0x6C696E6B
1EFD0E:  ADD             R0, PC; "unexpected DeviceLink ICC profile class"
1EFD10:  B               loc_1EFB4C
