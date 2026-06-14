; =========================================================
; Game Engine Function: sub_107020
; Address            : 0x107020 - 0x107074
; =========================================================

107020:  PUSH            {R4,R5,R7,LR}
107022:  ADD             R7, SP, #8
107024:  MOV             R4, R0
107026:  LDR             R5, [R0,#4]
107028:  BL              sub_F83C8
10702C:  LDRB.W          R0, [R5,#0x60]
107030:  BL              sub_F8400
107034:  LDR             R0, [R5,#0x5C]
107036:  LDRB.W          R1, [R0,#0x485]
10703A:  LSLS            R1, R1, #0x1F
10703C:  BNE             loc_107044
10703E:  LDR             R1, [R4,#8]
107040:  LDRB            R1, [R1]
107042:  CBZ             R1, loc_10705E
107044:  LDR             R1, =(off_23494C - 0x107054)
107046:  MOVW            R5, #0x51AD
10704A:  LDR             R2, [R4,#0xC]
10704C:  MOVT            R5, #0x4A ; 'J'
107050:  ADD             R1, PC; off_23494C
107052:  LDR             R1, [R1]; dword_23DF24
107054:  LDR             R3, [R1]
107056:  LDRB            R1, [R2]
107058:  ADDS            R2, R3, R5
10705A:  BLX             R2
10705C:  B               loc_10706C
10705E:  LDR             R2, [R4,#0xC]
107060:  LDR             R0, =(unk_B3B10 - 0x10706A)
107062:  LDR             R1, [R5,#8]
107064:  LDRB            R2, [R2]
107066:  ADD             R0, PC; unk_B3B10
107068:  BL              sub_107188
10706C:  POP.W           {R4,R5,R7,LR}
107070:  B.W             sub_F8390
