; =========================================================
; Game Engine Function: _ZNK20CPedAttractorManager25IsPedRegisteredWithEffectEP4CPed
; Address            : 0x4AA8BA - 0x4AABFC
; =========================================================

4AA8BA:  PUSH            {R4-R7,LR}
4AA8BC:  ADD             R7, SP, #0xC
4AA8BE:  PUSH.W          {R8}
4AA8C2:  LDR.W           LR, [R0,#4]
4AA8C6:  CMP.W           LR, #1
4AA8CA:  BLT             loc_4AA914
4AA8CC:  LDR.W           R12, [R0,#8]
4AA8D0:  MOV.W           R8, #0
4AA8D4:  LDR.W           R2, [R12,R8,LSL#2]
4AA8D8:  LDR             R4, [R2,#0x10]
4AA8DA:  CMP             R4, #1
4AA8DC:  BLT             loc_4AA8F2
4AA8DE:  LDR             R5, [R2,#0x14]
4AA8E0:  MOVS            R6, #0
4AA8E2:  LDR.W           R3, [R5,R6,LSL#2]
4AA8E6:  CMP             R3, R1
4AA8E8:  BEQ.W           loc_4AABEC
4AA8EC:  ADDS            R6, #1
4AA8EE:  CMP             R6, R4
4AA8F0:  BLT             loc_4AA8E2
4AA8F2:  LDR             R4, [R2,#0x1C]
4AA8F4:  CMP             R4, #1
4AA8F6:  BLT             loc_4AA90C
4AA8F8:  LDR             R2, [R2,#0x20]
4AA8FA:  MOVS            R5, #0
4AA8FC:  LDR.W           R3, [R2,R5,LSL#2]
4AA900:  CMP             R3, R1
4AA902:  BEQ.W           loc_4AABEC
4AA906:  ADDS            R5, #1
4AA908:  CMP             R5, R4
4AA90A:  BLT             loc_4AA8FC
4AA90C:  ADD.W           R8, R8, #1
4AA910:  CMP             R8, LR
4AA912:  BLT             loc_4AA8D4
4AA914:  LDR.W           LR, [R0,#0x10]
4AA918:  CMP.W           LR, #1
4AA91C:  BLT             loc_4AA966
4AA91E:  LDR.W           R12, [R0,#0x14]
4AA922:  MOV.W           R8, #0
4AA926:  LDR.W           R2, [R12,R8,LSL#2]
4AA92A:  LDR             R4, [R2,#0x10]
4AA92C:  CMP             R4, #1
4AA92E:  BLT             loc_4AA944
4AA930:  LDR             R5, [R2,#0x14]
4AA932:  MOVS            R6, #0
4AA934:  LDR.W           R3, [R5,R6,LSL#2]
4AA938:  CMP             R3, R1
4AA93A:  BEQ.W           loc_4AABEC
4AA93E:  ADDS            R6, #1
4AA940:  CMP             R6, R4
4AA942:  BLT             loc_4AA934
4AA944:  LDR             R4, [R2,#0x1C]
4AA946:  CMP             R4, #1
4AA948:  BLT             loc_4AA95E
4AA94A:  LDR             R2, [R2,#0x20]
4AA94C:  MOVS            R5, #0
4AA94E:  LDR.W           R3, [R2,R5,LSL#2]
4AA952:  CMP             R3, R1
4AA954:  BEQ.W           loc_4AABEC
4AA958:  ADDS            R5, #1
4AA95A:  CMP             R5, R4
4AA95C:  BLT             loc_4AA94E
4AA95E:  ADD.W           R8, R8, #1
4AA962:  CMP             R8, LR
4AA964:  BLT             loc_4AA926
4AA966:  LDR.W           LR, [R0,#0x1C]
4AA96A:  CMP.W           LR, #1
4AA96E:  BLT             loc_4AA9B8
4AA970:  LDR.W           R12, [R0,#0x20]
4AA974:  MOV.W           R8, #0
4AA978:  LDR.W           R2, [R12,R8,LSL#2]
4AA97C:  LDR             R4, [R2,#0x10]
4AA97E:  CMP             R4, #1
4AA980:  BLT             loc_4AA996
4AA982:  LDR             R5, [R2,#0x14]
4AA984:  MOVS            R6, #0
4AA986:  LDR.W           R3, [R5,R6,LSL#2]
4AA98A:  CMP             R3, R1
4AA98C:  BEQ.W           loc_4AABEC
4AA990:  ADDS            R6, #1
4AA992:  CMP             R6, R4
4AA994:  BLT             loc_4AA986
4AA996:  LDR             R4, [R2,#0x1C]
4AA998:  CMP             R4, #1
4AA99A:  BLT             loc_4AA9B0
4AA99C:  LDR             R2, [R2,#0x20]
4AA99E:  MOVS            R5, #0
4AA9A0:  LDR.W           R3, [R2,R5,LSL#2]
4AA9A4:  CMP             R3, R1
4AA9A6:  BEQ.W           loc_4AABEC
4AA9AA:  ADDS            R5, #1
4AA9AC:  CMP             R5, R4
4AA9AE:  BLT             loc_4AA9A0
4AA9B0:  ADD.W           R8, R8, #1
4AA9B4:  CMP             R8, LR
4AA9B6:  BLT             loc_4AA978
4AA9B8:  LDR.W           LR, [R0,#0x28]
4AA9BC:  CMP.W           LR, #1
4AA9C0:  BLT             loc_4AAA0A
4AA9C2:  LDR.W           R12, [R0,#0x2C]
4AA9C6:  MOV.W           R8, #0
4AA9CA:  LDR.W           R2, [R12,R8,LSL#2]
4AA9CE:  LDR             R4, [R2,#0x10]
4AA9D0:  CMP             R4, #1
4AA9D2:  BLT             loc_4AA9E8
4AA9D4:  LDR             R5, [R2,#0x14]
4AA9D6:  MOVS            R6, #0
4AA9D8:  LDR.W           R3, [R5,R6,LSL#2]
4AA9DC:  CMP             R3, R1
4AA9DE:  BEQ.W           loc_4AABEC
4AA9E2:  ADDS            R6, #1
4AA9E4:  CMP             R6, R4
4AA9E6:  BLT             loc_4AA9D8
4AA9E8:  LDR             R4, [R2,#0x1C]
4AA9EA:  CMP             R4, #1
4AA9EC:  BLT             loc_4AAA02
4AA9EE:  LDR             R2, [R2,#0x20]
4AA9F0:  MOVS            R5, #0
4AA9F2:  LDR.W           R3, [R2,R5,LSL#2]
4AA9F6:  CMP             R3, R1
4AA9F8:  BEQ.W           loc_4AABEC
4AA9FC:  ADDS            R5, #1
4AA9FE:  CMP             R5, R4
4AAA00:  BLT             loc_4AA9F2
4AAA02:  ADD.W           R8, R8, #1
4AAA06:  CMP             R8, LR
4AAA08:  BLT             loc_4AA9CA
4AAA0A:  LDR.W           LR, [R0,#0x34]
4AAA0E:  CMP.W           LR, #1
4AAA12:  BLT             loc_4AAA5C
4AAA14:  LDR.W           R12, [R0,#0x38]
4AAA18:  MOV.W           R8, #0
4AAA1C:  LDR.W           R2, [R12,R8,LSL#2]
4AAA20:  LDR             R4, [R2,#0x10]
4AAA22:  CMP             R4, #1
4AAA24:  BLT             loc_4AAA3A
4AAA26:  LDR             R5, [R2,#0x14]
4AAA28:  MOVS            R6, #0
4AAA2A:  LDR.W           R3, [R5,R6,LSL#2]
4AAA2E:  CMP             R3, R1
4AAA30:  BEQ.W           loc_4AABEC
4AAA34:  ADDS            R6, #1
4AAA36:  CMP             R6, R4
4AAA38:  BLT             loc_4AAA2A
4AAA3A:  LDR             R4, [R2,#0x1C]
4AAA3C:  CMP             R4, #1
4AAA3E:  BLT             loc_4AAA54
4AAA40:  LDR             R2, [R2,#0x20]
4AAA42:  MOVS            R5, #0
4AAA44:  LDR.W           R3, [R2,R5,LSL#2]
4AAA48:  CMP             R3, R1
4AAA4A:  BEQ.W           loc_4AABEC
4AAA4E:  ADDS            R5, #1
4AAA50:  CMP             R5, R4
4AAA52:  BLT             loc_4AAA44
4AAA54:  ADD.W           R8, R8, #1
4AAA58:  CMP             R8, LR
4AAA5A:  BLT             loc_4AAA1C
4AAA5C:  LDR.W           LR, [R0,#0x40]
4AAA60:  CMP.W           LR, #1
4AAA64:  BLT             loc_4AAAAE
4AAA66:  LDR.W           R12, [R0,#0x44]
4AAA6A:  MOV.W           R8, #0
4AAA6E:  LDR.W           R2, [R12,R8,LSL#2]
4AAA72:  LDR             R4, [R2,#0x10]
4AAA74:  CMP             R4, #1
4AAA76:  BLT             loc_4AAA8C
4AAA78:  LDR             R5, [R2,#0x14]
4AAA7A:  MOVS            R6, #0
4AAA7C:  LDR.W           R3, [R5,R6,LSL#2]
4AAA80:  CMP             R3, R1
4AAA82:  BEQ.W           loc_4AABEC
4AAA86:  ADDS            R6, #1
4AAA88:  CMP             R6, R4
4AAA8A:  BLT             loc_4AAA7C
4AAA8C:  LDR             R4, [R2,#0x1C]
4AAA8E:  CMP             R4, #1
4AAA90:  BLT             loc_4AAAA6
4AAA92:  LDR             R2, [R2,#0x20]
4AAA94:  MOVS            R5, #0
4AAA96:  LDR.W           R3, [R2,R5,LSL#2]
4AAA9A:  CMP             R3, R1
4AAA9C:  BEQ.W           loc_4AABEC
4AAAA0:  ADDS            R5, #1
4AAAA2:  CMP             R5, R4
4AAAA4:  BLT             loc_4AAA96
4AAAA6:  ADD.W           R8, R8, #1
4AAAAA:  CMP             R8, LR
4AAAAC:  BLT             loc_4AAA6E
4AAAAE:  LDR.W           LR, [R0,#0x4C]
4AAAB2:  CMP.W           LR, #1
4AAAB6:  BLT             loc_4AAAFE
4AAAB8:  LDR.W           R12, [R0,#0x50]
4AAABC:  MOV.W           R8, #0
4AAAC0:  LDR.W           R2, [R12,R8,LSL#2]
4AAAC4:  LDR             R4, [R2,#0x10]
4AAAC6:  CMP             R4, #1
4AAAC8:  BLT             loc_4AAADE
4AAACA:  LDR             R5, [R2,#0x14]
4AAACC:  MOVS            R6, #0
4AAACE:  LDR.W           R3, [R5,R6,LSL#2]
4AAAD2:  CMP             R3, R1
4AAAD4:  BEQ.W           loc_4AABEC
4AAAD8:  ADDS            R6, #1
4AAADA:  CMP             R6, R4
4AAADC:  BLT             loc_4AAACE
4AAADE:  LDR             R4, [R2,#0x1C]
4AAAE0:  CMP             R4, #1
4AAAE2:  BLT             loc_4AAAF6
4AAAE4:  LDR             R2, [R2,#0x20]
4AAAE6:  MOVS            R5, #0
4AAAE8:  LDR.W           R3, [R2,R5,LSL#2]
4AAAEC:  CMP             R3, R1
4AAAEE:  BEQ             loc_4AABEC
4AAAF0:  ADDS            R5, #1
4AAAF2:  CMP             R5, R4
4AAAF4:  BLT             loc_4AAAE8
4AAAF6:  ADD.W           R8, R8, #1
4AAAFA:  CMP             R8, LR
4AAAFC:  BLT             loc_4AAAC0
4AAAFE:  LDR.W           LR, [R0,#0x58]
4AAB02:  CMP.W           LR, #1
4AAB06:  BLT             loc_4AAB4C
4AAB08:  LDR.W           R12, [R0,#0x5C]
4AAB0C:  MOV.W           R8, #0
4AAB10:  LDR.W           R2, [R12,R8,LSL#2]
4AAB14:  LDR             R4, [R2,#0x10]
4AAB16:  CMP             R4, #1
4AAB18:  BLT             loc_4AAB2C
4AAB1A:  LDR             R5, [R2,#0x14]
4AAB1C:  MOVS            R6, #0
4AAB1E:  LDR.W           R3, [R5,R6,LSL#2]
4AAB22:  CMP             R3, R1
4AAB24:  BEQ             loc_4AABEC
4AAB26:  ADDS            R6, #1
4AAB28:  CMP             R6, R4
4AAB2A:  BLT             loc_4AAB1E
4AAB2C:  LDR             R4, [R2,#0x1C]
4AAB2E:  CMP             R4, #1
4AAB30:  BLT             loc_4AAB44
4AAB32:  LDR             R2, [R2,#0x20]
4AAB34:  MOVS            R5, #0
4AAB36:  LDR.W           R3, [R2,R5,LSL#2]
4AAB3A:  CMP             R3, R1
4AAB3C:  BEQ             loc_4AABEC
4AAB3E:  ADDS            R5, #1
4AAB40:  CMP             R5, R4
4AAB42:  BLT             loc_4AAB36
4AAB44:  ADD.W           R8, R8, #1
4AAB48:  CMP             R8, LR
4AAB4A:  BLT             loc_4AAB10
4AAB4C:  LDR.W           LR, [R0,#0x64]
4AAB50:  CMP.W           LR, #1
4AAB54:  BLT             loc_4AAB9A
4AAB56:  LDR.W           R12, [R0,#0x68]
4AAB5A:  MOV.W           R8, #0
4AAB5E:  LDR.W           R2, [R12,R8,LSL#2]
4AAB62:  LDR             R4, [R2,#0x10]
4AAB64:  CMP             R4, #1
4AAB66:  BLT             loc_4AAB7A
4AAB68:  LDR             R5, [R2,#0x14]
4AAB6A:  MOVS            R6, #0
4AAB6C:  LDR.W           R3, [R5,R6,LSL#2]
4AAB70:  CMP             R3, R1
4AAB72:  BEQ             loc_4AABEC
4AAB74:  ADDS            R6, #1
4AAB76:  CMP             R6, R4
4AAB78:  BLT             loc_4AAB6C
4AAB7A:  LDR             R4, [R2,#0x1C]
4AAB7C:  CMP             R4, #1
4AAB7E:  BLT             loc_4AAB92
4AAB80:  LDR             R2, [R2,#0x20]
4AAB82:  MOVS            R5, #0
4AAB84:  LDR.W           R3, [R2,R5,LSL#2]
4AAB88:  CMP             R3, R1
4AAB8A:  BEQ             loc_4AABEC
4AAB8C:  ADDS            R5, #1
4AAB8E:  CMP             R5, R4
4AAB90:  BLT             loc_4AAB84
4AAB92:  ADD.W           R8, R8, #1
4AAB96:  CMP             R8, LR
4AAB98:  BLT             loc_4AAB5E
4AAB9A:  LDR.W           LR, [R0,#0x70]
4AAB9E:  CMP.W           LR, #1
4AABA2:  BLT             loc_4AABF4
4AABA4:  LDR.W           R12, [R0,#0x74]
4AABA8:  MOVS            R3, #0
4AABAA:  LDR.W           R0, [R12,R3,LSL#2]
4AABAE:  LDR             R4, [R0,#0x10]
4AABB0:  CMP             R4, #1
4AABB2:  BLT             loc_4AABC6
4AABB4:  LDR             R5, [R0,#0x14]
4AABB6:  MOVS            R6, #0
4AABB8:  LDR.W           R2, [R5,R6,LSL#2]
4AABBC:  CMP             R2, R1
4AABBE:  BEQ             loc_4AABEC
4AABC0:  ADDS            R6, #1
4AABC2:  CMP             R6, R4
4AABC4:  BLT             loc_4AABB8
4AABC6:  LDR             R4, [R0,#0x1C]
4AABC8:  CMP             R4, #1
4AABCA:  BLT             loc_4AABDE
4AABCC:  LDR             R0, [R0,#0x20]
4AABCE:  MOVS            R6, #0
4AABD0:  LDR.W           R2, [R0,R6,LSL#2]
4AABD4:  CMP             R2, R1
4AABD6:  BEQ             loc_4AABEC
4AABD8:  ADDS            R6, #1
4AABDA:  CMP             R6, R4
4AABDC:  BLT             loc_4AABD0
4AABDE:  ADDS            R3, #1
4AABE0:  MOVS            R0, #0
4AABE2:  CMP             R3, LR
4AABE4:  BLT             loc_4AABAA
4AABE6:  POP.W           {R8}
4AABEA:  POP             {R4-R7,PC}
4AABEC:  MOVS            R0, #1
4AABEE:  POP.W           {R8}
4AABF2:  POP             {R4-R7,PC}
4AABF4:  MOVS            R0, #0
4AABF6:  POP.W           {R8}
4AABFA:  POP             {R4-R7,PC}
