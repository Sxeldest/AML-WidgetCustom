; =========================================================
; Game Engine Function: sub_62758
; Address            : 0x62758 - 0x627EC
; =========================================================

62758:  PUSH            {R4-R7,LR}
6275A:  ADD             R7, SP, #0xC
6275C:  PUSH.W          {R8,R9,R11}
62760:  MOV             R8, R2
62762:  MOV             R9, R1
62764:  MOV             R6, R0
62766:  BL              sub_6C844
6276A:  CBZ             R0, loc_627D6
6276C:  BL              sub_6C844
62770:  LDR             R4, [R0,#8]
62772:  CBNZ            R4, loc_627A0
62774:  MOV             R5, R0
62776:  MOV.W           R0, #0x2F0; unsigned int
6277A:  BLX             j__Znwj; operator new(uint)
6277E:  MOV             R4, R0
62780:  LDR             R0, =(off_114AB0 - 0x62788)
62782:  LDR             R1, =(_ZTV10CPlayerPed - 0x6278A); `vtable for'CPlayerPed ...
62784:  ADD             R0, PC; off_114AB0
62786:  ADD             R1, PC; `vtable for'CPlayerPed
62788:  LDR             R0, [R0]; dword_1A4408
6278A:  ADDS            R1, #8
6278C:  STR             R1, [R4]
6278E:  MOV             R1, #0x103B89
62796:  LDR             R0, [R0]
62798:  ADD             R1, R0
6279A:  MOV             R0, R4
6279C:  BLX             R1
6279E:  STR             R4, [R5,#8]
627A0:  LDR             R0, [R4,#0x5C]
627A2:  CBZ             R0, loc_627D6
627A4:  LDR             R0, [R4,#8]
627A6:  BL              sub_685E0
627AA:  CBZ             R0, loc_627D6
627AC:  LDR             R0, =(unk_50980 - 0x627B6)
627AE:  LDRB.W          R1, [R4,#0x60]
627B2:  ADD             R0, PC; unk_50980
627B4:  BL              sub_682E8
627B8:  BIC.W           R1, R6, #1
627BC:  CMP             R1, #2
627BE:  BNE             loc_627D6
627C0:  CBZ             R0, loc_627D6
627C2:  LDR             R0, =(off_114AA8 - 0x627D0)
627C4:  MOV             R1, #0x2B0CBD
627CC:  ADD             R0, PC; off_114AA8
627CE:  LDR             R0, [R0]; dword_1A4404
627D0:  LDR             R0, [R0]
627D2:  ADDS            R3, R0, R1
627D4:  B               loc_627DC
627D6:  LDR             R0, =(dword_1A3A3C - 0x627DC)
627D8:  ADD             R0, PC; dword_1A3A3C
627DA:  LDR             R3, [R0]
627DC:  MOV             R0, R6
627DE:  MOV             R1, R9
627E0:  MOV             R2, R8
627E2:  POP.W           {R8,R9,R11}
627E6:  POP.W           {R4-R7,LR}
627EA:  BX              R3
