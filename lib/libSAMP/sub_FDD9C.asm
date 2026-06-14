; =========================================================
; Game Engine Function: sub_FDD9C
; Address            : 0xFDD9C - 0xFDED0
; =========================================================

FDD9C:  PUSH            {R4-R7,LR}
FDD9E:  ADD             R7, SP, #0xC
FDDA0:  PUSH.W          {R8-R11}
FDDA4:  SUB             SP, SP, #4
FDDA6:  MOV             R4, R0
FDDA8:  LDR             R0, =(off_23496C - 0xFDDB0)
FDDAA:  MOV             R5, R1
FDDAC:  ADD             R0, PC; off_23496C
FDDAE:  LDR.W           R11, [R0]; dword_23DEF4
FDDB2:  BL              sub_1082E4
FDDB6:  LDR.W           R2, [R11]
FDDBA:  CMP             R2, #0
FDDBC:  BEQ             loc_FDEAA
FDDBE:  MOV             R1, R0
FDDC0:  LDR             R0, [R4]
FDDC2:  CBZ             R5, loc_FDDE0
FDDC4:  CMP             R0, R1
FDDC6:  BEQ             loc_FDDE0
FDDC8:  LDR             R3, =(off_23494C - 0xFDDD8)
FDDCA:  MOVW            R12, #0x8AA4
FDDCE:  LDR             R6, [R5]
FDDD0:  MOVT            R12, #0x66 ; 'f'
FDDD4:  ADD             R3, PC; off_23494C
FDDD6:  LDR             R3, [R3]; dword_23DF24
FDDD8:  LDR             R3, [R3]
FDDDA:  ADD             R3, R12
FDDDC:  CMP             R6, R3
FDDDE:  BEQ             loc_FDEC6
FDDE0:  CMP             R1, R5
FDDE2:  IT NE
FDDE4:  CMPNE           R0, R1
FDDE6:  BNE             loc_FDEAA
FDDE8:  LDR.W           R2, [R2,#0x3B0]
FDDEC:  MOVW            R6, #0x13BC
FDDF0:  CMP             R1, R5
FDDF2:  LDR.W           R10, [R2]
FDDF6:  LDR.W           R8, [R10,R6]
FDDFA:  BEQ             loc_FDE2C
FDDFC:  MOV             R0, R5
FDDFE:  BL              sub_FB50C
FDE02:  MOV             R9, R0
FDE04:  MOVW            R0, #0xFFFF
FDE08:  CMP             R9, R0
FDE0A:  BEQ             loc_FDE4A
FDE0C:  LDRD.W          R2, R0, [R4,#4]
FDE10:  MOV             R1, R9
FDE12:  LDR             R3, [R4,#0xC]
FDE14:  STR             R0, [SP,#0x20+var_20]
FDE16:  MOV             R0, R8
FDE18:  BL              sub_1417BC
FDE1C:  ADD.W           R0, R10, R9,LSL#2
FDE20:  LDR             R0, [R0,#4]
FDE22:  LDR             R0, [R0]
FDE24:  LDRB            R0, [R0,#0x18]
FDE26:  CMP             R0, #0
FDE28:  BNE             loc_FDEC6
FDE2A:  B               loc_FDE72
FDE2C:  BL              sub_FB50C
FDE30:  MOV             R9, R0
FDE32:  LDRD.W          R2, R0, [R4,#4]
FDE36:  LDR             R3, [R4,#0xC]
FDE38:  MOV             R1, R9
FDE3A:  STR             R0, [SP,#0x20+var_20]
FDE3C:  MOV             R0, R8
FDE3E:  BL              sub_1416FC
FDE42:  LDR             R0, [R4,#0xC]
FDE44:  CMP             R0, #0x36 ; '6'
FDE46:  BNE             loc_FDE72
FDE48:  B               loc_FDEC6
FDE4A:  CBZ             R5, loc_FDE6E
FDE4C:  LDR.W           R1, [R11]
FDE50:  MOVW            R2, #0x1388
FDE54:  LDR.W           R1, [R1,#0x3B0]
FDE58:  LDR             R1, [R1,#0x1C]
FDE5A:  ADD             R2, R1
FDE5C:  MOVS            R1, #0
FDE5E:  LDR.W           R3, [R2,R1,LSL#2]
FDE62:  CMP             R3, R5
FDE64:  BEQ             loc_FDEAE
FDE66:  ADDS            R1, #1
FDE68:  CMP.W           R1, #0x3E8
FDE6C:  BNE             loc_FDE5E
FDE6E:  MOVW            R9, #0xFFFF
FDE72:  LDR.W           R0, [R11]
FDE76:  LDR.W           R0, [R0,#0x20C]
FDE7A:  LDRB            R0, [R0,#0x1B]
FDE7C:  CBZ             R0, loc_FDEAA
FDE7E:  MOVW            R1, #0xFFFF
FDE82:  CMP             R9, R1
FDE84:  ITTTT NE
FDE86:  ADDNE.W         R1, R10, R6
FDE8A:  LDRNE           R1, [R1]
FDE8C:  LDRBNE          R1, [R1,#0x12]
FDE8E:  CMPNE           R1, #0xFF
FDE90:  MOV.W           R0, #0
FDE94:  BEQ             loc_FDEC8
FDE96:  ADD.W           R0, R10, R9,LSL#2
FDE9A:  LDR             R0, [R0,#4]
FDE9C:  LDR             R0, [R0]
FDE9E:  LDRB            R0, [R0,#0x12]
FDEA0:  SUBS            R0, R0, R1
FDEA2:  CLZ.W           R0, R0
FDEA6:  LSRS            R0, R0, #5
FDEA8:  B               loc_FDEC8
FDEAA:  MOVS            R0, #0
FDEAC:  B               loc_FDEC8
FDEAE:  UXTH            R1, R1
FDEB0:  CMP             R1, R0
FDEB2:  MOVW            R9, #0xFFFF
FDEB6:  BEQ             loc_FDE72
FDEB8:  LDRD.W          R2, R0, [R4,#4]
FDEBC:  LDR             R3, [R4,#0xC]
FDEBE:  STR             R0, [SP,#0x20+var_20]
FDEC0:  MOV             R0, R8
FDEC2:  BL              sub_14187C
FDEC6:  MOVS            R0, #1
FDEC8:  ADD             SP, SP, #4
FDECA:  POP.W           {R8-R11}
FDECE:  POP             {R4-R7,PC}
