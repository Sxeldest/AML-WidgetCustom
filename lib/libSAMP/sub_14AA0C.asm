; =========================================================
; Game Engine Function: sub_14AA0C
; Address            : 0x14AA0C - 0x14AAD4
; =========================================================

14AA0C:  PUSH            {R4-R7,LR}
14AA0E:  ADD             R7, SP, #0xC
14AA10:  PUSH.W          {R11}
14AA14:  MOV             R4, R0
14AA16:  LDR.W           R0, [R0,#0x128]
14AA1A:  CMP             R0, #0
14AA1C:  BEQ             loc_14AAB6
14AA1E:  LDR             R1, =(off_23496C - 0x14AA24)
14AA20:  ADD             R1, PC; off_23496C
14AA22:  LDR             R1, [R1]; dword_23DEF4
14AA24:  LDR             R1, [R1]
14AA26:  LDR.W           R1, [R1,#0x3B0]
14AA2A:  LDR             R5, [R1,#4]
14AA2C:  BL              sub_104108
14AA30:  CMP             R0, #0
14AA32:  BNE             loc_14AAB6
14AA34:  LDRH            R6, [R4,#0x16]
14AA36:  LSRS            R0, R6, #4
14AA38:  CMP             R0, #0x7C ; '|'
14AA3A:  BHI             loc_14AAB6
14AA3C:  MOV             R0, R5
14AA3E:  MOV             R1, R6
14AA40:  BL              sub_F2396
14AA44:  CBZ             R0, loc_14AAB6
14AA46:  LDR.W           R0, [R5,R6,LSL#2]
14AA4A:  CBZ             R0, loc_14AAB6
14AA4C:  LDRB.W          R0, [R4,#0x24]
14AA50:  ADD.W           R1, R4, #0xFB
14AA54:  CMP             R0, #0
14AA56:  IT EQ
14AA58:  ADDEQ.W         R1, R4, #0xEE
14AA5C:  LDR.W           R0, [R4,#0x128]
14AA60:  LDRB            R1, [R1]
14AA62:  AND.W           R6, R1, #0x3F ; '?'
14AA66:  BL              sub_104648
14AA6A:  CMP             R0, R6
14AA6C:  BEQ             loc_14AAA0
14AA6E:  LDR.W           R0, [R4,#0x128]
14AA72:  MOV             R1, R6
14AA74:  MOVS            R2, #0
14AA76:  BL              sub_10479C
14AA7A:  LDR.W           R0, [R4,#0x128]
14AA7E:  BL              sub_104648
14AA82:  CMP             R0, R6
14AA84:  BEQ             loc_14AAA0
14AA86:  LDR.W           R0, [R4,#0x128]
14AA8A:  MOV             R1, R6
14AA8C:  MOVW            R2, #0x270F
14AA90:  BL              sub_104950
14AA94:  LDR.W           R0, [R4,#0x128]
14AA98:  MOV             R1, R6
14AA9A:  MOVS            R2, #0
14AA9C:  BL              sub_10479C
14AAA0:  LDRH            R0, [R4,#0x16]
14AAA2:  MOV.W           R1, #0x1F40
14AAA6:  ADD.W           R0, R5, R0,LSL#2
14AAAA:  LDR             R0, [R0,R1]
14AAAC:  CBZ             R0, loc_14AABC
14AAAE:  BL              sub_10833C
14AAB2:  MOV             R1, R0
14AAB4:  B               loc_14AAC0
14AAB6:  POP.W           {R11}
14AABA:  POP             {R4-R7,PC}
14AABC:  MOVW            R1, #0xFFFF
14AAC0:  LDRB.W          R2, [R4,#0x24]
14AAC4:  LDR.W           R0, [R4,#0x128]
14AAC8:  POP.W           {R11}
14AACC:  POP.W           {R4-R7,LR}
14AAD0:  B.W             sub_105204
