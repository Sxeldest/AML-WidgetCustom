; =========================================================
; Game Engine Function: _ZN6CStats24FindCriminalRatingStringEv
; Address            : 0x416598 - 0x4168E4
; =========================================================

416598:  PUSH            {R7,LR}
41659A:  MOV             R7, SP
41659C:  BLX             j__ZN6CStats24FindCriminalRatingNumberEv; CStats::FindCriminalRatingNumber(void)
4165A0:  CMP.W           R0, #0xFFFFFFFF
4165A4:  BLE             loc_4165B0
4165A6:  CMP             R0, #0x14
4165A8:  BGE             loc_4165BE
4165AA:  ADR.W           R1, aRatng1; "RATNG1"
4165AE:  B               loc_4168AA
4165B0:  CMN.W           R0, #0x1F4
4165B4:  BLE             loc_4165C8
4165B6:  LDR.W           R1, =(aRatng53 - 0x4165BE); "RATNG53"
4165BA:  ADD             R1, PC; "RATNG53"
4165BC:  B               loc_4168AA
4165BE:  CMP             R0, #0x32 ; '2'
4165C0:  BGE             loc_4165D6
4165C2:  ADR.W           R1, aRatng2; "RATNG2"
4165C6:  B               loc_4168AA
4165C8:  CMN.W           R0, #0x7D0
4165CC:  BLE             loc_4165E0
4165CE:  LDR.W           R1, =(aRatng54 - 0x4165D6); "RATNG54"
4165D2:  ADD             R1, PC; "RATNG54"
4165D4:  B               loc_4168AA
4165D6:  CMP             R0, #0x4B ; 'K'
4165D8:  BGE             loc_4165EE
4165DA:  ADR.W           R1, aRatng3; "RATNG3"
4165DE:  B               loc_4168AA
4165E0:  CMN.W           R0, #0xFA0
4165E4:  BLE             loc_4165F8
4165E6:  LDR.W           R1, =(aRatng55 - 0x4165EE); "RATNG55"
4165EA:  ADD             R1, PC; "RATNG55"
4165EC:  B               loc_4168AA
4165EE:  CMP             R0, #0x64 ; 'd'
4165F0:  BGE             loc_416614
4165F2:  ADR.W           R1, aRatng4; "RATNG4"
4165F6:  B               loc_4168AA
4165F8:  LDR.W           R2, =(aRatng57 - 0x41660C); "RATNG57"
4165FC:  MOVW            R3, #0xE890
416600:  LDR.W           R1, =(aRatng56 - 0x41660E); "RATNG56"
416604:  MOVT            R3, #0xFFFF
416608:  ADD             R2, PC; "RATNG57"
41660A:  ADD             R1, PC; "RATNG56"
41660C:  CMP             R0, R3
41660E:  IT LE
416610:  MOVLE           R1, R2
416612:  B               loc_4168AA
416614:  CMP             R0, #0x78 ; 'x'
416616:  BGE             loc_41661E
416618:  ADR.W           R1, aRatng5; "RATNG5"
41661C:  B               loc_4168AA
41661E:  CMP             R0, #0x96
416620:  BGE             loc_416628
416622:  ADR.W           R1, aRatng6; "RATNG6"
416626:  B               loc_4168AA
416628:  CMP             R0, #0xC8
41662A:  BGE             loc_416630
41662C:  ADR             R1, aRatng7; "RATNG7"
41662E:  B               loc_4168AA
416630:  CMP             R0, #0xF0
416632:  BGE             loc_416638
416634:  ADR             R1, aRatng8; "RATNG8"
416636:  B               loc_4168AA
416638:  CMP.W           R0, #0x10E
41663C:  BGE             loc_416642
41663E:  ADR             R1, aRatng9; "RATNG9"
416640:  B               loc_4168AA
416642:  CMP.W           R0, #0x12C
416646:  BGE             loc_41664C
416648:  ADR             R1, aRatng10; "RATNG10"
41664A:  B               loc_4168AA
41664C:  CMP.W           R0, #0x14E
416650:  BGT             loc_416656
416652:  ADR             R1, aRatng11; "RATNG11"
416654:  B               loc_4168AA
416656:  CMP.W           R0, #0x172
41665A:  BGE             loc_416660
41665C:  ADR             R1, aRatng12; "RATNG12"
41665E:  B               loc_4168AA
416660:  CMP.W           R0, #0x190
416664:  BGE             loc_41666A
416666:  ADR             R1, aRatng13; "RATNG13"
416668:  B               loc_4168AA
41666A:  CMP.W           R0, #0x1C2
41666E:  BGE             loc_416674
416670:  ADR             R1, aRatng14; "RATNG14"
416672:  B               loc_4168AA
416674:  CMP.W           R0, #0x1F4
416678:  BGE             loc_41667E
41667A:  ADR             R1, aRatng15; "RATNG15"
41667C:  B               loc_4168AA
41667E:  MOVW            R1, #0x226
416682:  CMP             R0, R1
416684:  BGE             loc_41668A
416686:  ADR             R1, aRatng16; "RATNG16"
416688:  B               loc_4168AA
41668A:  CMP.W           R0, #0x258
41668E:  BGE             loc_416694
416690:  ADR             R1, aRatng17; "RATNG17"
416692:  B               loc_4168AA
416694:  MOVW            R1, #0x262
416698:  CMP             R0, R1
41669A:  BGE             loc_4166A0
41669C:  ADR             R1, aRatng18; "RATNG18"
41669E:  B               loc_4168AA
4166A0:  MOVW            R1, #0x28A
4166A4:  CMP             R0, R1
4166A6:  BGE             loc_4166AC
4166A8:  ADR             R1, aRatng19; "RATNG19"
4166AA:  B               loc_4168AA
4166AC:  CMP.W           R0, #0x2BC
4166B0:  BGE             loc_4166B6
4166B2:  ADR             R1, aRatng20; "RATNG20"
4166B4:  B               loc_4168AA
4166B6:  MOVW            R1, #0x352
4166BA:  CMP             R0, R1
4166BC:  BGE             loc_4166C2
4166BE:  ADR             R1, aRatng21; "RATNG21"
4166C0:  B               loc_4168AA
4166C2:  CMP.W           R0, #0x3E8
4166C6:  BGE             loc_4166CC
4166C8:  ADR             R1, aRatng22; "RATNG22"
4166CA:  B               loc_4168AA
4166CC:  CMP.W           R0, #0x3EC
4166D0:  BGT             loc_4166D6
4166D2:  ADR             R1, aRatng23; "RATNG23"
4166D4:  B               loc_4168AA
4166D6:  ADR             R1, aRatng24; "RATNG24"
4166D8:  MOVW            R2, #0x47E
4166DC:  CMP             R0, R2
4166DE:  BLT.W           loc_4168AA
4166E2:  MOVW            R2, #0x513
4166E6:  CMP             R0, R2
4166E8:  BGT             loc_416702
4166EA:  LDR.W           R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x4166F6)
4166EE:  LDR.W           R2, =(aRatng25 - 0x4166F8); "RATNG25"
4166F2:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
4166F4:  ADD             R2, PC; "RATNG25"
4166F6:  LDR             R0, [R0]; CStats::StatTypesInt ...
4166F8:  LDR             R0, [R0,#(dword_964960 - 0x96492C)]
4166FA:  CMP             R0, #0
4166FC:  IT GT
4166FE:  MOVGT           R1, R2
416700:  B               loc_4168AA
416702:  MOVW            R1, #0x5DC
416706:  CMP             R0, R1
416708:  BGE             loc_41670E
41670A:  ADR             R1, aRatng26; "RATNG26"
41670C:  B               loc_4168AA
41670E:  MOVW            R1, #0x6A4
416712:  CMP             R0, R1
416714:  BGE             loc_41671A
416716:  ADR             R1, aRatng27; "RATNG27"
416718:  B               loc_4168AA
41671A:  CMP.W           R0, #0x7D0
41671E:  BGE             loc_416724
416720:  ADR             R1, aRatng28; "RATNG28"
416722:  B               loc_4168AA
416724:  MOVW            R1, #0x834
416728:  CMP             R0, R1
41672A:  BGE             loc_416730
41672C:  ADR             R1, aRatng29; "RATNG29"
41672E:  B               loc_4168AA
416730:  MOVW            R1, #0x8FC
416734:  CMP             R0, R1
416736:  BGE             loc_41673C
416738:  ADR             R1, aRatng30; "RATNG30"
41673A:  B               loc_4168AA
41673C:  MOVW            R1, #0x9C4
416740:  CMP             R0, R1
416742:  BGE             loc_416748
416744:  ADR             R1, aRatng31; "RATNG31"
416746:  B               loc_4168AA
416748:  MOVW            R1, #0xABE
41674C:  CMP             R0, R1
41674E:  BGE             loc_416754
416750:  ADR             R1, aRatng32; "RATNG32"
416752:  B               loc_4168AA
416754:  MOVW            R1, #0xBB8
416758:  CMP             R0, R1
41675A:  BGE             loc_416762
41675C:  LDR             R1, =(aRatng33 - 0x416762); "RATNG33"
41675E:  ADD             R1, PC; "RATNG33"
416760:  B               loc_4168AA
416762:  MOVW            R1, #0xDAC
416766:  CMP             R0, R1
416768:  BGE             loc_416770
41676A:  LDR             R1, =(aRatng34 - 0x416770); "RATNG34"
41676C:  ADD             R1, PC; "RATNG34"
41676E:  B               loc_4168AA
416770:  CMP.W           R0, #0xFA0
416774:  BGE             loc_41677C
416776:  LDR             R1, =(aRatng35 - 0x41677C); "RATNG35"
416778:  ADD             R1, PC; "RATNG35"
41677A:  B               loc_4168AA
41677C:  MOVW            R1, #0x1388
416780:  CMP             R0, R1
416782:  BGE             loc_41678A
416784:  LDR             R1, =(aRatng36 - 0x41678A); "RATNG36"
416786:  ADD             R1, PC; "RATNG36"
416788:  B               loc_4168AA
41678A:  MOVW            R1, #0x1D4C
41678E:  CMP             R0, R1
416790:  BGE             loc_416798
416792:  LDR             R1, =(aRatng37 - 0x416798); "RATNG37"
416794:  ADD             R1, PC; "RATNG37"
416796:  B               loc_4168AA
416798:  MOVW            R1, #0x2710
41679C:  CMP             R0, R1
41679E:  BGE             loc_4167A6
4167A0:  LDR             R1, =(aRatng38 - 0x4167A6); "RATNG38"
4167A2:  ADD             R1, PC; "RATNG38"
4167A4:  B               loc_4168AA
4167A6:  MOVW            R1, #0x4E20
4167AA:  CMP             R0, R1
4167AC:  BGE             loc_4167B4
4167AE:  LDR             R1, =(aRatng39 - 0x4167B4); "RATNG39"
4167B0:  ADD             R1, PC; "RATNG39"
4167B2:  B               loc_4168AA
4167B4:  MOVW            R1, #0x7530
4167B8:  CMP             R0, R1
4167BA:  BGE             loc_4167C2
4167BC:  LDR             R1, =(aRatng40 - 0x4167C2); "RATNG40"
4167BE:  ADD             R1, PC; "RATNG40"
4167C0:  B               loc_4168AA
4167C2:  MOVW            R1, #0x9C40
4167C6:  CMP             R0, R1
4167C8:  BGE             loc_4167D0
4167CA:  LDR             R1, =(aRatng41 - 0x4167D0); "RATNG41"
4167CC:  ADD             R1, PC; "RATNG41"
4167CE:  B               loc_4168AA
4167D0:  MOVW            R1, #0xC350
4167D4:  CMP             R0, R1
4167D6:  BGE             loc_4167DE
4167D8:  LDR             R1, =(aRatng42 - 0x4167DE); "RATNG42"
4167DA:  ADD             R1, PC; "RATNG42"
4167DC:  B               loc_4168AA
4167DE:  MOVW            R1, #0xFDE8
4167E2:  CMP             R0, R1
4167E4:  BGE             loc_4167EC
4167E6:  LDR             R1, =(aRatng43 - 0x4167EC); "RATNG43"
4167E8:  ADD             R1, PC; "RATNG43"
4167EA:  B               loc_4168AA
4167EC:  MOV             R1, #0x13880
4167F4:  CMP             R0, R1
4167F6:  BGE             loc_4167FE
4167F8:  LDR             R1, =(aRatng44 - 0x4167FE); "RATNG44"
4167FA:  ADD             R1, PC; "RATNG44"
4167FC:  B               loc_4168AA
4167FE:  MOV             R1, #0x186A0
416806:  CMP             R0, R1
416808:  BGE             loc_416810
41680A:  LDR             R1, =(aRatng45 - 0x416810); "RATNG45"
41680C:  ADD             R1, PC; "RATNG45"
41680E:  B               loc_4168AA
416810:  MOV             R1, #0x249F0
416818:  CMP             R0, R1
41681A:  BGE             loc_416822
41681C:  LDR             R1, =(aRatng46 - 0x416822); "RATNG46"
41681E:  ADD             R1, PC; "RATNG46"
416820:  B               loc_4168AA
416822:  MOV             R1, #0x30D40
41682A:  CMP             R0, R1
41682C:  BGE             loc_416834
41682E:  LDR             R1, =(aRatng47 - 0x416834); "RATNG47"
416830:  ADD             R1, PC; "RATNG47"
416832:  B               loc_4168AA
416834:  MOV             R1, #0x493E0
41683C:  CMP             R0, R1
41683E:  BGE             loc_416846
416840:  LDR             R1, =(aRatng48 - 0x416846); "RATNG48"
416842:  ADD             R1, PC; "RATNG48"
416844:  B               loc_4168AA
416846:  MOV             R1, #0x5B8D8
41684E:  CMP             R0, R1
416850:  BGE             loc_416858
416852:  LDR             R1, =(aRatng49 - 0x416858); "RATNG49"
416854:  ADD             R1, PC; "RATNG49"
416856:  B               loc_4168AA
416858:  MOV             R1, #0x7A11F
416860:  CMP             R0, R1
416862:  BGT             loc_41689A
416864:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x41686E)
416866:  VLDR            S2, =60000.0
41686A:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
41686C:  LDR             R1, =(aRatng50 - 0x416874); "RATNG50"
41686E:  LDR             R0, [R0]; CStats::StatTypesInt ...
416870:  ADD             R1, PC; "RATNG50"
416872:  VLDR            S0, [R0,#0xC4]
416876:  LDR             R0, =(aRatng49 - 0x416880); "RATNG49"
416878:  VCVT.F32.S32    S0, S0
41687C:  ADD             R0, PC; "RATNG49"
41687E:  VDIV.F32        S0, S0, S2
416882:  VLDR            S2, =60.0
416886:  VDIV.F32        S0, S0, S2
41688A:  VCVT.S32.F32    S0, S0
41688E:  VMOV            R2, S0
416892:  CMP             R2, #0xA
416894:  IT LE
416896:  MOVLE           R1, R0
416898:  B               loc_4168AA
41689A:  MOV             R1, #0xF4240
4168A2:  CMP             R0, R1
4168A4:  BGE             loc_4168B8
4168A6:  LDR             R1, =(aRatng51 - 0x4168AC); "RATNG51"
4168A8:  ADD             R1, PC; "RATNG51"
4168AA:  LDR             R0, =(TheText_ptr - 0x4168B0)
4168AC:  ADD             R0, PC; TheText_ptr
4168AE:  LDR             R0, [R0]; TheText ; this
4168B0:  POP.W           {R7,LR}
4168B4:  B.W             j_j__ZN5CText3GetEPKc; j_CText::Get(char const*)
4168B8:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x4168C8)
4168BA:  MOV.W           R2, #0x194
4168BE:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x4168CE)
4168C0:  MOVW            R3, #:lower16:unk_989680
4168C4:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
4168C6:  MOVT            R3, #:upper16:unk_989680
4168CA:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
4168CC:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
4168CE:  LDR             R1, [R1]; CWorld::Players ...
4168D0:  LDR             R0, [R0]; CWorld::PlayerInFocus
4168D2:  SMLABB.W        R0, R0, R2, R1
4168D6:  LDR             R2, =(aRatng51 - 0x4168DE); "RATNG51"
4168D8:  LDR             R1, =(aRatng52 - 0x4168E0); "RATNG52"
4168DA:  ADD             R2, PC; "RATNG51"
4168DC:  ADD             R1, PC; "RATNG52"
4168DE:  LDR.W           R0, [R0,#0xBC]
4168E2:  B               loc_41660C
