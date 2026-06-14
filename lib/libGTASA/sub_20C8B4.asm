; =========================================================
; Game Engine Function: sub_20C8B4
; Address            : 0x20C8B4 - 0x20CC92
; =========================================================

20C8B4:  PUSH            {R4-R7,LR}
20C8B6:  ADD             R7, SP, #0xC
20C8B8:  PUSH.W          {R8-R10}
20C8BC:  ADR.W           R10, dword_20CC94
20C8C0:  MOV             R4, R0
20C8C2:  MOV.W           R9, #0
20C8C6:  MOV.W           R8, #1
20C8CA:  MOVS            R6, #0
20C8CC:  B               loc_20C8D0
20C8CE:  ADDS            R6, #1
20C8D0:  LDR             R0, [R4,#0x3C]
20C8D2:  CBZ             R0, loc_20C8DE
20C8D4:  MOV.W           R5, #0xFFFFFFFF
20C8D8:  CMP             R6, #1
20C8DA:  BLS             loc_20C914
20C8DC:  B               loc_20C936
20C8DE:  LDR             R0, [R4,#4]
20C8E0:  CBZ             R0, loc_20C8E6
20C8E2:  LDR             R1, [R4]
20C8E4:  B               loc_20C906
20C8E6:  BLX             __errno
20C8EA:  STR.W           R9, [R0]
20C8EE:  MOVS            R1, #1; size
20C8F0:  LDRD.W          R3, R0, [R4,#0x40]; stream
20C8F4:  MOV.W           R2, #0x4000; n
20C8F8:  BLX             fread
20C8FC:  CMP             R0, #0
20C8FE:  STR             R0, [R4,#4]
20C900:  BEQ             loc_20C91E
20C902:  LDR             R1, [R4,#0x44]
20C904:  STR             R1, [R4]
20C906:  SUBS            R0, #1
20C908:  ADDS            R2, R1, #1
20C90A:  STRD.W          R2, R0, [R4]
20C90E:  LDRB            R5, [R1]
20C910:  CMP             R6, #1
20C912:  BHI             loc_20C936
20C914:  LDR.W           R0, [R10,R6,LSL#2]
20C918:  CMP             R5, R0
20C91A:  BEQ             loc_20C8CE
20C91C:  B               loc_20C940
20C91E:  LDR             R0, [R4,#0x40]; stream
20C920:  STR.W           R8, [R4,#0x3C]
20C924:  BLX             ferror
20C928:  MOV.W           R5, #0xFFFFFFFF
20C92C:  CMP             R0, #0
20C92E:  IT NE
20C930:  STRNE           R5, [R4,#0x38]
20C932:  CMP             R6, #1
20C934:  BLS             loc_20C914
20C936:  LDR             R0, [R4,#0x3C]
20C938:  CBZ             R0, loc_20C978
20C93A:  MOV             R1, #0xFFFFFFFD
20C93E:  B               loc_20C970
20C940:  CMP             R6, #0
20C942:  ITTTT NE
20C944:  LDRDNE.W        R0, R1, [R4]
20C948:  ADDNE           R1, #1
20C94A:  SUBNE           R0, #1
20C94C:  STRDNE.W        R0, R1, [R4]
20C950:  ADDS            R0, R5, #1
20C952:  ITTTT NE
20C954:  LDRDNE.W        R0, R1, [R4]
20C958:  MOVNE           R2, #1
20C95A:  STRNE           R2, [R4,#0x58]
20C95C:  ADDNE           R1, #1
20C95E:  ITT NE
20C960:  SUBNE           R0, #1
20C962:  STRDNE.W        R0, R1, [R4]
20C966:  MOVS            R1, #0
20C968:  LDR             R0, [R4,#4]
20C96A:  CMP             R0, #0
20C96C:  IT EQ
20C96E:  MOVEQ           R1, #1
20C970:  STR             R1, [R4,#0x38]
20C972:  POP.W           {R8-R10}
20C976:  POP             {R4-R7,PC}
20C978:  LDR             R0, [R4,#4]
20C97A:  CBZ             R0, loc_20C980
20C97C:  LDR             R2, [R4]
20C97E:  B               loc_20C9A2
20C980:  BLX             __errno
20C984:  MOVS            R1, #0
20C986:  MOV.W           R2, #0x4000; n
20C98A:  STR             R1, [R0]
20C98C:  MOVS            R1, #1; size
20C98E:  LDRD.W          R3, R0, [R4,#0x40]; stream
20C992:  MOVS            R6, #1
20C994:  BLX             fread
20C998:  CMP             R0, #0
20C99A:  STR             R0, [R4,#4]
20C99C:  BEQ             loc_20CA34
20C99E:  LDR             R2, [R4,#0x44]
20C9A0:  STR             R2, [R4]
20C9A2:  SUBS            R0, #1
20C9A4:  ADDS            R1, R2, #1
20C9A6:  CMP             R5, #8
20C9A8:  STRD.W          R1, R0, [R4]
20C9AC:  MOV             R1, #0xFFFFFFFD
20C9B0:  ITT EQ
20C9B2:  LDRBEQ.W        R8, [R2]
20C9B6:  ANDSEQ.W        R2, R8, #0xE0
20C9BA:  BNE             loc_20C970
20C9BC:  MOVS            R6, #6
20C9BE:  MOVS            R5, #0
20C9C0:  MOV.W           R9, #1
20C9C4:  MOV.W           R10, #0xFFFFFFFF
20C9C8:  LDR             R1, [R4,#0x3C]
20C9CA:  CBZ             R1, loc_20C9D2
20C9CC:  SUBS            R6, #1
20C9CE:  BNE             loc_20C9C8
20C9D0:  B               loc_20CA1E
20C9D2:  CBZ             R0, loc_20C9D8
20C9D4:  LDR             R1, [R4]
20C9D6:  B               loc_20C9F6
20C9D8:  BLX             __errno
20C9DC:  STR             R5, [R0]
20C9DE:  MOVS            R1, #1; size
20C9E0:  LDRD.W          R3, R0, [R4,#0x40]; stream
20C9E4:  MOV.W           R2, #0x4000; n
20C9E8:  BLX             fread
20C9EC:  CMP             R0, #0
20C9EE:  STR             R0, [R4,#4]
20C9F0:  BEQ             loc_20CA04
20C9F2:  LDR             R1, [R4,#0x44]
20C9F4:  STR             R1, [R4]
20C9F6:  SUBS            R0, #1
20C9F8:  ADDS            R1, #1
20C9FA:  STRD.W          R1, R0, [R4]
20C9FE:  SUBS            R6, #1
20CA00:  BNE             loc_20C9C8
20CA02:  B               loc_20CA1E
20CA04:  LDR             R0, [R4,#0x40]; stream
20CA06:  STR.W           R9, [R4,#0x3C]
20CA0A:  BLX             ferror
20CA0E:  CMP             R0, #0
20CA10:  MOV.W           R0, #0
20CA14:  IT NE
20CA16:  STRNE.W         R10, [R4,#0x38]
20CA1A:  SUBS            R6, #1
20CA1C:  BNE             loc_20C9C8
20CA1E:  MOVS.W          R1, R8,LSL#29
20CA22:  BPL.W           loc_20CB36
20CA26:  LDR             R1, [R4,#0x3C]
20CA28:  CBZ             R1, loc_20CA4C
20CA2A:  MOV.W           R6, #0xFFFFFFFF
20CA2E:  MOV.W           R1, #0xFFFFFFFF
20CA32:  B               loc_20CADA
20CA34:  LDR             R0, [R4,#0x40]; stream
20CA36:  STR             R6, [R4,#0x3C]
20CA38:  BLX             ferror
20CA3C:  CMP             R0, #0
20CA3E:  MOV             R1, #0xFFFFFFFD
20CA42:  ITT NE
20CA44:  MOVNE.W         R0, #0xFFFFFFFF
20CA48:  STRNE           R0, [R4,#0x38]
20CA4A:  B               loc_20C970
20CA4C:  CBZ             R0, loc_20CA54
20CA4E:  LDR             R2, [R4]
20CA50:  MOVS            R1, #0
20CA52:  B               loc_20CA78
20CA54:  BLX             __errno
20CA58:  MOVS            R1, #0
20CA5A:  MOV.W           R2, #0x4000; n
20CA5E:  STR             R1, [R0]
20CA60:  MOVS            R1, #1; size
20CA62:  LDRD.W          R3, R0, [R4,#0x40]; stream
20CA66:  MOVS            R5, #1
20CA68:  BLX             fread
20CA6C:  CMP             R0, #0
20CA6E:  STR             R0, [R4,#4]
20CA70:  BEQ             loc_20CA92
20CA72:  LDR             R1, [R4,#0x3C]
20CA74:  LDR             R2, [R4,#0x44]
20CA76:  STR             R2, [R4]
20CA78:  SUBS            R0, #1
20CA7A:  ADDS            R3, R2, #1
20CA7C:  CMP             R1, #0
20CA7E:  STRD.W          R3, R0, [R4]
20CA82:  LDRB            R6, [R2]
20CA84:  BEQ             loc_20CA8C
20CA86:  MOV.W           R1, #0xFFFFFFFF
20CA8A:  B               loc_20CADA
20CA8C:  CBZ             R0, loc_20CAAC
20CA8E:  LDR             R1, [R4]
20CA90:  B               loc_20CAD0
20CA92:  LDR             R0, [R4,#0x40]; stream
20CA94:  STR             R5, [R4,#0x3C]
20CA96:  BLX             ferror
20CA9A:  CMP             R0, #0
20CA9C:  MOV.W           R6, #0xFFFFFFFF
20CAA0:  IT NE
20CAA2:  STRNE           R6, [R4,#0x38]
20CAA4:  MOVS            R0, #0
20CAA6:  MOV.W           R1, #0xFFFFFFFF
20CAAA:  B               loc_20CADA
20CAAC:  BLX             __errno
20CAB0:  MOVS            R1, #0
20CAB2:  MOV.W           R2, #0x4000; n
20CAB6:  STR             R1, [R0]
20CAB8:  MOVS            R1, #1; size
20CABA:  LDRD.W          R3, R0, [R4,#0x40]; stream
20CABE:  MOVS            R5, #1
20CAC0:  BLX             fread
20CAC4:  CMP             R0, #0
20CAC6:  STR             R0, [R4,#4]
20CAC8:  BEQ.W           loc_20CC7C
20CACC:  LDR             R1, [R4,#0x44]
20CACE:  STR             R1, [R4]
20CAD0:  SUBS            R0, #1
20CAD2:  ADDS            R2, R1, #1
20CAD4:  STRD.W          R2, R0, [R4]
20CAD8:  LDRB            R1, [R1]
20CADA:  ADD.W           R2, R6, R1,LSL#8
20CADE:  CBZ             R2, loc_20CB36
20CAE0:  NEGS            R2, R6
20CAE2:  LSLS            R1, R1, #8
20CAE4:  SUBS            R5, R2, R1
20CAE6:  MOVS            R6, #0
20CAE8:  LDR             R1, [R4,#0x3C]
20CAEA:  CBNZ            R1, loc_20CB36
20CAEC:  CBZ             R0, loc_20CAF2
20CAEE:  LDR             R1, [R4]
20CAF0:  B               loc_20CB10
20CAF2:  BLX             __errno
20CAF6:  STR             R6, [R0]
20CAF8:  MOVS            R1, #1; size
20CAFA:  LDRD.W          R3, R0, [R4,#0x40]; stream
20CAFE:  MOV.W           R2, #0x4000; n
20CB02:  BLX             fread
20CB06:  CMP             R0, #0
20CB08:  STR             R0, [R4,#4]
20CB0A:  BEQ             loc_20CB20
20CB0C:  LDR             R1, [R4,#0x44]
20CB0E:  STR             R1, [R4]
20CB10:  SUBS            R0, #1
20CB12:  ADDS            R5, #1
20CB14:  ADD.W           R1, R1, #1
20CB18:  STRD.W          R1, R0, [R4]
20CB1C:  BNE             loc_20CAE8
20CB1E:  B               loc_20CB36
20CB20:  LDR             R0, [R4,#0x40]; stream
20CB22:  MOVS            R1, #1
20CB24:  STR             R1, [R4,#0x3C]
20CB26:  BLX             ferror
20CB2A:  CMP             R0, #0
20CB2C:  ITT NE
20CB2E:  MOVNE.W         R0, #0xFFFFFFFF
20CB32:  STRNE           R0, [R4,#0x38]
20CB34:  MOVS            R0, #0
20CB36:  MOVS.W          R1, R8,LSL#28
20CB3A:  BPL             loc_20CB8C
20CB3C:  MOVS            R5, #0
20CB3E:  LDR             R1, [R4,#0x3C]
20CB40:  CBNZ            R1, loc_20CB8C
20CB42:  CBZ             R0, loc_20CB48
20CB44:  LDR             R1, [R4]
20CB46:  B               loc_20CB66
20CB48:  BLX             __errno
20CB4C:  STR             R5, [R0]
20CB4E:  MOVS            R1, #1; size
20CB50:  LDRD.W          R3, R0, [R4,#0x40]; stream
20CB54:  MOV.W           R2, #0x4000; n
20CB58:  BLX             fread
20CB5C:  CMP             R0, #0
20CB5E:  STR             R0, [R4,#4]
20CB60:  BEQ             loc_20CB76
20CB62:  LDR             R1, [R4,#0x44]
20CB64:  STR             R1, [R4]
20CB66:  SUBS            R0, #1
20CB68:  ADDS            R2, R1, #1
20CB6A:  STRD.W          R2, R0, [R4]
20CB6E:  LDRB            R1, [R1]
20CB70:  CMP             R1, #0
20CB72:  BNE             loc_20CB3E
20CB74:  B               loc_20CB8C
20CB76:  LDR             R0, [R4,#0x40]; stream
20CB78:  MOVS            R1, #1
20CB7A:  STR             R1, [R4,#0x3C]
20CB7C:  BLX             ferror
20CB80:  CMP             R0, #0
20CB82:  ITT NE
20CB84:  MOVNE.W         R0, #0xFFFFFFFF
20CB88:  STRNE           R0, [R4,#0x38]
20CB8A:  MOVS            R0, #0
20CB8C:  MOVS.W          R1, R8,LSL#27
20CB90:  BPL             loc_20CBE2
20CB92:  MOVS            R5, #0
20CB94:  LDR             R1, [R4,#0x3C]
20CB96:  CBNZ            R1, loc_20CBE2
20CB98:  CBZ             R0, loc_20CB9E
20CB9A:  LDR             R1, [R4]
20CB9C:  B               loc_20CBBC
20CB9E:  BLX             __errno
20CBA2:  STR             R5, [R0]
20CBA4:  MOVS            R1, #1; size
20CBA6:  LDRD.W          R3, R0, [R4,#0x40]; stream
20CBAA:  MOV.W           R2, #0x4000; n
20CBAE:  BLX             fread
20CBB2:  CMP             R0, #0
20CBB4:  STR             R0, [R4,#4]
20CBB6:  BEQ             loc_20CBCC
20CBB8:  LDR             R1, [R4,#0x44]
20CBBA:  STR             R1, [R4]
20CBBC:  SUBS            R0, #1
20CBBE:  ADDS            R2, R1, #1
20CBC0:  STRD.W          R2, R0, [R4]
20CBC4:  LDRB            R1, [R1]
20CBC6:  CMP             R1, #0
20CBC8:  BNE             loc_20CB94
20CBCA:  B               loc_20CBE2
20CBCC:  LDR             R0, [R4,#0x40]; stream
20CBCE:  MOVS            R1, #1
20CBD0:  STR             R1, [R4,#0x3C]
20CBD2:  BLX             ferror
20CBD6:  CMP             R0, #0
20CBD8:  ITT NE
20CBDA:  MOVNE.W         R0, #0xFFFFFFFF
20CBDE:  STRNE           R0, [R4,#0x38]
20CBE0:  MOVS            R0, #0
20CBE2:  MOVS.W          R1, R8,LSL#30
20CBE6:  BPL             loc_20CC70
20CBE8:  LDR             R1, [R4,#0x3C]
20CBEA:  CMP             R1, #0
20CBEC:  BNE             loc_20CC70
20CBEE:  CBZ             R0, loc_20CC00
20CBF0:  LDR             R1, [R4]
20CBF2:  SUBS            R0, #1
20CBF4:  ADDS            R1, #1
20CBF6:  STRD.W          R1, R0, [R4]
20CBFA:  CBZ             R0, loc_20CC32
20CBFC:  LDR             R1, [R4]
20CBFE:  B               loc_20CC54
20CC00:  BLX             __errno
20CC04:  MOVS            R1, #0
20CC06:  MOV.W           R2, #0x4000; n
20CC0A:  STR             R1, [R0]
20CC0C:  MOVS            R1, #1; size
20CC0E:  LDRD.W          R3, R0, [R4,#0x40]; stream
20CC12:  MOVS            R5, #1
20CC14:  BLX             fread
20CC18:  CMP             R0, #0
20CC1A:  STR             R0, [R4,#4]
20CC1C:  BEQ             loc_20CC5E
20CC1E:  LDR             R1, [R4,#0x3C]
20CC20:  SUBS            R0, #1
20CC22:  LDR             R2, [R4,#0x44]
20CC24:  CMP             R1, #0
20CC26:  ADD.W           R2, R2, #1
20CC2A:  STRD.W          R2, R0, [R4]
20CC2E:  BNE             loc_20CC70
20CC30:  B               loc_20CBFA
20CC32:  BLX             __errno
20CC36:  MOVS            R1, #0
20CC38:  MOV.W           R2, #0x4000; n
20CC3C:  STR             R1, [R0]
20CC3E:  MOVS            R1, #1; size
20CC40:  LDRD.W          R3, R0, [R4,#0x40]; stream
20CC44:  MOVS            R5, #1
20CC46:  BLX             fread
20CC4A:  CMP             R0, #0
20CC4C:  STR             R0, [R4,#4]
20CC4E:  BEQ             loc_20CC5E
20CC50:  LDR             R1, [R4,#0x44]
20CC52:  STR             R1, [R4]
20CC54:  SUBS            R0, #1
20CC56:  ADDS            R1, #1
20CC58:  STRD.W          R1, R0, [R4]
20CC5C:  B               loc_20CC70
20CC5E:  LDR             R0, [R4,#0x40]; stream
20CC60:  STR             R5, [R4,#0x3C]
20CC62:  BLX             ferror
20CC66:  CMP             R0, #0
20CC68:  ITT NE
20CC6A:  MOVNE.W         R0, #0xFFFFFFFF
20CC6E:  STRNE           R0, [R4,#0x38]
20CC70:  LDR             R1, [R4,#0x3C]
20CC72:  CMP             R1, #0
20CC74:  IT NE
20CC76:  MOVNE           R1, #0xFFFFFFFD
20CC7A:  B               loc_20C970
20CC7C:  LDR             R0, [R4,#0x40]; stream
20CC7E:  STR             R5, [R4,#0x3C]
20CC80:  BLX             ferror
20CC84:  CMP             R0, #0
20CC86:  MOV.W           R1, #0xFFFFFFFF
20CC8A:  IT NE
20CC8C:  STRNE           R1, [R4,#0x38]
20CC8E:  MOVS            R0, #0
20CC90:  B               loc_20CADA
