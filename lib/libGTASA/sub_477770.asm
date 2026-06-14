; =========================================================
; Game Engine Function: sub_477770
; Address            : 0x477770 - 0x477880
; =========================================================

477770:  PUSH            {R4-R7,LR}
477772:  ADD             R7, SP, #0xC
477774:  PUSH.W          {R8-R11}
477778:  SUB             SP, SP, #4
47777A:  MOV             R4, R0
47777C:  LDR             R0, =(sub_477ADC+1 - 0x477788)
47777E:  MOV             R8, R1
477780:  LDR             R1, =(sub_478208+1 - 0x47778C)
477782:  LDR             R2, =(sub_477A3C+1 - 0x477792)
477784:  ADD             R0, PC; sub_477ADC
477786:  LDR             R3, =(sub_477890+1 - 0x477794)
477788:  ADD             R1, PC; sub_478208
47778A:  LDR.W           R9, [R4,#0x15C]
47778E:  ADD             R2, PC; sub_477A3C
477790:  ADD             R3, PC; sub_477890
477792:  CMP.W           R8, #0
477796:  ITT EQ
477798:  MOVEQ           R2, R1
47779A:  MOVEQ           R3, R0
47779C:  STRD.W          R3, R2, [R9,#4]
4777A0:  LDR.W           R0, [R4,#0xE4]
4777A4:  CMP             R0, #1
4777A6:  BLT             loc_47786A
4777A8:  ADD.W           R10, R9, #0x14
4777AC:  MOV.W           R11, #0
4777B0:  ADD.W           R0, R4, R11,LSL#2
4777B4:  CMP.W           R8, #0
4777B8:  LDR.W           R0, [R0,#0xE8]
4777BC:  LDRD.W          R5, R6, [R0,#0x14]
4777C0:  BEQ             loc_477834
4777C2:  CMP             R5, #4
4777C4:  BCC             loc_4777D8
4777C6:  LDR             R0, [R4]
4777C8:  MOVS            R1, #0x32 ; '2'
4777CA:  STR             R1, [R0,#0x14]
4777CC:  LDR             R0, [R4]
4777CE:  STR             R5, [R0,#0x18]
4777D0:  LDR             R0, [R4]
4777D2:  LDR             R1, [R0]
4777D4:  MOV             R0, R4
4777D6:  BLX             R1
4777D8:  CMP             R6, #4
4777DA:  BCC             loc_4777EE
4777DC:  LDR             R0, [R4]
4777DE:  MOVS            R1, #0x32 ; '2'
4777E0:  STR             R1, [R0,#0x14]
4777E2:  LDR             R0, [R4]
4777E4:  STR             R6, [R0,#0x18]
4777E6:  LDR             R0, [R4]
4777E8:  LDR             R1, [R0]
4777EA:  MOV             R0, R4
4777EC:  BLX             R1
4777EE:  ADD.W           R5, R9, R5,LSL#2
4777F2:  LDR.W           R0, [R5,#0x4C]!
4777F6:  CBNZ            R0, loc_477808
4777F8:  LDR             R0, [R4,#4]
4777FA:  MOVS            R1, #1
4777FC:  MOVW            R2, #0x404
477800:  LDR             R3, [R0]
477802:  MOV             R0, R4
477804:  BLX             R3
477806:  STR             R0, [R5]
477808:  MOVW            R1, #0x404
47780C:  BLX             j___aeabi_memclr8_1
477810:  ADD.W           R5, R9, R6,LSL#2
477814:  LDR.W           R0, [R5,#0x5C]!
477818:  CBNZ            R0, loc_47782A
47781A:  LDR             R0, [R4,#4]
47781C:  MOVS            R1, #1
47781E:  MOVW            R2, #0x404
477822:  LDR             R3, [R0]
477824:  MOV             R0, R4
477826:  BLX             R3
477828:  STR             R0, [R5]
47782A:  MOVW            R1, #0x404
47782E:  BLX             j___aeabi_memclr8_1
477832:  B               loc_477858
477834:  ADD.W           R0, R9, R5,LSL#2
477838:  MOVS            R1, #1
47783A:  ADD.W           R3, R0, #0x2C ; ','
47783E:  MOV             R0, R4
477840:  MOV             R2, R5
477842:  BLX             j__Z23jpeg_make_c_derived_tblP20jpeg_compress_structhiPP13c_derived_tbl; jpeg_make_c_derived_tbl(jpeg_compress_struct *,uchar,int,c_derived_tbl **)
477846:  ADD.W           R0, R9, R6,LSL#2
47784A:  MOVS            R1, #0
47784C:  ADD.W           R3, R0, #0x3C ; '<'
477850:  MOV             R0, R4
477852:  MOV             R2, R6
477854:  BLX             j__Z23jpeg_make_c_derived_tblP20jpeg_compress_structhiPP13c_derived_tbl; jpeg_make_c_derived_tbl(jpeg_compress_struct *,uchar,int,c_derived_tbl **)
477858:  MOVS            R0, #0
47785A:  STR.W           R0, [R10,R11,LSL#2]
47785E:  ADD.W           R11, R11, #1
477862:  LDR.W           R0, [R4,#0xE4]
477866:  CMP             R11, R0
477868:  BLT             loc_4777B0
47786A:  MOVS            R0, #0
47786C:  STRD.W          R0, R0, [R9,#0xC]
477870:  LDR.W           R1, [R4,#0xBC]
477874:  STRD.W          R1, R0, [R9,#0x24]
477878:  ADD             SP, SP, #4
47787A:  POP.W           {R8-R11}
47787E:  POP             {R4-R7,PC}
