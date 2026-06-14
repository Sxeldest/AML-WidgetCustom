; =========================================================
; Game Engine Function: sub_ED150
; Address            : 0xED150 - 0xED1B2
; =========================================================

ED150:  CMP             R0, #6; switch 7 cases
ED152:  IT HI
ED154:  BXHI            LR
ED156:  PUSH            {R7,LR}
ED158:  MOV             R7, SP
ED15A:  TBB.W           [PC,R0]; switch jump
ED15E:  DCB 4; jump table for switch statement
ED15F:  DCB 9
ED160:  DCB 0xE
ED161:  DCB 0x13
ED162:  DCB 0x18
ED163:  DCB 0x1D
ED164:  DCB 0x22
ED165:  ALIGN 2
ED166:  BL              sub_ECDE8; jumptable 000ED15A case 0
ED16A:  LDR             R0, =(unk_23DC48 - 0xED170)
ED16C:  ADD             R0, PC; unk_23DC48
ED16E:  B               loc_ED1AA
ED170:  BL              sub_ECE98; jumptable 000ED15A case 1
ED174:  LDR             R0, =(unk_23DC88 - 0xED17A)
ED176:  ADD             R0, PC; unk_23DC88
ED178:  B               loc_ED1AA
ED17A:  BL              sub_ECF80; jumptable 000ED15A case 2
ED17E:  LDR             R0, =(unk_23DD08 - 0xED184)
ED180:  ADD             R0, PC; unk_23DD08
ED182:  B               loc_ED1AA
ED184:  BL              sub_ECF0C; jumptable 000ED15A case 3
ED188:  LDR             R0, =(unk_23DCC8 - 0xED18E)
ED18A:  ADD             R0, PC; unk_23DCC8
ED18C:  B               loc_ED1AA
ED18E:  BL              sub_ECFF4; jumptable 000ED15A case 4
ED192:  LDR             R0, =(unk_23DD48 - 0xED198)
ED194:  ADD             R0, PC; unk_23DD48
ED196:  B               loc_ED1AA
ED198:  BL              sub_ED068; jumptable 000ED15A case 5
ED19C:  LDR             R0, =(unk_23DD88 - 0xED1A2)
ED19E:  ADD             R0, PC; unk_23DD88
ED1A0:  B               loc_ED1AA
ED1A2:  BL              sub_ED0DC; jumptable 000ED15A case 6
ED1A6:  LDR             R0, =(unk_23DDC8 - 0xED1AC)
ED1A8:  ADD             R0, PC; unk_23DDC8
ED1AA:  POP.W           {R7,LR}
ED1AE:  B.W             sub_ED1D0
