; =========================================================
; Game Engine Function: sub_9BE2C
; Address            : 0x9BE2C - 0x9BF22
; =========================================================

9BE2C:  PUSH            {R4-R7,LR}
9BE2E:  ADD             R7, SP, #0xC
9BE30:  PUSH.W          {R8-R11}
9BE34:  SUB             SP, SP, #0x14
9BE36:  MOV             R4, R0
9BE38:  LDR             R0, =(__stack_chk_guard_ptr - 0x9BE3E)
9BE3A:  ADD             R0, PC; __stack_chk_guard_ptr
9BE3C:  LDR             R0, [R0]; __stack_chk_guard
9BE3E:  LDR             R0, [R0]
9BE40:  STR             R0, [SP,#0x30+var_20]
9BE42:  LDR             R0, [R4,#0x40]
9BE44:  CBZ             R0, loc_9BE52
9BE46:  LDR             R1, [R4,#0x48]
9BE48:  ADD.W           R0, R1, R0,LSL#4
9BE4C:  SUB.W           R9, R0, #0x10
9BE50:  B               loc_9BE58
9BE52:  LDR             R0, [R4,#0x28]
9BE54:  ADD.W           R9, R0, #0x14
9BE58:  LDR             R5, [R4]
9BE5A:  MOV             R1, SP
9BE5C:  LDR             R0, [R4,#8]
9BE5E:  VLD1.32         {D16-D17}, [R9]
9BE62:  CMP             R5, #1
9BE64:  VST1.64         {D16-D17}, [R1,#0x30+var_30]
9BE68:  BLT             loc_9BE92
9BE6A:  CBZ             R0, loc_9BE92
9BE6C:  SUB.W           R8, R5, #1
9BE70:  ADD.W           R1, R8, R8,LSL#2
9BE74:  ADD.W           R11, R0, R1,LSL#3
9BE78:  LDR.W           R6, [R11]
9BE7C:  CBZ             R6, loc_9BE8C
9BE7E:  ADD.W           R0, R11, #4; s1
9BE82:  MOV             R1, SP; s2
9BE84:  MOVS            R2, #0x10; n
9BE86:  BLX             memcmp
9BE8A:  CBNZ            R0, loc_9BE92
9BE8C:  LDR.W           R0, [R11,#0x20]
9BE90:  CBZ             R0, loc_9BEB4
9BE92:  LDR             R0, [SP,#0x30+var_20]
9BE94:  LDR             R1, =(__stack_chk_guard_ptr - 0x9BE9A)
9BE96:  ADD             R1, PC; __stack_chk_guard_ptr
9BE98:  LDR             R1, [R1]; __stack_chk_guard
9BE9A:  LDR             R1, [R1]
9BE9C:  CMP             R1, R0
9BE9E:  ITTTT EQ
9BEA0:  MOVEQ           R0, R4
9BEA2:  ADDEQ           SP, SP, #0x14
9BEA4:  POPEQ.W         {R8-R11}
9BEA8:  POPEQ.W         {R4-R7,LR}
9BEAC:  IT EQ
9BEAE:  BEQ.W           sub_9BD30
9BEB2:  B               loc_9BF18
9BEB4:  MOV.W           R10, #0
9BEB8:  CMP             R5, #1
9BEBA:  IT HI
9BEBC:  SUBHI.W         R10, R11, #0x28 ; '('
9BEC0:  CBNZ            R6, loc_9BEF6
9BEC2:  CMP             R5, #2
9BEC4:  BCC             loc_9BEF6
9BEC6:  ADD.W           R0, R10, #4; s1
9BECA:  MOV             R1, SP; s2
9BECC:  MOVS            R2, #0x10; n
9BECE:  BLX             memcmp
9BED2:  CBNZ            R0, loc_9BEF6
9BED4:  LDR             R1, [R4,#0x4C]
9BED6:  LDR.W           R0, [R10,#0x14]
9BEDA:  CBZ             R1, loc_9BEE8
9BEDC:  LDR             R2, [R4,#0x54]
9BEDE:  ADD.W           R1, R2, R1,LSL#2
9BEE2:  LDR.W           R1, [R1,#-4]
9BEE6:  B               loc_9BEEA
9BEE8:  MOVS            R1, #0
9BEEA:  CMP             R0, R1
9BEEC:  ITT EQ
9BEEE:  LDREQ.W         R0, [R10,#0x20]
9BEF2:  CMPEQ           R0, #0
9BEF4:  BEQ             loc_9BF1C
9BEF6:  VLD1.32         {D16-D17}, [R9]
9BEFA:  ADD.W           R0, R11, #4
9BEFE:  VST1.32         {D16-D17}, [R0]
9BF02:  LDR             R0, [SP,#0x30+var_20]
9BF04:  LDR             R1, =(__stack_chk_guard_ptr - 0x9BF0A)
9BF06:  ADD             R1, PC; __stack_chk_guard_ptr
9BF08:  LDR             R1, [R1]; __stack_chk_guard
9BF0A:  LDR             R1, [R1]
9BF0C:  CMP             R1, R0
9BF0E:  ITTT EQ
9BF10:  ADDEQ           SP, SP, #0x14
9BF12:  POPEQ.W         {R8-R11}
9BF16:  POPEQ           {R4-R7,PC}
9BF18:  BLX             __stack_chk_fail
9BF1C:  STR.W           R8, [R4]
9BF20:  B               loc_9BF02
