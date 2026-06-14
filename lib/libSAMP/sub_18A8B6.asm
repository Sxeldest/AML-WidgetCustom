; =========================================================
; Game Engine Function: sub_18A8B6
; Address            : 0x18A8B6 - 0x18ABAE
; =========================================================

18A8B6:  PUSH            {R4-R7,LR}
18A8B8:  ADD             R7, SP, #0xC
18A8BA:  PUSH.W          {R8-R11}
18A8BE:  SUB             SP, SP, #0xC
18A8C0:  LDRD.W          R4, R8, [R7,#arg_0]
18A8C4:  MOV             R5, R3
18A8C6:  LDR.W           R11, [R8,#4]
18A8CA:  MOV             R6, R1
18A8CC:  CMP.W           R11, #0x1F
18A8D0:  BGT             loc_18A904
18A8D2:  CMP             R11, R5
18A8D4:  BLE             loc_18A91A
18A8D6:  MOV             R0, R11
18A8D8:  ADD.W           R1, R8, R0,LSL#1
18A8DC:  SUBS            R0, #1
18A8DE:  CMP             R0, R5
18A8E0:  LDRH            R3, [R1,#6]
18A8E2:  STRH            R3, [R1,#8]
18A8E4:  BGT             loc_18A8D8
18A8E6:  LDRB.W          R0, [R8]
18A8EA:  CMP             R0, #0
18A8EC:  BEQ             loc_18A9E0
18A8EE:  CMP             R11, R5
18A8F0:  BLE             loc_18A922
18A8F2:  MOV             R0, R11
18A8F4:  ADD.W           R1, R8, R0,LSL#2
18A8F8:  SUBS            R0, #1
18A8FA:  CMP             R0, R5
18A8FC:  LDR             R3, [R1,#0x44]
18A8FE:  STR             R3, [R1,#0x48]
18A900:  BGT             loc_18A8F4
18A902:  B               loc_18A922
18A904:  MOV             R9, R0
18A906:  LDR             R0, [R0,#8]
18A908:  CBZ             R0, loc_18A932
18A90A:  LDR.W           R1, [R9,#4]
18A90E:  SUBS            R0, #1
18A910:  STR.W           R0, [R9,#8]
18A914:  LDR.W           R10, [R1,R0,LSL#2]
18A918:  B               loc_18A944
18A91A:  LDRB.W          R0, [R8]
18A91E:  CMP             R0, #0
18A920:  BEQ             loc_18A9FE
18A922:  ADD.W           R0, R8, R5,LSL#1
18A926:  LDR             R1, [R2]
18A928:  STRH            R6, [R0,#8]
18A92A:  ADD.W           R0, R8, R5,LSL#2
18A92E:  STR             R1, [R0,#0x48]
18A930:  B               loc_18AA0C
18A932:  MOV.W           R0, #0x154; unsigned int
18A936:  MOV             R10, R4
18A938:  MOV             R4, R2
18A93A:  BLX             j__Znwj; operator new(uint)
18A93E:  MOV             R2, R4
18A940:  MOV             R4, R10
18A942:  MOV             R10, R0
18A944:  LDRB.W          R0, [R8]
18A948:  STRB.W          R0, [R10]
18A94C:  LDRB.W          R12, [R8]
18A950:  CMP.W           R12, #0
18A954:  BEQ             loc_18A970
18A956:  LDR.W           R0, [R8,#0xC8]
18A95A:  STR.W           R0, [R10,#0xC8]
18A95E:  LDR.W           R0, [R8,#0xC8]
18A962:  CBZ             R0, loc_18A968
18A964:  STR.W           R10, [R0,#0xCC]
18A968:  STR.W           R10, [R8,#0xC8]
18A96C:  STR.W           R8, [R10,#0xCC]
18A970:  LDR.W           LR, [R7,#arg_8]
18A974:  CMP             R5, #0xF
18A976:  BLE             loc_18A9AA
18A978:  SUBS.W          LR, R5, #0x10
18A97C:  MOV             R9, R2
18A97E:  BEQ             loc_18AA1A
18A980:  ADD.W           R3, R10, #8
18A984:  ADD.W           R1, R8, #0x28 ; '('
18A988:  MOVS            R0, #0
18A98A:  MOV             R2, LR
18A98C:  LDRH.W          R4, [R1,R0,LSL#1]
18A990:  STRH.W          R4, [R3,R0,LSL#1]
18A994:  ADDS            R0, #1
18A996:  CMP             LR, R0
18A998:  BNE             loc_18A98C
18A99A:  LDR             R4, [R7,#arg_0]
18A99C:  ADD.W           R0, R10, LR,LSL#1
18A9A0:  CMP             R5, #0x1F
18A9A2:  MOV             R3, R5
18A9A4:  STRH            R6, [R0,#8]
18A9A6:  BLS             loc_18AA22
18A9A8:  B               loc_18AA3C
18A9AA:  ADD.W           R1, R10, #8
18A9AE:  MOVS            R0, #0
18A9B0:  ADD.W           R3, R8, R0,LSL#1
18A9B4:  LDRH            R3, [R3,#0x26]
18A9B6:  STRH.W          R3, [R1,R0,LSL#1]
18A9BA:  ADDS            R0, #1
18A9BC:  CMP             R0, #0x11
18A9BE:  BNE             loc_18A9B0
18A9C0:  CMP.W           R12, #0
18A9C4:  BEQ             loc_18AA72
18A9C6:  ADD.W           R0, R10, #0x48 ; 'H'
18A9CA:  ADD.W           R1, R8, #0x84
18A9CE:  MOVS            R5, #0
18A9D0:  LDR.W           R3, [R1,R5,LSL#2]
18A9D4:  STR.W           R3, [R0,R5,LSL#2]
18A9D8:  ADDS            R5, #1
18A9DA:  CMP             R5, #0x11
18A9DC:  BNE             loc_18A9D0
18A9DE:  B               loc_18AAAC
18A9E0:  CMP             R11, R5
18A9E2:  BLE             loc_18A9FE
18A9E4:  ADDS            R0, R5, #1
18A9E6:  MOV             R1, R11
18A9E8:  ADD.W           R2, R8, R1,LSL#2
18A9EC:  CMP             R1, R0
18A9EE:  LDR.W           R3, [R2,#0xD0]
18A9F2:  STR.W           R3, [R2,#0xD4]
18A9F6:  SUB.W           R2, R1, #1
18A9FA:  MOV             R1, R2
18A9FC:  BGT             loc_18A9E8
18A9FE:  ADD.W           R0, R8, R5,LSL#2
18AA02:  STR.W           R4, [R0,#0xD4]
18AA06:  ADD.W           R0, R8, R5,LSL#1
18AA0A:  STRH            R6, [R0,#8]
18AA0C:  ADD.W           R0, R11, #1
18AA10:  STR.W           R0, [R8,#4]
18AA14:  MOV.W           R10, #0
18AA18:  B               loc_18ABA4
18AA1A:  STRH.W          R6, [R10,#8]
18AA1E:  MOVS            R2, #0
18AA20:  MOVS            R3, #0x10
18AA22:  ADD.W           R0, R10, R2,LSL#1
18AA26:  ADD.W           R6, R8, #8
18AA2A:  ADD.W           R1, R0, #0xA
18AA2E:  LDRH.W          R0, [R6,R3,LSL#1]
18AA32:  ADDS            R3, #1
18AA34:  CMP             R3, #0x20 ; ' '
18AA36:  STRH.W          R0, [R1],#2
18AA3A:  BNE             loc_18AA2E
18AA3C:  CMP.W           R12, #0
18AA40:  BEQ             loc_18AAEC
18AA42:  CMP             R5, #0x10
18AA44:  BLE             loc_18AB08
18AA46:  ADD.W           R0, R10, #0x48 ; 'H'
18AA4A:  ADD.W           R1, R8, #0x88
18AA4E:  MOVS            R3, #0
18AA50:  LDR.W           R6, [R1,R3,LSL#2]
18AA54:  STR.W           R6, [R0,R3,LSL#2]
18AA58:  ADDS            R3, #1
18AA5A:  CMP             LR, R3
18AA5C:  BNE             loc_18AA50
18AA5E:  ADD.W           R1, R10, LR,LSL#2
18AA62:  LDR.W           R0, [R9]
18AA66:  CMP             R5, #0x1F
18AA68:  STR             R0, [R1,#0x48]
18AA6A:  BLS             loc_18AB16
18AA6C:  SUB.W           R6, R5, #0xF
18AA70:  B               loc_18AB9A
18AA72:  ADD.W           R0, R10, #0xD0
18AA76:  ADD.W           R1, R8, #0x110
18AA7A:  MOVS            R5, #0
18AA7C:  LDR.W           R3, [R1,R5,LSL#2]
18AA80:  STR.W           R3, [R0,R5,LSL#2]
18AA84:  ADDS            R5, #1
18AA86:  CMP             R5, #0x11
18AA88:  BNE             loc_18AA7C
18AA8A:  MOVS            R0, #2
18AA8C:  STR.W           R0, [LR,#4]
18AA90:  MOV             R0, R10
18AA92:  LDRH.W          R1, [R0,#8]!
18AA96:  STRH.W          R1, [LR]
18AA9A:  ADDS            R1, R0, #2
18AA9C:  VLD1.16         {D16-D17}, [R1]!
18AAA0:  VLD1.16         {D18-D19}, [R1]
18AAA4:  VST1.16         {D16-D17}, [R0]!
18AAA8:  VST1.16         {D18-D19}, [R0]
18AAAC:  MOVS            R0, #0xF
18AAAE:  MOVS            R3, #0
18AAB0:  STR.W           R0, [R8,#4]
18AAB4:  MOVS            R0, #0xE
18AAB6:  MOVS            R1, #7
18AAB8:  ADD.W           R5, R8, R1,LSL#1
18AABC:  LDRH            R5, [R5,#8]
18AABE:  CMP             R5, R6
18AAC0:  BEQ             loc_18AADA
18AAC2:  IT HI
18AAC4:  SUBHI           R0, R1, #1
18AAC6:  CMP             R5, R6
18AAC8:  IT LS
18AACA:  ADDLS           R3, R1, #1
18AACC:  SUBS            R1, R0, R3
18AACE:  ADD.W           R1, R1, R1,LSR#31
18AAD2:  ADD.W           R1, R3, R1,ASR#1
18AAD6:  BGE             loc_18AAB8
18AAD8:  B               loc_18AADC
18AADA:  MOV             R3, R1
18AADC:  MOV             R0, R9
18AADE:  MOV             R1, R6
18AAE0:  STMEA.W         SP, {R4,R8,LR}
18AAE4:  BL              sub_18A8B6
18AAE8:  MOVS            R6, #0x11
18AAEA:  B               loc_18ABA0
18AAEC:  CMP             R5, #0x11
18AAEE:  BLT             loc_18AB36
18AAF0:  ADD.W           R0, R10, #0xD0
18AAF4:  ADD.W           R1, R8, #0x114
18AAF8:  MOV             R3, LR
18AAFA:  LDR.W           R6, [R1],#4
18AAFE:  SUBS            R3, #1
18AB00:  STR.W           R6, [R0],#4
18AB04:  BNE             loc_18AAFA
18AB06:  B               loc_18AB3C
18AB08:  LDR.W           R0, [R9]
18AB0C:  MOV.W           LR, #0
18AB10:  MOVS            R5, #0x10
18AB12:  STR.W           R0, [R10,#0x48]
18AB16:  SUB.W           R0, LR, R5
18AB1A:  ADD.W           R1, R10, #0xC
18AB1E:  ADD.W           R6, R0, #0x21 ; '!'
18AB22:  ADD.W           R0, R8, #0x48 ; 'H'
18AB26:  LDR.W           R2, [R0,R5,LSL#2]
18AB2A:  STR.W           R2, [R1,R5,LSL#2]
18AB2E:  ADDS            R5, #1
18AB30:  CMP             R5, #0x20 ; ' '
18AB32:  BNE             loc_18AB26
18AB34:  B               loc_18AB9A
18AB36:  MOVS            R5, #0x10
18AB38:  MOV.W           LR, #0
18AB3C:  ADD.W           R0, R10, LR,LSL#2
18AB40:  CMP             R5, R11
18AB42:  STR.W           R4, [R0,#0xD0]
18AB46:  BGE             loc_18AB76
18AB48:  ADD.W           R0, R10, #0x94
18AB4C:  ADD.W           R1, R8, #0xD4
18AB50:  LDR.W           R2, [R1,R5,LSL#2]
18AB54:  STR.W           R2, [R0,R5,LSL#2]
18AB58:  ADDS            R5, #1
18AB5A:  CMP             R11, R5
18AB5C:  BNE             loc_18AB50
18AB5E:  LDR             R3, [R7,#arg_8]
18AB60:  MOV             R0, R10
18AB62:  LDRH.W          R2, [R0,#8]!
18AB66:  MOVS            R1, #2
18AB68:  SUB.W           LR, R5, #0x10
18AB6C:  SUB.W           R6, R5, #0xF
18AB70:  STR             R1, [R3,#4]
18AB72:  STRH            R2, [R3]
18AB74:  B               loc_18AB8E
18AB76:  MOV             R0, R10
18AB78:  LDR             R2, [R7,#arg_8]
18AB7A:  LDRH.W          R3, [R0,#8]!; dest
18AB7E:  ADD.W           R6, LR, #1
18AB82:  MOVS            R1, #2
18AB84:  CMP.W           LR, #0
18AB88:  STR             R1, [R2,#4]
18AB8A:  STRH            R3, [R2]
18AB8C:  BEQ             loc_18AB9A
18AB8E:  ADD.W           R1, R10, #0xA; src
18AB92:  MOV.W           R2, LR,LSL#1; n
18AB96:  BLX             j_memmove
18AB9A:  MOVS            R0, #0x10
18AB9C:  STR.W           R0, [R8,#4]
18ABA0:  STR.W           R6, [R10,#4]
18ABA4:  MOV             R0, R10
18ABA6:  ADD             SP, SP, #0xC
18ABA8:  POP.W           {R8-R11}
18ABAC:  POP             {R4-R7,PC}
