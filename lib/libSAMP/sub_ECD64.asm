; =========================================================
; Game Engine Function: sub_ECD64
; Address            : 0xECD64 - 0xECDCA
; =========================================================

ECD64:  CMP             R0, #6; switch 7 cases
ECD66:  IT HI
ECD68:  BXHI            LR
ECD6A:  PUSH            {R4,R6,R7,LR}
ECD6C:  ADD             R7, SP, #0x10+var_8
ECD6E:  MOV             R4, R1
ECD70:  TBB.W           [PC,R0]; switch jump
ECD74:  DCB 4; jump table for switch statement
ECD75:  DCB 9
ECD76:  DCB 0xE
ECD77:  DCB 0x13
ECD78:  DCB 0x18
ECD79:  DCB 0x1D
ECD7A:  DCB 0x22
ECD7B:  ALIGN 2
ECD7C:  BL              sub_ECDE8; jumptable 000ECD70 case 0
ECD80:  LDR             R0, =(unk_23DC48 - 0xECD86)
ECD82:  ADD             R0, PC; unk_23DC48
ECD84:  B               loc_ECDC0
ECD86:  BL              sub_ECE98; jumptable 000ECD70 case 1
ECD8A:  LDR             R0, =(unk_23DC88 - 0xECD90)
ECD8C:  ADD             R0, PC; unk_23DC88
ECD8E:  B               loc_ECDC0
ECD90:  BL              sub_ECF80; jumptable 000ECD70 case 2
ECD94:  LDR             R0, =(unk_23DD08 - 0xECD9A)
ECD96:  ADD             R0, PC; unk_23DD08
ECD98:  B               loc_ECDC0
ECD9A:  BL              sub_ECF0C; jumptable 000ECD70 case 3
ECD9E:  LDR             R0, =(unk_23DCC8 - 0xECDA4)
ECDA0:  ADD             R0, PC; unk_23DCC8
ECDA2:  B               loc_ECDC0
ECDA4:  BL              sub_ECFF4; jumptable 000ECD70 case 4
ECDA8:  LDR             R0, =(unk_23DD48 - 0xECDAE)
ECDAA:  ADD             R0, PC; unk_23DD48
ECDAC:  B               loc_ECDC0
ECDAE:  BL              sub_ED068; jumptable 000ECD70 case 5
ECDB2:  LDR             R0, =(unk_23DD88 - 0xECDB8)
ECDB4:  ADD             R0, PC; unk_23DD88
ECDB6:  B               loc_ECDC0
ECDB8:  BL              sub_ED0DC; jumptable 000ECD70 case 6
ECDBC:  LDR             R0, =(unk_23DDC8 - 0xECDC2)
ECDBE:  ADD             R0, PC; unk_23DDC8
ECDC0:  MOV             R1, R4
ECDC2:  POP.W           {R4,R6,R7,LR}
ECDC6:  B.W             sub_ECE5C
