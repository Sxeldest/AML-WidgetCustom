; =========================================================
; Game Engine Function: sub_EBF60
; Address            : 0xEBF60 - 0xEC07A
; =========================================================

EBF60:  PUSH            {R4-R7,LR}
EBF62:  ADD             R7, SP, #0xC
EBF64:  PUSH.W          {R8-R11}
EBF68:  PUSH.W          {R2}
EBF6C:  LDR.W           R9, [R7,#arg_0]
EBF70:  ADD.W           R8, R0, #4
EBF74:  MOV             R11, R1
EBF76:  MOV             R5, R0
EBF78:  CMP             R8, R1
EBF7A:  BEQ             loc_EBF92
EBF7C:  ADD.W           R10, R5, #8
EBF80:  ADD.W           R6, R11, #0x10
EBF84:  MOV             R1, R9
EBF86:  MOV             R4, R3
EBF88:  MOV             R0, R10
EBF8A:  MOV             R2, R6
EBF8C:  BL              sub_EA270
EBF90:  CBZ             R0, loc_EBFAC
EBF92:  LDR             R0, [R5]
EBF94:  CMP             R0, R11
EBF96:  BEQ             loc_EBFCA
EBF98:  LDR.W           R1, [R11]
EBF9C:  ADD.W           R0, R5, #8
EBFA0:  CBZ             R1, loc_EBFCE
EBFA2:  MOV             R4, R1
EBFA4:  LDR             R1, [R1,#4]
EBFA6:  CMP             R1, #0
EBFA8:  BNE             loc_EBFA2
EBFAA:  B               loc_EBFEA
EBFAC:  MOV             R0, R10
EBFAE:  MOV             R1, R6
EBFB0:  MOV             R2, R9
EBFB2:  BL              sub_EA270
EBFB6:  CBZ             R0, loc_EC00E
EBFB8:  MOV             R6, R11
EBFBA:  LDR.W           R0, [R6,#4]!
EBFBE:  CBZ             R0, loc_EC01A
EBFC0:  MOV             R4, R0
EBFC2:  LDR             R0, [R0]
EBFC4:  CMP             R0, #0
EBFC6:  BNE             loc_EBFC0
EBFC8:  B               loc_EC034
EBFCA:  MOV             R4, R11
EBFCC:  B               loc_EBFF6
EBFCE:  MOV             R1, R11
EBFD0:  LDR.W           R2, [R1,#8]!
EBFD4:  LDR             R2, [R2]
EBFD6:  CMP             R2, R11
EBFD8:  BNE             loc_EBFE8
EBFDA:  LDR             R2, [R1]
EBFDC:  MOV             R1, R2
EBFDE:  LDR.W           R3, [R1,#8]!
EBFE2:  LDR             R3, [R3]
EBFE4:  CMP             R3, R2
EBFE6:  BEQ             loc_EBFDA
EBFE8:  LDR             R4, [R1]
EBFEA:  ADD.W           R1, R4, #0x10
EBFEE:  MOV             R2, R9
EBFF0:  BL              sub_EA270
EBFF4:  CBZ             R0, loc_EC05C
EBFF6:  LDR.W           R0, [R11]
EBFFA:  CBZ             R0, loc_EC006
EBFFC:  LDR             R0, [SP,#0x20+var_20]
EBFFE:  ADD.W           R11, R4, #4
EC002:  STR             R4, [R0]
EC004:  B               loc_EC052
EC006:  LDR             R0, [SP,#0x20+var_20]
EC008:  STR.W           R11, [R0]
EC00C:  B               loc_EC052
EC00E:  LDR             R0, [SP,#0x20+var_20]
EC010:  STR.W           R11, [R0]
EC014:  STR.W           R11, [R4]
EC018:  B               loc_EC050
EC01A:  MOV             R0, R11
EC01C:  LDR.W           R4, [R0,#8]!
EC020:  LDR             R1, [R4]
EC022:  CMP             R1, R11
EC024:  BEQ             loc_EC034
EC026:  LDR             R1, [R0]
EC028:  MOV             R0, R1
EC02A:  LDR.W           R4, [R0,#8]!
EC02E:  LDR             R2, [R4]
EC030:  CMP             R2, R1
EC032:  BNE             loc_EC026
EC034:  CMP             R4, R8
EC036:  BEQ             loc_EC046
EC038:  ADD.W           R2, R4, #0x10
EC03C:  MOV             R0, R10
EC03E:  MOV             R1, R9
EC040:  BL              sub_EA270
EC044:  CBZ             R0, loc_EC05C
EC046:  LDR.W           R0, [R11,#4]
EC04A:  CBZ             R0, loc_EC070
EC04C:  LDR             R0, [SP,#0x20+var_20]
EC04E:  STR             R4, [R0]
EC050:  MOV             R11, R4
EC052:  MOV             R0, R11
EC054:  ADD             SP, SP, #4
EC056:  POP.W           {R8-R11}
EC05A:  POP             {R4-R7,PC}
EC05C:  MOV             R0, R5
EC05E:  LDR             R1, [SP,#0x20+var_20]
EC060:  MOV             R2, R9
EC062:  ADD             SP, SP, #4
EC064:  POP.W           {R8-R11}
EC068:  POP.W           {R4-R7,LR}
EC06C:  B.W             sub_EA184
EC070:  LDR             R0, [SP,#0x20+var_20]
EC072:  STR.W           R11, [R0]
EC076:  MOV             R11, R6
EC078:  B               loc_EC052
