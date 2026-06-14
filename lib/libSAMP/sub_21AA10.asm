; =========================================================
; Game Engine Function: sub_21AA10
; Address            : 0x21AA10 - 0x21AB46
; =========================================================

21AA10:  PUSH            {R4-R7,LR}
21AA12:  ADD             R7, SP, #0xC
21AA14:  PUSH.W          {R8-R10}
21AA18:  MOV             R4, R0
21AA1A:  LDRD.W          R6, R0, [R0,#4]
21AA1E:  MOV             R8, R1
21AA20:  CMP             R6, R0
21AA22:  BNE             loc_21AA70
21AA24:  MOV             R0, R4
21AA26:  LDR.W           R9, [R0],#0xC
21AA2A:  SUB.W           R10, R6, R9
21AA2E:  CMP             R9, R0
21AA30:  BEQ             loc_21AA44
21AA32:  MOV.W           R1, R10,LSL#1; size
21AA36:  MOV             R0, R9; ptr
21AA38:  BLX             realloc
21AA3C:  MOV             R5, R0
21AA3E:  STR             R0, [R4]
21AA40:  CBNZ            R0, loc_21AA5C
21AA42:  B               loc_21AA80
21AA44:  MOV.W           R0, R10,LSL#1; size
21AA48:  BLX             malloc
21AA4C:  CBZ             R0, loc_21AA80
21AA4E:  MOV             R5, R0
21AA50:  MOV             R0, R9; src
21AA52:  MOV             R1, R6; int
21AA54:  MOV             R2, R5; dest
21AA56:  BL              sub_21AB64
21AA5A:  STR             R5, [R4]
21AA5C:  MOV.W           R0, R10,ASR#1
21AA60:  MOV.W           R1, R10,ASR#2
21AA64:  ADD.W           R6, R5, R1,LSL#2
21AA68:  ADD.W           R0, R5, R0,LSL#2
21AA6C:  STRD.W          R6, R0, [R4,#4]
21AA70:  LDR.W           R0, [R8]
21AA74:  ADDS            R1, R6, #4
21AA76:  STR             R1, [R4,#4]
21AA78:  STR             R0, [R6]
21AA7A:  POP.W           {R8-R10}
21AA7E:  POP             {R4-R7,PC}
21AA80:  BLX             j__ZSt9terminatev; std::terminate(void)
21AA84:  PUSH            {R4-R7,LR}
21AA86:  ADD             R7, SP, #0xC
21AA88:  PUSH.W          {R0-R9,R11}
21AA8C:  MOV             R5, R0
21AA8E:  LDR             R0, =(__stack_chk_guard_ptr - 0x21AA96)
21AA90:  MOV             R9, R1
21AA92:  ADD             R0, PC; __stack_chk_guard_ptr
21AA94:  LDR             R0, [R0]; __stack_chk_guard
21AA96:  LDR             R0, [R0]
21AA98:  STR             R0, [SP,#0x58+var_3C]
21AA9A:  LDR             R0, [R5,#8]
21AA9C:  CBZ             R0, loc_21AAAC
21AA9E:  CMP             R0, #2
21AAA0:  BEQ             loc_21AAB4
21AAA2:  CMP             R0, #1
21AAA4:  BNE             loc_21AAC0
21AAA6:  LDR             R1, =(aN - 0x21AAAC); "$N" ...
21AAA8:  ADD             R1, PC; "$N"
21AAAA:  B               loc_21AAB0
21AAAC:  LDR             R1, =(aT_0 - 0x21AAB2); "$T" ...
21AAAE:  ADD             R1, PC; "$T"
21AAB0:  ADDS            R2, R1, #2
21AAB2:  B               loc_21AABA
21AAB4:  LDR             R1, =(aTt - 0x21AABA); "$TT" ...
21AAB6:  ADD             R1, PC; "$TT"
21AAB8:  ADDS            R2, R1, #3
21AABA:  MOV             R0, R9
21AABC:  BL              sub_216F98
21AAC0:  LDR             R0, [R5,#0xC]
21AAC2:  CBZ             R0, loc_21AB08
21AAC4:  SUBS            R6, R0, #1
21AAC6:  BEQ             loc_21AB22
21AAC8:  SUB.W           R0, R7, #-var_31
21AACC:  MOVS            R1, #0
21AACE:  ADD.W           R8, R0, #0x15
21AAD2:  ADD.W           R4, R0, #0x14
21AAD6:  MOV             R5, R8
21AAD8:  ORRS.W          R0, R6, R1
21AADC:  BEQ             loc_21AAFE
21AADE:  MOV             R0, R6
21AAE0:  MOVS            R2, #0xA
21AAE2:  MOVS            R3, #0
21AAE4:  BLX             sub_2217B4
21AAE8:  ADD.W           R2, R0, R0,LSL#2
21AAEC:  SUBS            R5, #1
21AAEE:  SUB.W           R2, R6, R2,LSL#1
21AAF2:  MOV             R6, R0
21AAF4:  ORR.W           R2, R2, #0x30 ; '0'
21AAF8:  STRB.W          R2, [R4],#-1
21AAFC:  B               loc_21AAD8
21AAFE:  MOV             R0, R9
21AB00:  MOV             R1, R5
21AB02:  MOV             R2, R8
21AB04:  BL              sub_216F98
21AB08:  LDR             R0, [SP,#0x58+var_3C]
21AB0A:  LDR             R1, =(__stack_chk_guard_ptr - 0x21AB10)
21AB0C:  ADD             R1, PC; __stack_chk_guard_ptr
21AB0E:  LDR             R1, [R1]; __stack_chk_guard
21AB10:  LDR             R1, [R1]
21AB12:  CMP             R1, R0
21AB14:  ITTT EQ
21AB16:  ADDEQ           SP, SP, #0x20 ; ' '
21AB18:  POPEQ.W         {R8,R9,R11}
21AB1C:  POPEQ           {R4-R7,PC}
21AB1E:  BLX             __stack_chk_fail
21AB22:  LDR             R0, [SP,#0x58+var_3C]
21AB24:  LDR             R1, =(__stack_chk_guard_ptr - 0x21AB2A)
21AB26:  ADD             R1, PC; __stack_chk_guard_ptr
21AB28:  LDR             R1, [R1]; __stack_chk_guard
21AB2A:  LDR             R1, [R1]
21AB2C:  CMP             R1, R0
21AB2E:  ITTTT EQ
21AB30:  MOVEQ           R0, R9
21AB32:  MOVEQ           R1, #0x30 ; '0'
21AB34:  ADDEQ           SP, SP, #0x20 ; ' '
21AB36:  POPEQ.W         {R8,R9,R11}
21AB3A:  ITT EQ
21AB3C:  POPEQ.W         {R4-R7,LR}
21AB40:  BEQ.W           sub_2154F2
21AB44:  B               loc_21AB1E
