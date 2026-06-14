; =========================================================
; Game Engine Function: sub_DDF34
; Address            : 0xDDF34 - 0xDDFBE
; =========================================================

DDF34:  PUSH            {R4-R7,LR}
DDF36:  ADD             R7, SP, #0xC
DDF38:  PUSH.W          {R8,R9,R11}
DDF3C:  MOV             R4, R0
DDF3E:  LDR             R0, =(unk_91D40 - 0xDDF4C)
DDF40:  LDRH.W          R2, [R1,#9]
DDF44:  ADD.W           R8, R1, #0xB
DDF48:  ADD             R0, PC; unk_91D40
DDF4A:  LDR             R6, [R1]
DDF4C:  AND.W           R2, R2, #0xF
DDF50:  LDR.W           R9, [R7,#arg_0]
DDF54:  SUBS            R5, R6, R3
DDF56:  LDRB            R0, [R0,R2]
DDF58:  IT CC
DDF5A:  MOVCC           R5, #0
DDF5C:  LSRS.W          R6, R5, R0
DDF60:  BEQ             loc_DDF6E
DDF62:  MOV             R0, R4
DDF64:  MOV             R1, R6
DDF66:  MOV             R2, R8
DDF68:  BL              sub_DD992
DDF6C:  MOV             R4, R0
DDF6E:  LDRB.W          R0, [R9]
DDF72:  SUBS            R6, R5, R6
DDF74:  CBZ             R0, loc_DDF84
DDF76:  LDRB.W          R1, [R9,#1]
DDF7A:  MOV             R0, R4
DDF7C:  BL              sub_DDFC4
DDF80:  MOV             R4, R0
DDF82:  B               loc_DDFA4
DDF84:  LDRD.W          R0, R2, [R4,#8]
DDF88:  ADDS            R1, R0, #1
DDF8A:  CMP             R2, R1
DDF8C:  BCS             loc_DDF9A
DDF8E:  LDR             R0, [R4]
DDF90:  LDR             R2, [R0]
DDF92:  MOV             R0, R4
DDF94:  BLX             R2
DDF96:  LDR             R0, [R4,#8]
DDF98:  ADDS            R1, R0, #1
DDF9A:  LDR             R2, [R4,#4]
DDF9C:  LDRB.W          R3, [R9,#1]
DDFA0:  STR             R1, [R4,#8]
DDFA2:  STRB            R3, [R2,R0]
DDFA4:  MOV             R0, R4
DDFA6:  CBZ             R6, loc_DDFB8
DDFA8:  MOV             R1, R6
DDFAA:  MOV             R2, R8
DDFAC:  POP.W           {R8,R9,R11}
DDFB0:  POP.W           {R4-R7,LR}
DDFB4:  B.W             sub_DD992
DDFB8:  POP.W           {R8,R9,R11}
DDFBC:  POP             {R4-R7,PC}
