; =========================================================
; Game Engine Function: sub_F78EE
; Address            : 0xF78EE - 0xF7950
; =========================================================

F78EE:  PUSH            {R4-R7,LR}
F78F0:  ADD             R7, SP, #0xC
F78F2:  PUSH.W          {R11}
F78F6:  LDRB            R0, [R2]
F78F8:  LDRB            R3, [R1]
F78FA:  LDR             R4, [R2,#4]
F78FC:  ANDS.W          LR, R0, #1
F7900:  LDR             R5, [R1,#4]
F7902:  IT EQ
F7904:  LSREQ           R4, R0, #1
F7906:  ANDS.W          R6, R3, #1
F790A:  IT EQ
F790C:  LSREQ           R5, R3, #1
F790E:  CMP             R4, R5
F7910:  MOV             R3, R5
F7912:  IT CC
F7914:  MOVCC           R3, R4
F7916:  CBZ             R3, loc_F7938
F7918:  LDR             R0, [R1,#8]
F791A:  CMP             R6, #0
F791C:  LDR.W           R12, [R2,#8]
F7920:  IT EQ
F7922:  ADDEQ           R0, R1, #1; s1
F7924:  CMP.W           LR, #0
F7928:  IT EQ
F792A:  ADDEQ.W         R12, R2, #1
F792E:  MOV             R1, R12; s2
F7930:  MOV             R2, R3; n
F7932:  BLX             memcmp
F7936:  CBNZ            R0, loc_F7948
F7938:  MOVS            R0, #0
F793A:  CMP             R4, R5
F793C:  IT CC
F793E:  MOVCC           R0, #1
F7940:  CMP             R5, R4
F7942:  IT CC
F7944:  MOVCC.W         R0, #0xFFFFFFFF
F7948:  LSRS            R0, R0, #0x1F
F794A:  POP.W           {R11}
F794E:  POP             {R4-R7,PC}
