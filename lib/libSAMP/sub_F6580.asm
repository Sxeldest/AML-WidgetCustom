; =========================================================
; Game Engine Function: sub_F6580
; Address            : 0xF6580 - 0xF6768
; =========================================================

F6580:  PUSH            {R4-R7,LR}
F6582:  ADD             R7, SP, #0xC
F6584:  PUSH.W          {R11}
F6588:  LDR             R0, =(byte_2401E8 - 0xF658E)
F658A:  ADD             R0, PC; byte_2401E8
F658C:  LDRB            R0, [R0]
F658E:  DMB.W           ISH
F6592:  LSLS            R0, R0, #0x1F
F6594:  BEQ             loc_F6610
F6596:  LDR             R6, =(byte_2400E0 - 0xF659E)
F6598:  LDR             R4, =(aVinils - 0xF65A0); "vinils" ...
F659A:  ADD             R6, PC; byte_2400E0
F659C:  ADD             R4, PC; "vinils"
F659E:  MOV             R5, R6
F65A0:  LDRB            R0, [R5]
F65A2:  LDR             R1, [R5,#8]
F65A4:  LSLS            R0, R0, #0x1F
F65A6:  IT EQ
F65A8:  ADDEQ           R1, R5, #1
F65AA:  MOV             R0, R4
F65AC:  BL              sub_1085C0
F65B0:  MOV             R1, R0
F65B2:  MOV             R0, R5
F65B4:  BL              sub_F68D4
F65B8:  ADDS            R5, #0xC
F65BA:  ADD.W           R0, R6, #0x108
F65BE:  CMP             R5, R0
F65C0:  BNE             loc_F65A0
F65C2:  LDR             R0, =(off_23494C - 0xF65D0)
F65C4:  MOV             R5, #0x671AA4
F65CC:  ADD             R0, PC; off_23494C
F65CE:  LDR             R4, [R0]; dword_23DF24
F65D0:  LDR             R0, [R4]
F65D2:  LDR             R1, =(sub_F6538+1 - 0xF65DC)
F65D4:  LDR             R2, =(off_2400D8 - 0xF65DE)
F65D6:  ADD             R0, R5
F65D8:  ADD             R1, PC; sub_F6538
F65DA:  ADD             R2, PC; off_2400D8
F65DC:  BL              sub_164196
F65E0:  LDR             R0, [R4]
F65E2:  LDR             R1, =(sub_F655C+1 - 0xF65EC)
F65E4:  LDR             R2, =(off_2400DC - 0xF65F2)
F65E6:  ADD             R0, R5
F65E8:  ADD             R1, PC; sub_F655C
F65EA:  ADD.W           R0, R0, #0x7D8
F65EE:  ADD             R2, PC; off_2400DC
F65F0:  BL              sub_164196
F65F4:  LDR             R1, =(aAxl - 0xF65FE); "AXL" ...
F65F6:  MOVS            R0, #4; prio
F65F8:  LDR             R2, =(aVehiclemateria - 0xF6600); "[VehicleMaterials]: call install" ...
F65FA:  ADD             R1, PC; "AXL"
F65FC:  ADD             R2, PC; "[VehicleMaterials]: call install"
F65FE:  BLX             __android_log_print
F6602:  LDR             R0, =(byte_2401EC - 0xF660A)
F6604:  MOVS            R1, #1
F6606:  ADD             R0, PC; byte_2401EC
F6608:  STRB            R1, [R0]
F660A:  POP.W           {R11}
F660E:  POP             {R4-R7,PC}
F6610:  LDR             R0, =(byte_2401E8 - 0xF6616)
F6612:  ADD             R0, PC; byte_2401E8 ; __guard *
F6614:  BLX             j___cxa_guard_acquire
F6618:  CMP             R0, #0
F661A:  BEQ             loc_F6596
F661C:  LDR             R4, =(byte_2400E0 - 0xF6624)
F661E:  LDR             R1, =(aKarbon - 0xF6626); "karbon" ...
F6620:  ADD             R4, PC; byte_2400E0
F6622:  ADD             R1, PC; "karbon"
F6624:  MOV             R0, R4; int
F6626:  BL              sub_DC6DC
F662A:  LDR             R1, =(aWad1 - 0xF6634); "wad1" ...
F662C:  ADD.W           R5, R4, #0xC
F6630:  ADD             R1, PC; "wad1"
F6632:  MOV             R0, R5; int
F6634:  BL              sub_DC6DC
F6638:  LDR             R1, =(aWad2 - 0xF6642); "wad2" ...
F663A:  ADD.W           R5, R4, #0x18
F663E:  ADD             R1, PC; "wad2"
F6640:  MOV             R0, R5; int
F6642:  BL              sub_DC6DC
F6646:  LDR             R1, =(aWad3 - 0xF6650); "wad3" ...
F6648:  ADD.W           R5, R4, #0x24 ; '$'
F664C:  ADD             R1, PC; "wad3"
F664E:  MOV             R0, R5; int
F6650:  BL              sub_DC6DC
F6654:  LDR             R1, =(aWad4 - 0xF665E); "wad4" ...
F6656:  ADD.W           R5, R4, #0x30 ; '0'
F665A:  ADD             R1, PC; "wad4"
F665C:  MOV             R0, R5; int
F665E:  BL              sub_DC6DC
F6662:  LDR             R1, =(aWad5 - 0xF666C); "wad5" ...
F6664:  ADD.W           R5, R4, #0x3C ; '<'
F6668:  ADD             R1, PC; "wad5"
F666A:  MOV             R0, R5; int
F666C:  BL              sub_DC6DC
F6670:  LDR             R1, =(aWad6 - 0xF667A); "wad6" ...
F6672:  ADD.W           R5, R4, #0x48 ; 'H'
F6676:  ADD             R1, PC; "wad6"
F6678:  MOV             R0, R5; int
F667A:  BL              sub_DC6DC
F667E:  LDR             R1, =(aWad7 - 0xF6688); "wad7" ...
F6680:  ADD.W           R5, R4, #0x54 ; 'T'
F6684:  ADD             R1, PC; "wad7"
F6686:  MOV             R0, R5; int
F6688:  BL              sub_DC6DC
F668C:  LDR             R1, =(aWad8 - 0xF6696); "wad8" ...
F668E:  ADD.W           R5, R4, #0x60 ; '`'
F6692:  ADD             R1, PC; "wad8"
F6694:  MOV             R0, R5; int
F6696:  BL              sub_DC6DC
F669A:  LDR             R1, =(aWad9 - 0xF66A4); "wad9" ...
F669C:  ADD.W           R5, R4, #0x6C ; 'l'
F66A0:  ADD             R1, PC; "wad9"
F66A2:  MOV             R0, R5; int
F66A4:  BL              sub_DC6DC
F66A8:  LDR             R1, =(aWad10 - 0xF66B2); "wad10" ...
F66AA:  ADD.W           R5, R4, #0x78 ; 'x'
F66AE:  ADD             R1, PC; "wad10"
F66B0:  MOV             R0, R5; int
F66B2:  BL              sub_DC6DC
F66B6:  LDR             R1, =(aWad11 - 0xF66C0); "wad11" ...
F66B8:  ADD.W           R5, R4, #0x84
F66BC:  ADD             R1, PC; "wad11"
F66BE:  MOV             R0, R5; int
F66C0:  BL              sub_DC6DC
F66C4:  LDR             R1, =(aWad12 - 0xF66CE); "wad12" ...
F66C6:  ADD.W           R5, R4, #0x90
F66CA:  ADD             R1, PC; "wad12"
F66CC:  MOV             R0, R5; int
F66CE:  BL              sub_DC6DC
F66D2:  LDR             R1, =(aWad13 - 0xF66DC); "wad13" ...
F66D4:  ADD.W           R5, R4, #0x9C
F66D8:  ADD             R1, PC; "wad13"
F66DA:  MOV             R0, R5; int
F66DC:  BL              sub_DC6DC
F66E0:  LDR             R1, =(aWad14 - 0xF66EA); "wad14" ...
F66E2:  ADD.W           R5, R4, #0xA8
F66E6:  ADD             R1, PC; "wad14"
F66E8:  MOV             R0, R5; int
F66EA:  BL              sub_DC6DC
F66EE:  LDR             R1, =(aWad15 - 0xF66F8); "wad15" ...
F66F0:  ADD.W           R5, R4, #0xB4
F66F4:  ADD             R1, PC; "wad15"
F66F6:  MOV             R0, R5; int
F66F8:  BL              sub_DC6DC
F66FC:  LDR             R1, =(aWad16 - 0xF6706); "wad16" ...
F66FE:  ADD.W           R5, R4, #0xC0
F6702:  ADD             R1, PC; "wad16"
F6704:  MOV             R0, R5; int
F6706:  BL              sub_DC6DC
F670A:  LDR             R1, =(aWad17 - 0xF6714); "wad17" ...
F670C:  ADD.W           R5, R4, #0xCC
F6710:  ADD             R1, PC; "wad17"
F6712:  MOV             R0, R5; int
F6714:  BL              sub_DC6DC
F6718:  LDR             R1, =(aWhite - 0xF6722); "white" ...
F671A:  ADD.W           R5, R4, #0xD8
F671E:  ADD             R1, PC; "white"
F6720:  MOV             R0, R5; int
F6722:  BL              sub_DC6DC
F6726:  LDR             R1, =(aFire8years - 0xF6730); "fire_8years" ...
F6728:  ADD.W           R5, R4, #0xE4
F672C:  ADD             R1, PC; "fire_8years"
F672E:  MOV             R0, R5; int
F6730:  BL              sub_DC6DC
F6734:  LDR             R1, =(aEagle8years - 0xF673E); "eagle_8years" ...
F6736:  ADD.W           R5, R4, #0xF0
F673A:  ADD             R1, PC; "eagle_8years"
F673C:  MOV             R0, R5; int
F673E:  BL              sub_DC6DC
F6742:  LDR             R1, =(aBlue8years - 0xF674C); "blue_8years" ...
F6744:  ADD.W           R5, R4, #0xFC
F6748:  ADD             R1, PC; "blue_8years"
F674A:  MOV             R0, R5; int
F674C:  BL              sub_DC6DC
F6750:  LDR             R0, =(sub_F682C+1 - 0xF675A)
F6752:  MOVS            R1, #0; obj
F6754:  LDR             R2, =(off_22A540 - 0xF675C)
F6756:  ADD             R0, PC; sub_F682C ; lpfunc
F6758:  ADD             R2, PC; off_22A540 ; lpdso_handle
F675A:  BLX             __cxa_atexit
F675E:  LDR             R0, =(byte_2401E8 - 0xF6764)
F6760:  ADD             R0, PC; byte_2401E8 ; __guard *
F6762:  BLX             j___cxa_guard_release
F6766:  B               loc_F6596
