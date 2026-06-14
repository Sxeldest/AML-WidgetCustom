; =========================================================
; Game Engine Function: sub_219B40
; Address            : 0x219B40 - 0x219CC2
; =========================================================

219B40:  PUSH            {R4-R7,LR}
219B42:  ADD             R7, SP, #0xC
219B44:  PUSH.W          {R4-R9,R11}
219B48:  MOV             R4, R0
219B4A:  LDR             R0, =(__stack_chk_guard_ptr - 0x219B50)
219B4C:  ADD             R0, PC; __stack_chk_guard_ptr
219B4E:  LDR             R0, [R0]; __stack_chk_guard
219B50:  LDR             R0, [R0]
219B52:  STR             R0, [SP,#0x28+var_1C]
219B54:  MOVS            R0, #0
219B56:  STR             R0, [SP,#0x28+var_20]
219B58:  MOV             R0, R4
219B5A:  LDR             R1, =(aSrn - 0x219B60); "srN" ...
219B5C:  ADD             R1, PC; "srN"
219B5E:  ADDS            R2, R1, #3
219B60:  BL              sub_2155E4
219B64:  CBZ             R0, loc_219BCA
219B66:  MOV             R0, R4
219B68:  BL              sub_21B354
219B6C:  CMP             R0, #0
219B6E:  STR             R0, [SP,#0x28+var_20]
219B70:  BEQ.W           loc_219CA6
219B74:  LDRD.W          R0, R1, [R4]
219B78:  CMP             R1, R0
219B7A:  BEQ             loc_219B9E
219B7C:  LDRB            R0, [R0]
219B7E:  CMP             R0, #0x49 ; 'I'
219B80:  BNE             loc_219B9E
219B82:  MOV             R0, R4
219B84:  MOVS            R1, #0
219B86:  BL              sub_217130
219B8A:  CMP             R0, #0
219B8C:  STR             R0, [SP,#0x28+var_24]
219B8E:  BEQ.W           loc_219CA6
219B92:  ADD             R1, SP, #0x28+var_20
219B94:  ADD             R2, SP, #0x28+var_24
219B96:  MOV             R0, R4
219B98:  BL              sub_2173BC
219B9C:  STR             R0, [SP,#0x28+var_20]
219B9E:  ADD             R5, SP, #0x28+var_20
219BA0:  ADD             R6, SP, #0x28+var_24
219BA2:  LDRD.W          R0, R1, [R4]
219BA6:  CMP             R0, R1
219BA8:  BEQ             loc_219BB0
219BAA:  LDRB            R1, [R0]
219BAC:  CMP             R1, #0x45 ; 'E'
219BAE:  BEQ             loc_219C8C
219BB0:  MOV             R0, R4
219BB2:  BL              sub_21B3E0
219BB6:  CMP             R0, #0
219BB8:  STR             R0, [SP,#0x28+var_24]
219BBA:  BEQ             loc_219CA6
219BBC:  MOV             R0, R4
219BBE:  MOV             R1, R5
219BC0:  MOV             R2, R6
219BC2:  BL              sub_21B448
219BC6:  STR             R0, [SP,#0x28+var_20]
219BC8:  B               loc_219BA2
219BCA:  LDR             R1, =(aGs - 0x219BD2); "gs" ...
219BCC:  MOV             R0, R4
219BCE:  ADD             R1, PC; "gs"
219BD0:  ADDS            R2, R1, #2
219BD2:  BL              sub_2155E4
219BD6:  LDR             R1, =(aSr_0 - 0x219BE0); "sr" ...
219BD8:  MOV             R5, R0
219BDA:  MOV             R0, R4
219BDC:  ADD             R1, PC; "sr"
219BDE:  ADDS            R2, R1, #2
219BE0:  BL              sub_2155E4
219BE4:  CBZ             R0, loc_219C2E
219BE6:  LDRD.W          R0, R1, [R4]
219BEA:  CMP             R1, R0
219BEC:  BEQ             loc_219BF8
219BEE:  LDRB            R0, [R0]
219BF0:  SUBS            R0, #0x3A ; ':'
219BF2:  CMN.W           R0, #0xA
219BF6:  BCS             loc_219C4E
219BF8:  MOV             R0, R4
219BFA:  BL              sub_21B354
219BFE:  CMP             R0, #0
219C00:  STR             R0, [SP,#0x28+var_20]
219C02:  BEQ             loc_219CA6
219C04:  LDRD.W          R0, R1, [R4]
219C08:  CMP             R1, R0
219C0A:  BEQ             loc_219C90
219C0C:  LDRB            R0, [R0]
219C0E:  CMP             R0, #0x49 ; 'I'
219C10:  BNE             loc_219C90
219C12:  MOV             R0, R4
219C14:  MOVS            R1, #0
219C16:  BL              sub_217130
219C1A:  CMP             R0, #0
219C1C:  STR             R0, [SP,#0x28+var_24]
219C1E:  BEQ             loc_219CA6
219C20:  ADD             R1, SP, #0x28+var_20
219C22:  ADD             R2, SP, #0x28+var_24
219C24:  MOV             R0, R4
219C26:  BL              sub_2173BC
219C2A:  STR             R0, [SP,#0x28+var_20]
219C2C:  B               loc_219C90
219C2E:  MOV             R0, R4
219C30:  BL              sub_21B478
219C34:  CLZ.W           R2, R0
219C38:  EOR.W           R1, R5, #1
219C3C:  LSRS            R2, R2, #5
219C3E:  STR             R0, [SP,#0x28+var_20]
219C40:  ORRS            R1, R2
219C42:  BNE             loc_219CA8
219C44:  ADD             R1, SP, #0x28+var_20
219C46:  MOV             R0, R4
219C48:  BL              sub_21B590
219C4C:  B               loc_219CA8
219C4E:  ADD.W           R9, SP, #0x28+var_24
219C52:  ADD.W           R8, SP, #0x28+var_20
219C56:  MOVS            R6, #0
219C58:  MOV             R0, R4
219C5A:  BL              sub_21B3E0
219C5E:  STR             R0, [SP,#0x28+var_24]
219C60:  CBZ             R0, loc_219CA6
219C62:  CBZ             R6, loc_219C70
219C64:  MOV             R0, R4
219C66:  MOV             R1, R8
219C68:  MOV             R2, R9
219C6A:  BL              sub_21B448
219C6E:  B               loc_219C7A
219C70:  CBZ             R5, loc_219C7A
219C72:  MOV             R0, R4
219C74:  MOV             R1, R9
219C76:  BL              sub_21B590
219C7A:  MOV             R6, R0
219C7C:  STR             R0, [SP,#0x28+var_20]
219C7E:  LDRD.W          R0, R1, [R4]
219C82:  CMP             R0, R1
219C84:  BEQ             loc_219C58
219C86:  LDRB            R1, [R0]
219C88:  CMP             R1, #0x45 ; 'E'
219C8A:  BNE             loc_219C58
219C8C:  ADDS            R0, #1
219C8E:  STR             R0, [R4]
219C90:  MOV             R0, R4
219C92:  BL              sub_21B478
219C96:  STR             R0, [SP,#0x28+var_24]
219C98:  CBZ             R0, loc_219CA6
219C9A:  ADD             R1, SP, #0x28+var_20
219C9C:  ADD             R2, SP, #0x28+var_24
219C9E:  MOV             R0, R4
219CA0:  BL              sub_21B448
219CA4:  B               loc_219CA8
219CA6:  MOVS            R0, #0
219CA8:  LDR             R1, [SP,#0x28+var_1C]
219CAA:  LDR             R2, =(__stack_chk_guard_ptr - 0x219CB0)
219CAC:  ADD             R2, PC; __stack_chk_guard_ptr
219CAE:  LDR             R2, [R2]; __stack_chk_guard
219CB0:  LDR             R2, [R2]
219CB2:  CMP             R2, R1
219CB4:  ITTT EQ
219CB6:  ADDEQ           SP, SP, #0x10
219CB8:  POPEQ.W         {R8,R9,R11}
219CBC:  POPEQ           {R4-R7,PC}
219CBE:  BLX             __stack_chk_fail
