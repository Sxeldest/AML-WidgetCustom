; =========================================================
; Game Engine Function: _ZN9CShopping23GetPriceSectionFromNameEPKc
; Address            : 0x35F600 - 0x35F6F2
; =========================================================

35F600:  PUSH            {R4,R6,R7,LR}
35F602:  ADD             R7, SP, #8
35F604:  MOV             R4, R0
35F606:  LDR             R0, =(_ZN9CShopping15ms_sectionNamesE_ptr - 0x35F60C)
35F608:  ADD             R0, PC; _ZN9CShopping15ms_sectionNamesE_ptr
35F60A:  LDR             R0, [R0]; CShopping::ms_sectionNames ...
35F60C:  LDR             R1, [R0]; "None"
35F60E:  MOV             R0, R4; char *
35F610:  BLX             strcasecmp
35F614:  CMP             R0, #0
35F616:  BEQ             loc_35F6CA
35F618:  LDR             R0, =(_ZN9CShopping15ms_sectionNamesE_ptr - 0x35F61E)
35F61A:  ADD             R0, PC; _ZN9CShopping15ms_sectionNamesE_ptr
35F61C:  LDR             R0, [R0]; CShopping::ms_sectionNames ...
35F61E:  LDR             R1, [R0,#(off_68673C - 0x686738)]; "CarMods" ...
35F620:  MOV             R0, R4; char *
35F622:  BLX             strcasecmp
35F626:  CMP             R0, #0
35F628:  BEQ             loc_35F6CE
35F62A:  LDR             R0, =(_ZN9CShopping15ms_sectionNamesE_ptr - 0x35F630)
35F62C:  ADD             R0, PC; _ZN9CShopping15ms_sectionNamesE_ptr
35F62E:  LDR             R0, [R0]; CShopping::ms_sectionNames ...
35F630:  LDR             R1, [R0,#(off_686740 - 0x686738)]; "CarPaintJobs" ...
35F632:  MOV             R0, R4; char *
35F634:  BLX             strcasecmp
35F638:  CMP             R0, #0
35F63A:  BEQ             loc_35F6D2
35F63C:  LDR             R0, =(_ZN9CShopping15ms_sectionNamesE_ptr - 0x35F642)
35F63E:  ADD             R0, PC; _ZN9CShopping15ms_sectionNamesE_ptr
35F640:  LDR             R0, [R0]; CShopping::ms_sectionNames ...
35F642:  LDR             R1, [R0,#(off_686744 - 0x686738)]; "Furniture" ...
35F644:  MOV             R0, R4; char *
35F646:  BLX             strcasecmp
35F64A:  CMP             R0, #0
35F64C:  BEQ             loc_35F6D6
35F64E:  LDR             R0, =(_ZN9CShopping15ms_sectionNamesE_ptr - 0x35F654)
35F650:  ADD             R0, PC; _ZN9CShopping15ms_sectionNamesE_ptr
35F652:  LDR             R0, [R0]; CShopping::ms_sectionNames ...
35F654:  LDR             R1, [R0,#(off_686748 - 0x686738)]; "Clothes" ...
35F656:  MOV             R0, R4; char *
35F658:  BLX             strcasecmp
35F65C:  CBZ             R0, loc_35F6DA
35F65E:  LDR             R0, =(_ZN9CShopping15ms_sectionNamesE_ptr - 0x35F664)
35F660:  ADD             R0, PC; _ZN9CShopping15ms_sectionNamesE_ptr
35F662:  LDR             R0, [R0]; CShopping::ms_sectionNames ...
35F664:  LDR             R1, [R0,#(off_68674C - 0x686738)]; "Haircuts" ...
35F666:  MOV             R0, R4; char *
35F668:  BLX             strcasecmp
35F66C:  CBZ             R0, loc_35F6DE
35F66E:  LDR             R0, =(_ZN9CShopping15ms_sectionNamesE_ptr - 0x35F674)
35F670:  ADD             R0, PC; _ZN9CShopping15ms_sectionNamesE_ptr
35F672:  LDR             R0, [R0]; CShopping::ms_sectionNames ...
35F674:  LDR             R1, [R0,#(off_686750 - 0x686738)]; "Tattoos" ...
35F676:  MOV             R0, R4; char *
35F678:  BLX             strcasecmp
35F67C:  CBZ             R0, loc_35F6E2
35F67E:  LDR             R0, =(_ZN9CShopping15ms_sectionNamesE_ptr - 0x35F684)
35F680:  ADD             R0, PC; _ZN9CShopping15ms_sectionNamesE_ptr
35F682:  LDR             R0, [R0]; CShopping::ms_sectionNames ...
35F684:  LDR             R1, [R0,#(off_686754 - 0x686738)]; "Gifts" ...
35F686:  MOV             R0, R4; char *
35F688:  BLX             strcasecmp
35F68C:  CBZ             R0, loc_35F6E6
35F68E:  LDR             R0, =(_ZN9CShopping15ms_sectionNamesE_ptr - 0x35F694)
35F690:  ADD             R0, PC; _ZN9CShopping15ms_sectionNamesE_ptr
35F692:  LDR             R0, [R0]; CShopping::ms_sectionNames ...
35F694:  LDR             R1, [R0,#(off_686758 - 0x686738)]; "Food" ...
35F696:  MOV             R0, R4; char *
35F698:  BLX             strcasecmp
35F69C:  CBZ             R0, loc_35F6EA
35F69E:  LDR             R0, =(_ZN9CShopping15ms_sectionNamesE_ptr - 0x35F6A4)
35F6A0:  ADD             R0, PC; _ZN9CShopping15ms_sectionNamesE_ptr
35F6A2:  LDR             R0, [R0]; CShopping::ms_sectionNames ...
35F6A4:  LDR             R1, [R0,#(off_68675C - 0x686738)]; "Weapons" ...
35F6A6:  MOV             R0, R4; char *
35F6A8:  BLX             strcasecmp
35F6AC:  CBZ             R0, loc_35F6EE
35F6AE:  LDR             R0, =(_ZN9CShopping15ms_sectionNamesE_ptr - 0x35F6B4)
35F6B0:  ADD             R0, PC; _ZN9CShopping15ms_sectionNamesE_ptr
35F6B2:  LDR             R0, [R0]; CShopping::ms_sectionNames ...
35F6B4:  LDR             R1, [R0,#(off_686760 - 0x686738)]; "Property" ...
35F6B6:  MOV             R0, R4; char *
35F6B8:  BLX             strcasecmp
35F6BC:  MOV.W           R1, #0xFFFFFFFF
35F6C0:  CMP             R0, #0
35F6C2:  IT EQ
35F6C4:  MOVEQ           R1, #0xA
35F6C6:  MOV             R0, R1
35F6C8:  POP             {R4,R6,R7,PC}
35F6CA:  MOVS            R0, #0
35F6CC:  POP             {R4,R6,R7,PC}
35F6CE:  MOVS            R0, #1
35F6D0:  POP             {R4,R6,R7,PC}
35F6D2:  MOVS            R0, #2
35F6D4:  POP             {R4,R6,R7,PC}
35F6D6:  MOVS            R0, #3
35F6D8:  POP             {R4,R6,R7,PC}
35F6DA:  MOVS            R0, #4
35F6DC:  POP             {R4,R6,R7,PC}
35F6DE:  MOVS            R0, #5
35F6E0:  POP             {R4,R6,R7,PC}
35F6E2:  MOVS            R0, #6
35F6E4:  POP             {R4,R6,R7,PC}
35F6E6:  MOVS            R0, #7
35F6E8:  POP             {R4,R6,R7,PC}
35F6EA:  MOVS            R0, #8
35F6EC:  POP             {R4,R6,R7,PC}
35F6EE:  MOVS            R0, #9
35F6F0:  POP             {R4,R6,R7,PC}
