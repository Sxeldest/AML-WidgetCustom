; =========================================================
; Game Engine Function: sub_1D6750
; Address            : 0x1D6750 - 0x1D69BC
; =========================================================

1D6750:  PUSH            {R4-R11,LR}
1D6754:  ADD             R11, SP, #0x1C
1D6758:  SUB             SP, SP, #0xA4
1D675C:  LDR             R3, =(__stack_chk_guard_ptr - 0x1D676C)
1D6760:  CMP             R2, #1
1D6764:  LDR             R3, [PC,R3]; __stack_chk_guard
1D6768:  LDR             R3, [R3]
1D676C:  STR             R3, [R11,#var_20]
1D6770:  MOV             R3, R2,LSL#2
1D6774:  STR             R3, [SP,#0xC0+var_BC]
1D6778:  BLT             loc_1D67E8
1D677C:  SUB             R7, R11, #-var_44
1D6780:  ADD             R3, SP, #0xC0+var_68
1D6784:  MOV             LR, R2
1D6788:  MOV             R8, R0
1D678C:  MOV             R6, R1
1D6790:  LDRB            R5, [R6]
1D6794:  STR             R5, [R7]
1D6798:  LDRB            R4, [R6,#1]
1D679C:  ORR             R5, R5, R4,LSL#8
1D67A0:  SXTH            R12, R5
1D67A4:  STR             R12, [R7],#4
1D67A8:  LDRB            R4, [R6,#2]
1D67AC:  STR             R4, [R3]
1D67B0:  LDRB            R5, [R6,#3]
1D67B4:  ADD             R6, R6, #4
1D67B8:  ORR             R5, R4, R5,LSL#8
1D67BC:  SXTH            R5, R5
1D67C0:  CMP             R5, #0
1D67C4:  MOVLE           R5, #0
1D67C8:  CMP             R5, #0x58 ; 'X'
1D67CC:  MOVGE           R5, #0x58 ; 'X'
1D67D0:  SUBS            LR, LR, #1
1D67D4:  STR             R5, [R3],#4
1D67D8:  STRH            R12, [R8],#2
1D67DC:  BNE             loc_1D6790
1D67E0:  LDR             R3, [SP,#0xC0+var_BC]
1D67E4:  ADD             R1, R1, R3
1D67E8:  ADD             R6, R0, R2,LSL#1
1D67EC:  MOV             R0, R2,LSL#1
1D67F0:  STR             R0, [SP,#0xC0+var_A4]
1D67F4:  MOV             R0, R2,LSL#4
1D67F8:  STR             R0, [SP,#0xC0+var_B8]
1D67FC:  MOV             R0, #9
1D6800:  STR             R0, [SP,#0xC0+var_A0]
1D6804:  MOVW            R7, #0x8000
1D6808:  LDR             R0, =(unk_C4AF0 - 0x1D6820)
1D680C:  MOV             R9, #1
1D6810:  LDR             R3, =(unk_C4AB0 - 0x1D682C)
1D6814:  MOVT            R7, #0xFFFF
1D6818:  ADD             R0, PC, R0; unk_C4AF0
1D681C:  STR             R0, [SP,#0xC0+var_A8]
1D6820:  LDR             R0, =(unk_C4C54 - 0x1D6834)
1D6824:  ADD             R10, PC, R3; unk_C4AB0
1D6828:  STR             R2, [SP,#0xC0+var_9C]
1D682C:  ADD             R0, PC, R0; unk_C4C54
1D6830:  STR             R0, [SP,#0xC0+var_90]
1D6834:  LDR             R8, [SP,#0xC0+var_A8]
1D6838:  CMP             R2, #1
1D683C:  BLT             loc_1D688C
1D6840:  ADD             R5, SP, #0xC0+var_8C
1D6844:  MOV             LR, R2
1D6848:  MOV             R4, R1
1D684C:  LDRB            R12, [R4]
1D6850:  SUBS            LR, LR, #1
1D6854:  STR             R12, [R5]
1D6858:  LDRB            R0, [R4,#1]
1D685C:  ORR             R12, R12, R0,LSL#8
1D6860:  STR             R12, [R5]
1D6864:  LDRB            R0, [R4,#2]
1D6868:  ORR             R12, R12, R0,LSL#16
1D686C:  STR             R12, [R5]
1D6870:  LDRB            R0, [R4,#3]
1D6874:  ADD             R4, R4, #4
1D6878:  ORR             R0, R12, R0,LSL#24
1D687C:  STR             R0, [R5],#4
1D6880:  BNE             loc_1D684C
1D6884:  LDR             R0, [SP,#0xC0+var_BC]
1D6888:  ADD             R1, R1, R0
1D688C:  STR             R1, [SP,#0xC0+var_AC]
1D6890:  MOV             R1, R9
1D6894:  STR             R6, [SP,#0xC0+var_B0]
1D6898:  STR             R6, [SP,#0xC0+var_94]
1D689C:  STR             R9, [SP,#0xC0+var_B4]
1D68A0:  CMP             R2, #1
1D68A4:  STR             R1, [SP,#0xC0+var_98]
1D68A8:  BLT             loc_1D6944
1D68AC:  LDR             R12, [SP,#0xC0+var_94]
1D68B0:  ADD             LR, SP, #0xC0+var_8C
1D68B4:  LDR             R2, [SP,#0xC0+var_9C]
1D68B8:  ADD             R1, SP, #0xC0+var_68
1D68BC:  SUB             R9, R11, #-var_44
1D68C0:  LDR             R4, [LR]
1D68C4:  MOV             R0, R10
1D68C8:  LDR             R5, [R1]
1D68CC:  MOV             R3, R7
1D68D0:  MOV             R10, R4,LSR#4
1D68D4:  AND             R4, R4, #0xF
1D68D8:  STR             R10, [LR],#4
1D68DC:  MOV             R10, R0
1D68E0:  LDR             R7, [R10,R4,LSL#2]
1D68E4:  LDR             R6, [R8,R5,LSL#2]
1D68E8:  LDR             R0, [SP,#0xC0+var_90]
1D68EC:  MUL             R6, R6, R7
1D68F0:  LDR             R7, [R9]
1D68F4:  LDR             R4, [R0,R4,LSL#2]
1D68F8:  ADD             R4, R5, R4
1D68FC:  MOV             R0, R6,ASR#31
1D6900:  ADD             R0, R6, R0,LSR#29
1D6904:  ADD             R0, R7, R0,ASR#3
1D6908:  MOV             R7, R3
1D690C:  CMP             R0, R7
1D6910:  MOVW            R3, #0x7FFF
1D6914:  MOVLE           R0, R7
1D6918:  CMP             R0, R3
1D691C:  MOVGE           R0, R3
1D6920:  CMP             R4, #0
1D6924:  MOVLE           R4, #0
1D6928:  CMP             R4, #0x58 ; 'X'
1D692C:  MOVGE           R4, #0x58 ; 'X'
1D6930:  STR             R0, [R9],#4
1D6934:  STR             R4, [R1],#4
1D6938:  SUBS            R2, R2, #1
1D693C:  STRH            R0, [R12],#2
1D6940:  BNE             loc_1D68C0
1D6944:  LDR             R0, [SP,#0xC0+var_A4]
1D6948:  LDR             R1, [SP,#0xC0+var_94]
1D694C:  LDR             R2, [SP,#0xC0+var_9C]
1D6950:  ADD             R1, R1, R0
1D6954:  STR             R1, [SP,#0xC0+var_94]
1D6958:  LDR             R1, [SP,#0xC0+var_98]
1D695C:  LDR             R0, [SP,#0xC0+var_A0]
1D6960:  ADD             R1, R1, #1
1D6964:  CMP             R1, R0
1D6968:  BNE             loc_1D68A0
1D696C:  LDR             R6, [SP,#0xC0+var_B0]
1D6970:  LDR             R0, [SP,#0xC0+var_B8]
1D6974:  ADD             R6, R6, R0
1D6978:  LDR             R0, [SP,#0xC0+var_A0]
1D697C:  ADD             R0, R0, #8
1D6980:  STR             R0, [SP,#0xC0+var_A0]
1D6984:  LDR             R0, [SP,#0xC0+var_B4]
1D6988:  ADD             R1, R0, #8
1D698C:  CMP             R0, #0x38 ; '8'
1D6990:  MOV             R9, R1
1D6994:  LDR             R1, [SP,#0xC0+var_AC]
1D6998:  BLE             loc_1D6838
1D699C:  LDR             R0, =(__stack_chk_guard_ptr - 0x1D69AC)
1D69A0:  LDR             R1, [R11,#var_20]
1D69A4:  LDR             R0, [PC,R0]; __stack_chk_guard
1D69A8:  LDR             R0, [R0]
1D69AC:  SUBS            R0, R0, R1
1D69B0:  SUBEQ           SP, R11, #0x1C
1D69B4:  POPEQ           {R4-R11,PC}
1D69B8:  BL              __stack_chk_fail
