; =========================================================
; Game Engine Function: sub_A87D4
; Address            : 0xA87D4 - 0xA8970
; =========================================================

A87D4:  PUSH            {R4-R7,LR}
A87D6:  ADD             R7, SP, #0xC
A87D8:  PUSH.W          {R8}
A87DC:  SUB             SP, SP, #0x28; float
A87DE:  MOV             R8, R3
A87E0:  LDR             R3, =(__stack_chk_guard_ptr - 0xA87E8)
A87E2:  CMP             R2, #9; switch 10 cases
A87E4:  ADD             R3, PC; __stack_chk_guard_ptr
A87E6:  LDR             R3, [R3]; __stack_chk_guard
A87E8:  LDR             R3, [R3]
A87EA:  STR             R3, [SP,#0x38+var_14]
A87EC:  BHI             def_A87FE; jumptable 000A87FE default case
A87EE:  LDRD.W          R4, LR, [R7,#arg_10]
A87F2:  VLDR            S0, [R7,#arg_C]
A87F6:  LDR.W           R12, [R7,#arg_8]
A87FA:  LDRD.W          R6, R5, [R7,#arg_0]
A87FE:  TBB.W           [PC,R2]; switch jump
A8802:  DCB 5; jump table for switch statement
A8803:  DCB 0x19
A8804:  DCB 0x2E
A8805:  DCB 0x40
A8806:  DCB 0x55
A8807:  DCB 0x62
A8808:  DCB 0x6F
A8809:  DCB 0x7E
A880A:  DCB 0x9E
A880B:  DCB 0x8D
A880C:  LDRSB.W         R3, [R8]; jumptable 000A87FE case 0
A8810:  LDRSB.W         R2, [R6]
A8814:  STR             R3, [SP,#0x38+var_18]
A8816:  ADD             R3, SP, #0x38+var_18; int
A8818:  LDRSB.W         R5, [R5]
A881C:  STMEA.W         SP, {R2,R5,R12}
A8820:  MOVS            R2, #4; int
A8822:  STRD.W          R4, LR, [SP,#0x38+var_28]; int
A8826:  VSTR            S0, [SP,#0x38+var_2C]
A882A:  BL              sub_A8978
A882E:  B               loc_A8852
A8830:  MOVS            R0, #0; jumptable 000A87FE default case
A8832:  B               loc_A8956
A8834:  LDRB.W          R3, [R8]; jumptable 000A87FE case 1
A8838:  LDRB            R2, [R6]
A883A:  STR             R3, [SP,#0x38+var_18]
A883C:  ADD             R3, SP, #0x38+var_18; int
A883E:  LDRB            R5, [R5]
A8840:  STMEA.W         SP, {R2,R5,R12}
A8844:  MOVS            R2, #5; int
A8846:  STRD.W          R4, LR, [SP,#0x38+var_28]; int
A884A:  VSTR            S0, [SP,#0x38+var_2C]
A884E:  BL              sub_A902C
A8852:  CMP             R0, #0
A8854:  ITT NE
A8856:  LDRNE           R1, [SP,#0x38+var_18]; int
A8858:  STRBNE.W        R1, [R8]
A885C:  B               loc_A8956
A885E:  LDRSH.W         R3, [R8]; jumptable 000A87FE case 2
A8862:  LDRSH.W         R2, [R6]
A8866:  STR             R3, [SP,#0x38+var_18]
A8868:  ADD             R3, SP, #0x38+var_18; int
A886A:  LDRSH.W         R5, [R5]
A886E:  STMEA.W         SP, {R2,R5,R12}
A8872:  MOVS            R2, #4; int
A8874:  STRD.W          R4, LR, [SP,#0x38+var_28]; int
A8878:  VSTR            S0, [SP,#0x38+var_2C]
A887C:  BL              sub_A8978
A8880:  B               loc_A88A0
A8882:  LDRH.W          R3, [R8]; jumptable 000A87FE case 3
A8886:  LDRH            R2, [R6]
A8888:  STR             R3, [SP,#0x38+var_18]
A888A:  ADD             R3, SP, #0x38+var_18; int
A888C:  LDRH            R5, [R5]
A888E:  STMEA.W         SP, {R2,R5,R12}
A8892:  MOVS            R2, #5; int
A8894:  STRD.W          R4, LR, [SP,#0x38+var_28]; int
A8898:  VSTR            S0, [SP,#0x38+var_2C]
A889C:  BL              sub_A902C
A88A0:  CMP             R0, #0
A88A2:  ITT NE
A88A4:  LDRNE           R1, [SP,#0x38+var_18]; int
A88A6:  STRHNE.W        R1, [R8]
A88AA:  B               loc_A8956
A88AC:  LDR             R2, [R6]; jumptable 000A87FE case 4
A88AE:  LDR             R3, [R5]
A88B0:  STMEA.W         SP, {R2,R3,R12}
A88B4:  MOVS            R2, #4; int
A88B6:  MOV             R3, R8; int
A88B8:  STRD.W          R4, LR, [SP,#0x38+var_28]; int
A88BC:  VSTR            S0, [SP,#0x38+var_2C]
A88C0:  BL              sub_A8978
A88C4:  B               loc_A8956
A88C6:  LDR             R2, [R6]; jumptable 000A87FE case 5
A88C8:  LDR             R3, [R5]
A88CA:  STMEA.W         SP, {R2,R3,R12}
A88CE:  MOVS            R2, #5; int
A88D0:  MOV             R3, R8; int
A88D2:  STRD.W          R4, LR, [SP,#0x38+var_28]; int
A88D6:  VSTR            S0, [SP,#0x38+var_2C]
A88DA:  BL              sub_A902C
A88DE:  B               loc_A8956
A88E0:  LDRD.W          R2, R3, [R6]; jumptable 000A87FE case 6
A88E4:  LDRD.W          R5, R6, [R5]
A88E8:  STMEA.W         SP, {R2,R3,R5,R6,R12}
A88EC:  MOVS            R2, #6; int
A88EE:  MOV             R3, R8; int
A88F0:  STRD.W          R4, LR, [SP,#0x38+var_20]; int
A88F4:  VSTR            S0, [SP,#0x38+var_24]
A88F8:  BL              sub_A95B0
A88FC:  B               loc_A8956
A88FE:  LDRD.W          R2, R3, [R6]; jumptable 000A87FE case 7
A8902:  LDRD.W          R5, R6, [R5]
A8906:  STMEA.W         SP, {R2,R3,R5,R6,R12}
A890A:  MOVS            R2, #7; int
A890C:  MOV             R3, R8; int
A890E:  STRD.W          R4, LR, [SP,#0x38+var_20]; int
A8912:  VSTR            S0, [SP,#0x38+var_24]
A8916:  BL              sub_A9EE0
A891A:  B               loc_A8956
A891C:  VLDR            D16, [R6]; jumptable 000A87FE case 9
A8920:  MOVS            R2, #9; int
A8922:  MOV             R3, R8; int
A8924:  VLDR            D17, [R5]
A8928:  STRD.W          R4, LR, [SP,#0x38+var_20]; int
A892C:  VSTR            S0, [SP,#0x38+var_24]
A8930:  STR.W           R12, [SP,#0x38+var_28]; int
A8934:  VSTMEA          SP, {D16-D17}
A8938:  BL              sub_AAC70
A893C:  B               loc_A8956
A893E:  LDR             R2, [R6]; jumptable 000A87FE case 8
A8940:  LDR             R3, [R5]
A8942:  STMEA.W         SP, {R2,R3,R12}
A8946:  MOVS            R2, #8; int
A8948:  MOV             R3, R8; int
A894A:  STRD.W          R4, LR, [SP,#0x38+var_28]; int
A894E:  VSTR            S0, [SP,#0x38+var_2C]
A8952:  BL              sub_AA5A8
A8956:  LDR             R1, [SP,#0x38+var_14]
A8958:  LDR             R2, =(__stack_chk_guard_ptr - 0xA895E)
A895A:  ADD             R2, PC; __stack_chk_guard_ptr
A895C:  LDR             R2, [R2]; __stack_chk_guard
A895E:  LDR             R2, [R2]
A8960:  CMP             R2, R1
A8962:  ITTT EQ
A8964:  ADDEQ           SP, SP, #0x28 ; '('
A8966:  POPEQ.W         {R8}
A896A:  POPEQ           {R4-R7,PC}
A896C:  BLX             __stack_chk_fail
