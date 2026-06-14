; =========================================================
; Game Engine Function: silk_shell_encoder
; Address            : 0xB672C - 0xB69C8
; =========================================================

B672C:  PUSH            {R4-R7,LR}
B672E:  ADD             R7, SP, #0xC
B6730:  PUSH.W          {R8-R11}
B6734:  SUB             SP, SP, #0x2C
B6736:  MOV             R8, R1
B6738:  STR             R0, [SP,#0x48+var_44]
B673A:  LDR.W           R0, [R8]
B673E:  ADD.W           R11, R8, #0x34 ; '4'
B6742:  STR             R0, [SP,#0x48+var_20]
B6744:  LDR.W           R0, [R8,#4]
B6748:  STR             R0, [SP,#0x48+var_24]
B674A:  LDR.W           R0, [R8,#8]
B674E:  STR             R0, [SP,#0x48+var_28]
B6750:  LDR.W           R0, [R8,#0xC]
B6754:  STR             R0, [SP,#0x48+var_2C]
B6756:  LDRD.W          R9, LR, [R8,#0x10]
B675A:  LDRD.W          R12, R1, [R8,#0x18]
B675E:  LDR.W           R0, [R8,#0x20]
B6762:  ADD             LR, R9
B6764:  STR             R0, [SP,#0x48+var_30]
B6766:  ADD.W           R4, R1, R12
B676A:  LDRD.W          R3, R2, [R8,#0x24]
B676E:  LDRD.W          R10, R0, [R8,#0x2C]
B6772:  LDM.W           R11, {R5,R6,R11}
B6776:  ADD             R2, R10
B6778:  ADDS            R1, R5, R0
B677A:  ADD.W           R0, R11, R6
B677E:  LDR             R6, [SP,#0x48+var_30]
B6780:  LDR.W           R11, [SP,#0x48+var_44]
B6784:  ADD             R3, R6
B6786:  LDRD.W          R5, R6, [SP,#0x48+var_24]
B678A:  ADD.W           R10, R5, R6
B678E:  LDRD.W          R5, R6, [SP,#0x48+var_2C]
B6792:  STRD.W          R1, R0, [SP,#0x48+var_24]
B6796:  ADD             R0, R1
B6798:  ADD             R6, R5
B679A:  STRD.W          R3, R2, [SP,#0x48+var_30]
B679E:  ADDS            R1, R2, R3
B67A0:  STR             R0, [SP,#0x48+var_28]
B67A2:  STR             R1, [SP,#0x48+var_34]
B67A4:  ADD.W           R5, R4, LR
B67A8:  STRD.W          LR, R4, [SP,#0x48+var_40]
B67AC:  ADD.W           R4, R6, R10
B67B0:  ADD             R0, R1
B67B2:  ADD.W           R9, R5, R4
B67B6:  STR             R0, [SP,#0x48+var_38]
B67B8:  ADD             R0, R9
B67BA:  CMP             R0, #1
B67BC:  BLT             loc_B67D8
B67BE:  LDR             R1, =(silk_shell_code_table_offsets_ptr - 0xB67C8)
B67C0:  MOVS            R3, #8
B67C2:  LDR             R2, =(silk_shell_code_table3_ptr - 0xB67CA)
B67C4:  ADD             R1, PC; silk_shell_code_table_offsets_ptr
B67C6:  ADD             R2, PC; silk_shell_code_table3_ptr
B67C8:  LDR             R1, [R1]; silk_shell_code_table_offsets
B67CA:  LDR             R2, [R2]; silk_shell_code_table3
B67CC:  LDRB            R0, [R1,R0]
B67CE:  MOV             R1, R9
B67D0:  ADD             R2, R0
B67D2:  MOV             R0, R11
B67D4:  BLX             j_ec_enc_icdf
B67D8:  CMP.W           R9, #1
B67DC:  BLT             loc_B67FA
B67DE:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB67E8)
B67E0:  MOVS            R3, #8
B67E2:  LDR             R1, =(silk_shell_code_table2_ptr - 0xB67EA)
B67E4:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B67E6:  ADD             R1, PC; silk_shell_code_table2_ptr
B67E8:  LDR             R0, [R0]; silk_shell_code_table_offsets
B67EA:  LDR             R1, [R1]; silk_shell_code_table2
B67EC:  LDRB.W          R0, [R0,R9]
B67F0:  ADDS            R2, R1, R0
B67F2:  MOV             R0, R11
B67F4:  MOV             R1, R4
B67F6:  BLX             j_ec_enc_icdf
B67FA:  CMP             R4, #1
B67FC:  BLT             loc_B6818
B67FE:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB6808)
B6800:  MOVS            R3, #8
B6802:  LDR             R1, =(silk_shell_code_table1_ptr - 0xB680A)
B6804:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B6806:  ADD             R1, PC; silk_shell_code_table1_ptr
B6808:  LDR             R0, [R0]; silk_shell_code_table_offsets
B680A:  LDR             R1, [R1]; silk_shell_code_table1
B680C:  LDRB            R0, [R0,R4]
B680E:  ADDS            R2, R1, R0
B6810:  MOV             R0, R11
B6812:  MOV             R1, R10
B6814:  BLX             j_ec_enc_icdf
B6818:  CMP.W           R10, #1
B681C:  BLT             loc_B683C
B681E:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB6828)
B6820:  MOVS            R3, #8
B6822:  LDR             R1, =(silk_shell_code_table0_ptr - 0xB682A)
B6824:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B6826:  ADD             R1, PC; silk_shell_code_table0_ptr
B6828:  LDR             R0, [R0]; silk_shell_code_table_offsets
B682A:  LDR             R2, [R1]; silk_shell_code_table0
B682C:  LDR.W           R1, [R8]
B6830:  LDRB.W          R0, [R0,R10]
B6834:  ADD             R2, R0
B6836:  MOV             R0, R11
B6838:  BLX             j_ec_enc_icdf
B683C:  LDR.W           R9, [SP,#0x48+var_24]
B6840:  CMP             R6, #1
B6842:  BLT             loc_B6860
B6844:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB684E)
B6846:  MOVS            R3, #8
B6848:  LDR             R1, =(silk_shell_code_table0_ptr - 0xB6850)
B684A:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B684C:  ADD             R1, PC; silk_shell_code_table0_ptr
B684E:  LDR             R0, [R0]; silk_shell_code_table_offsets
B6850:  LDR             R2, [R1]; silk_shell_code_table0
B6852:  LDR.W           R1, [R8,#8]
B6856:  LDRB            R0, [R0,R6]
B6858:  ADD             R2, R0
B685A:  MOV             R0, R11
B685C:  BLX             j_ec_enc_icdf
B6860:  CMP             R5, #1
B6862:  MOV             R2, R5
B6864:  LDR             R4, [SP,#0x48+var_20]
B6866:  LDR             R5, [SP,#0x48+var_40]
B6868:  BLT             loc_B6884
B686A:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB6874)
B686C:  MOVS            R3, #8
B686E:  LDR             R1, =(silk_shell_code_table1_ptr - 0xB6876)
B6870:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B6872:  ADD             R1, PC; silk_shell_code_table1_ptr
B6874:  LDR             R0, [R0]; silk_shell_code_table_offsets
B6876:  LDR             R1, [R1]; silk_shell_code_table1
B6878:  LDRB            R0, [R0,R2]
B687A:  ADDS            R2, R1, R0
B687C:  MOV             R0, R11
B687E:  MOV             R1, R5
B6880:  BLX             j_ec_enc_icdf
B6884:  LDR             R6, [SP,#0x48+var_34]
B6886:  CMP             R5, #1
B6888:  BLT             loc_B68A6
B688A:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB6894)
B688C:  MOVS            R3, #8
B688E:  LDR             R1, =(silk_shell_code_table0_ptr - 0xB6896)
B6890:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B6892:  ADD             R1, PC; silk_shell_code_table0_ptr
B6894:  LDR             R0, [R0]; silk_shell_code_table_offsets
B6896:  LDR             R2, [R1]; silk_shell_code_table0
B6898:  LDR.W           R1, [R8,#0x10]
B689C:  LDRB            R0, [R0,R5]
B689E:  ADD             R2, R0
B68A0:  MOV             R0, R11
B68A2:  BLX             j_ec_enc_icdf
B68A6:  LDR             R0, [SP,#0x48+var_3C]
B68A8:  LDRD.W          R5, R10, [SP,#0x48+var_30]
B68AC:  CMP             R0, #1
B68AE:  BLT             loc_B68CE
B68B0:  MOV             R3, R0
B68B2:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB68BA)
B68B4:  LDR             R1, =(silk_shell_code_table0_ptr - 0xB68BC)
B68B6:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B68B8:  ADD             R1, PC; silk_shell_code_table0_ptr
B68BA:  LDR             R0, [R0]; silk_shell_code_table_offsets
B68BC:  LDR             R2, [R1]; silk_shell_code_table0
B68BE:  LDR.W           R1, [R8,#0x18]
B68C2:  LDRB            R0, [R0,R3]
B68C4:  MOVS            R3, #8
B68C6:  ADD             R2, R0
B68C8:  MOV             R0, R11
B68CA:  BLX             j_ec_enc_icdf
B68CE:  LDR             R0, [SP,#0x48+var_38]
B68D0:  CMP             R0, #1
B68D2:  BLT             loc_B68F0
B68D4:  MOV             R2, R0
B68D6:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB68E0)
B68D8:  LDR             R1, =(silk_shell_code_table2_ptr - 0xB68E2)
B68DA:  MOVS            R3, #8
B68DC:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B68DE:  ADD             R1, PC; silk_shell_code_table2_ptr
B68E0:  LDR             R0, [R0]; silk_shell_code_table_offsets
B68E2:  LDR             R1, [R1]; silk_shell_code_table2
B68E4:  LDRB            R0, [R0,R2]
B68E6:  ADDS            R2, R1, R0
B68E8:  MOV             R0, R11
B68EA:  MOV             R1, R6
B68EC:  BLX             j_ec_enc_icdf
B68F0:  CMP             R6, #1
B68F2:  BLT             loc_B690E
B68F4:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB68FE)
B68F6:  MOVS            R3, #8
B68F8:  LDR             R1, =(silk_shell_code_table1_ptr - 0xB6900)
B68FA:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B68FC:  ADD             R1, PC; silk_shell_code_table1_ptr
B68FE:  LDR             R0, [R0]; silk_shell_code_table_offsets
B6900:  LDR             R1, [R1]; silk_shell_code_table1
B6902:  LDRB            R0, [R0,R6]
B6904:  ADDS            R2, R1, R0
B6906:  MOV             R0, R11
B6908:  MOV             R1, R5
B690A:  BLX             j_ec_enc_icdf
B690E:  CMP             R5, #1
B6910:  BLT             loc_B692E
B6912:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB691C)
B6914:  MOVS            R3, #8
B6916:  LDR             R1, =(silk_shell_code_table0_ptr - 0xB691E)
B6918:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B691A:  ADD             R1, PC; silk_shell_code_table0_ptr
B691C:  LDR             R0, [R0]; silk_shell_code_table_offsets
B691E:  LDR             R2, [R1]; silk_shell_code_table0
B6920:  LDR.W           R1, [R8,#0x20]
B6924:  LDRB            R0, [R0,R5]
B6926:  ADD             R2, R0
B6928:  MOV             R0, R11
B692A:  BLX             j_ec_enc_icdf
B692E:  CMP.W           R10, #1
B6932:  BLT             loc_B6952
B6934:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB693E)
B6936:  MOVS            R3, #8
B6938:  LDR             R1, =(silk_shell_code_table0_ptr - 0xB6940)
B693A:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B693C:  ADD             R1, PC; silk_shell_code_table0_ptr
B693E:  LDR             R0, [R0]; silk_shell_code_table_offsets
B6940:  LDR             R2, [R1]; silk_shell_code_table0
B6942:  LDR.W           R1, [R8,#0x28]
B6946:  LDRB.W          R0, [R0,R10]
B694A:  ADD             R2, R0
B694C:  MOV             R0, R11
B694E:  BLX             j_ec_enc_icdf
B6952:  LDR             R2, [SP,#0x48+var_28]
B6954:  CMP             R2, #1
B6956:  BLT             loc_B6972
B6958:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB6962)
B695A:  MOVS            R3, #8
B695C:  LDR             R1, =(silk_shell_code_table1_ptr - 0xB6964)
B695E:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B6960:  ADD             R1, PC; silk_shell_code_table1_ptr
B6962:  LDR             R0, [R0]; silk_shell_code_table_offsets
B6964:  LDR             R1, [R1]; silk_shell_code_table1
B6966:  LDRB            R0, [R0,R2]
B6968:  ADDS            R2, R1, R0
B696A:  MOV             R0, R11
B696C:  MOV             R1, R9
B696E:  BLX             j_ec_enc_icdf
B6972:  CMP.W           R9, #1
B6976:  BLT             loc_B6996
B6978:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB6982)
B697A:  MOVS            R3, #8
B697C:  LDR             R1, =(silk_shell_code_table0_ptr - 0xB6984)
B697E:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B6980:  ADD             R1, PC; silk_shell_code_table0_ptr
B6982:  LDR             R0, [R0]; silk_shell_code_table_offsets
B6984:  LDR             R2, [R1]; silk_shell_code_table0
B6986:  LDR.W           R1, [R8,#0x30]
B698A:  LDRB.W          R0, [R0,R9]
B698E:  ADD             R2, R0
B6990:  MOV             R0, R11
B6992:  BLX             j_ec_enc_icdf
B6996:  CMP             R4, #1
B6998:  BLT             loc_B69C0
B699A:  LDR             R0, =(silk_shell_code_table_offsets_ptr - 0xB69A4)
B699C:  MOVS            R3, #8
B699E:  LDR             R1, =(silk_shell_code_table0_ptr - 0xB69A6)
B69A0:  ADD             R0, PC; silk_shell_code_table_offsets_ptr
B69A2:  ADD             R1, PC; silk_shell_code_table0_ptr
B69A4:  LDR             R0, [R0]; silk_shell_code_table_offsets
B69A6:  LDR             R1, [R1]; silk_shell_code_table0
B69A8:  LDRB            R0, [R0,R4]
B69AA:  ADDS            R2, R1, R0
B69AC:  LDR.W           R1, [R8,#0x38]
B69B0:  MOV             R0, R11
B69B2:  ADD             SP, SP, #0x2C ; ','
B69B4:  POP.W           {R8-R11}
B69B8:  POP.W           {R4-R7,LR}
B69BC:  B.W             sub_10C1D0
B69C0:  ADD             SP, SP, #0x2C ; ','
B69C2:  POP.W           {R8-R11}
B69C6:  POP             {R4-R7,PC}
