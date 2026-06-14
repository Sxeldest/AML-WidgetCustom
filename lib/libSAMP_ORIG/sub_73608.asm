; =========================================================
; Game Engine Function: sub_73608
; Address            : 0x73608 - 0x73794
; =========================================================

73608:  PUSH            {R4-R7,LR}
7360A:  ADD             R7, SP, #0xC
7360C:  PUSH.W          {R8}
73610:  BL              sub_6C880
73614:  LDR             R4, =(byte_1A44D0 - 0x7361C)
73616:  MOV             R8, R0
73618:  ADD             R4, PC; byte_1A44D0
7361A:  LDRB            R0, [R4]
7361C:  CBZ             R0, loc_73664
7361E:  BL              sub_6C844
73622:  LDR             R5, [R0,#8]
73624:  CBNZ            R5, loc_73652
73626:  MOV             R6, R0
73628:  MOV.W           R0, #0x2F0; unsigned int
7362C:  BLX             j__Znwj; operator new(uint)
73630:  MOV             R5, R0
73632:  LDR             R0, =(off_114AB0 - 0x7363A)
73634:  LDR             R1, =(_ZTV10CPlayerPed - 0x7363C); `vtable for'CPlayerPed ...
73636:  ADD             R0, PC; off_114AB0
73638:  ADD             R1, PC; `vtable for'CPlayerPed
7363A:  LDR             R0, [R0]; dword_1A4408
7363C:  ADDS            R1, #8
7363E:  STR             R1, [R5]
73640:  MOV             R1, #0x103B89
73648:  LDR             R0, [R0]
7364A:  ADD             R1, R0
7364C:  MOV             R0, R5
7364E:  BLX             R1
73650:  STR             R5, [R6,#8]
73652:  LDR             R0, [R5,#0x5C]
73654:  CMP             R0, #0
73656:  ITT NE
73658:  LDRBNE.W        R0, [R0,#0x485]
7365C:  MOVSNE.W        R0, R0,LSL#31
73660:  BNE.W           loc_7377C
73664:  LDRB            R0, [R4]
73666:  STRB.W          R0, [R8,#0xE]
7366A:  CMP             R0, #0
7366C:  ITT NE
7366E:  MOVNE           R0, #0
73670:  STRBNE          R0, [R4]
73672:  LDR             R4, =(byte_1A44D1 - 0x73678)
73674:  ADD             R4, PC; byte_1A44D1
73676:  LDRB            R0, [R4]
73678:  CBZ             R0, loc_736BE
7367A:  BL              sub_6C844
7367E:  LDR             R5, [R0,#8]
73680:  CBNZ            R5, loc_736AE
73682:  MOV             R6, R0
73684:  MOV.W           R0, #0x2F0; unsigned int
73688:  BLX             j__Znwj; operator new(uint)
7368C:  MOV             R5, R0
7368E:  LDR             R0, =(off_114AB0 - 0x73696)
73690:  LDR             R1, =(_ZTV10CPlayerPed - 0x73698); `vtable for'CPlayerPed ...
73692:  ADD             R0, PC; off_114AB0
73694:  ADD             R1, PC; `vtable for'CPlayerPed
73696:  LDR             R0, [R0]; dword_1A4408
73698:  ADDS            R1, #8
7369A:  STR             R1, [R5]
7369C:  MOV             R1, #0x103B89
736A4:  LDR             R0, [R0]
736A6:  ADD             R1, R0
736A8:  MOV             R0, R5
736AA:  BLX             R1
736AC:  STR             R5, [R6,#8]
736AE:  LDR             R0, [R5,#0x5C]
736B0:  CMP             R0, #0
736B2:  ITT NE
736B4:  LDRBNE.W        R0, [R0,#0x485]
736B8:  MOVSNE.W        R0, R0,LSL#31
736BC:  BNE             loc_73784
736BE:  LDRB            R0, [R4]
736C0:  STRB.W          R0, [R8,#7]
736C4:  CMP             R0, #0
736C6:  ITT NE
736C8:  MOVNE           R0, #0
736CA:  STRBNE          R0, [R4]
736CC:  LDR             R0, =(byte_1A44D2 - 0x736D2)
736CE:  ADD             R0, PC; byte_1A44D2
736D0:  LDRB            R1, [R0]
736D2:  CMP             R1, #0
736D4:  ITTTT NE
736D6:  MOVNE           R1, #1
736D8:  STRBNE.W        R1, [R8,#8]
736DC:  MOVNE           R1, #0
736DE:  STRBNE          R1, [R0]
736E0:  LDR             R4, =(byte_1A44D3 - 0x736E6)
736E2:  ADD             R4, PC; byte_1A44D3
736E4:  LDRB            R0, [R4]
736E6:  CBZ             R0, loc_7372C
736E8:  BL              sub_6C844
736EC:  LDR             R5, [R0,#8]
736EE:  CBNZ            R5, loc_7371C
736F0:  MOV             R6, R0
736F2:  MOV.W           R0, #0x2F0; unsigned int
736F6:  BLX             j__Znwj; operator new(uint)
736FA:  MOV             R5, R0
736FC:  LDR             R0, =(off_114AB0 - 0x73704)
736FE:  LDR             R1, =(_ZTV10CPlayerPed - 0x73706); `vtable for'CPlayerPed ...
73700:  ADD             R0, PC; off_114AB0
73702:  ADD             R1, PC; `vtable for'CPlayerPed
73704:  LDR             R0, [R0]; dword_1A4408
73706:  ADDS            R1, #8
73708:  STR             R1, [R5]
7370A:  MOV             R1, #0x103B89
73712:  LDR             R0, [R0]
73714:  ADD             R1, R0
73716:  MOV             R0, R5
73718:  BLX             R1
7371A:  STR             R5, [R6,#8]
7371C:  LDR             R0, [R5,#0x5C]
7371E:  CMP             R0, #0
73720:  ITT NE
73722:  LDRBNE.W        R0, [R0,#0x485]
73726:  MOVSNE.W        R0, R0,LSL#31
7372A:  BNE             loc_7378C
7372C:  LDRB            R0, [R4]
7372E:  STRB.W          R0, [R8,#0x15]
73732:  CMP             R0, #0
73734:  ITT NE
73736:  MOVNE           R0, #0
73738:  STRBNE          R0, [R4]
7373A:  LDR             R0, =(byte_1A44D4 - 0x73740)
7373C:  ADD             R0, PC; byte_1A44D4
7373E:  LDRB            R1, [R0]
73740:  CMP             R1, #0
73742:  ITTTT NE
73744:  MOVNE           R1, #1
73746:  STRBNE.W        R1, [R8,#0xD]
7374A:  MOVNE           R1, #0
7374C:  STRBNE          R1, [R0]
7374E:  LDR             R0, =(byte_1A44D5 - 0x73754)
73750:  ADD             R0, PC; byte_1A44D5
73752:  LDRB            R1, [R0]
73754:  CMP             R1, #0
73756:  ITTTT NE
73758:  MOVNE           R1, #1
7375A:  STRBNE.W        R1, [R8,#0x13]
7375E:  MOVNE           R1, #0
73760:  STRBNE          R1, [R0]
73762:  LDR             R0, =(byte_1A44D6 - 0x73768)
73764:  ADD             R0, PC; byte_1A44D6
73766:  LDRB            R1, [R0]
73768:  CMP             R1, #0
7376A:  ITTTT NE
7376C:  MOVNE           R1, #1
7376E:  STRBNE.W        R1, [R8,#0x14]
73772:  MOVNE           R1, #0
73774:  STRBNE          R1, [R0]
73776:  POP.W           {R8}
7377A:  POP             {R4-R7,PC}
7377C:  LDRB            R0, [R4]
7377E:  STRB.W          R0, [R8,#6]
73782:  B               loc_7366A
73784:  LDRB            R0, [R4]
73786:  STRB.W          R0, [R8,#0xB]
7378A:  B               loc_736C4
7378C:  LDRB            R0, [R4]
7378E:  STRB.W          R0, [R8,#5]
73792:  B               loc_73732
