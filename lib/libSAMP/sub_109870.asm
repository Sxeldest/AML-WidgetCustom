; =========================================================
; Game Engine Function: sub_109870
; Address            : 0x109870 - 0x1098EC
; =========================================================

109870:  PUSH            {R4,R5,R7,LR}
109872:  ADD             R7, SP, #8
109874:  LDR             R1, =(_ZTV8CVehicle - 0x10987E); `vtable for'CVehicle ...
109876:  MOV             R4, R0
109878:  LDR             R0, [R0,#8]
10987A:  ADD             R1, PC; `vtable for'CVehicle
10987C:  ADDS            R1, #8
10987E:  STR             R1, [R4]
109880:  BL              sub_108354
109884:  STR             R0, [R4,#0xC]
109886:  CBZ             R0, loc_1098E8
109888:  LDR             R1, [R4,#0x4C]
10988A:  CBZ             R1, loc_109898
10988C:  LDR             R0, =(unk_B3D6E - 0x109892)
10988E:  ADD             R0, PC; unk_B3D6E
109890:  BL              sub_107188
109894:  MOVS            R0, #0
109896:  STR             R0, [R4,#0x4C]
109898:  MOV             R0, R4
10989A:  BL              sub_10990C
10989E:  LDR             R0, [R4,#0x10]
1098A0:  CBZ             R0, loc_1098AC
1098A2:  MOV             R0, R4
1098A4:  BL              sub_1099D0
1098A8:  MOVS            R0, #0
1098AA:  STR             R0, [R4,#0x10]
1098AC:  LDR             R0, [R4,#0xC]
1098AE:  LDRH            R5, [R0,#0x26]
1098B0:  SUBW            R0, R5, #0x219
1098B4:  CMP             R0, #1
1098B6:  BHI             loc_1098C4
1098B8:  LDR             R1, [R4,#8]
1098BA:  LDR             R0, =(unk_B3D82 - 0x1098C0)
1098BC:  ADD             R0, PC; unk_B3D82
1098BE:  BL              sub_107188
1098C2:  B               loc_1098E8
1098C4:  LDR             R2, =(word_263042 - 0x1098CE)
1098C6:  LDR             R0, =(unk_B3D96 - 0x1098D0)
1098C8:  LDR             R1, [R4,#8]
1098CA:  ADD             R2, PC; word_263042
1098CC:  ADD             R0, PC; unk_B3D96
1098CE:  STRH            R5, [R2]
1098D0:  BL              sub_107188
1098D4:  MOV             R0, R5
1098D6:  BL              sub_108454
1098DA:  CBNZ            R0, loc_1098E8
1098DC:  LDRB            R0, [R4,#0x14]
1098DE:  CBNZ            R0, loc_1098E8
1098E0:  MOV             R0, R5
1098E2:  MOVS            R1, #1
1098E4:  BL              sub_F9D44
1098E8:  MOV             R0, R4
1098EA:  POP             {R4,R5,R7,PC}
