; =========================================================
; Game Engine Function: sub_8AAD4
; Address            : 0x8AAD4 - 0x8AB90
; =========================================================

8AAD4:  PUSH            {R4,R5,R7,LR}
8AAD6:  ADD             R7, SP, #8
8AAD8:  LDR.W           R3, [R0,#0x1C4]
8AADC:  CMP             R2, #0
8AADE:  LDR.W           R0, [R0,#0x1CC]
8AAE2:  ADD.W           R0, R0, R3,LSL#2
8AAE6:  LDR.W           R0, [R0,#-4]
8AAEA:  MVN.W           R12, R0
8AAEE:  IT NE
8AAF0:  SUBSNE.W        R0, R2, R1
8AAF4:  BNE             loc_8AB2C
8AAF6:  LDRB            R4, [R1]
8AAF8:  CBZ             R4, loc_8AB6A
8AAFA:  LDR             R3, =(unk_52D88 - 0x8AB04)
8AAFC:  ADDS            R2, R1, #1
8AAFE:  MOV             R1, R12
8AB00:  ADD             R3, PC; unk_52D88
8AB02:  B               loc_8AB14
8AB04:  UXTB            R5, R1
8AB06:  EORS            R0, R5
8AB08:  ADDS            R2, #1
8AB0A:  LDR.W           R0, [R3,R0,LSL#2]
8AB0E:  EOR.W           R1, R0, R1,LSR#8
8AB12:  CBZ             R4, loc_8AB6C
8AB14:  MOV             R0, R4
8AB16:  LDRB            R4, [R2]
8AB18:  CMP             R0, #0x23 ; '#'
8AB1A:  IT EQ
8AB1C:  CMPEQ           R4, #0x23 ; '#'
8AB1E:  BNE             loc_8AB04
8AB20:  LDRB            R5, [R2,#1]
8AB22:  MOVS            R4, #0x23 ; '#'
8AB24:  CMP             R5, #0x23 ; '#'
8AB26:  IT EQ
8AB28:  MOVEQ           R1, R12
8AB2A:  B               loc_8AB04
8AB2C:  LDR             R5, =(unk_52D88 - 0x8AB38)
8AB2E:  MVNS            R0, R1
8AB30:  ADDS            R3, R1, #1
8AB32:  ADD             R2, R0
8AB34:  ADD             R5, PC; unk_52D88
8AB36:  MOV             R1, R12
8AB38:  B               loc_8AB4E
8AB3A:  UXTB            R4, R1
8AB3C:  EORS            R0, R4
8AB3E:  ADDS            R3, #1
8AB40:  SUBS            R2, #1
8AB42:  LDR.W           R0, [R5,R0,LSL#2]
8AB46:  EOR.W           R1, R0, R1,LSR#8
8AB4A:  ADDS            R0, R2, #1
8AB4C:  BEQ             loc_8AB6C
8AB4E:  LDRB.W          R0, [R3,#-1]
8AB52:  CMP             R0, #0x23 ; '#'
8AB54:  BNE             loc_8AB3A
8AB56:  CMP             R2, #2
8AB58:  BCC             loc_8AB3A
8AB5A:  LDRB            R4, [R3]
8AB5C:  CMP             R4, #0x23 ; '#'
8AB5E:  BNE             loc_8AB3A
8AB60:  LDRB            R4, [R3,#1]
8AB62:  CMP             R4, #0x23 ; '#'
8AB64:  IT EQ
8AB66:  MOVEQ           R1, R12
8AB68:  B               loc_8AB3A
8AB6A:  MOV             R1, R12
8AB6C:  LDR             R0, =(dword_1ACF68 - 0x8AB76)
8AB6E:  MOVW            R3, #0x19D0
8AB72:  ADD             R0, PC; dword_1ACF68
8AB74:  LDR             R0, [R0]
8AB76:  ADDS            R2, R0, R3
8AB78:  LDR             R3, [R0,R3]
8AB7A:  MVNS            R0, R1
8AB7C:  CMP             R3, R0
8AB7E:  IT EQ
8AB80:  STREQ           R0, [R2,#4]
8AB82:  LDR             R1, [R2,#0x2C]
8AB84:  CMP             R1, R0
8AB86:  ITT EQ
8AB88:  MOVEQ           R1, #1
8AB8A:  STRBEQ.W        R1, [R2,#0x30]
8AB8E:  POP             {R4,R5,R7,PC}
