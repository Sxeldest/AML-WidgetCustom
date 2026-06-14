; =========================================================
; Game Engine Function: sub_F8910
; Address            : 0xF8910 - 0xF894A
; =========================================================

F8910:  LDR             R0, [R0,#4]
F8912:  CBZ             R0, locret_F8948
F8914:  LDR             R0, [R0,#0x14]
F8916:  CBZ             R0, locret_F8948
F8918:  LDR             R2, [R0]
F891A:  STR             R2, [R1]
F891C:  LDR             R2, [R0,#4]
F891E:  STR             R2, [R1,#4]
F8920:  LDR             R2, [R0,#8]
F8922:  STR             R2, [R1,#8]
F8924:  LDR             R2, [R0,#0x10]
F8926:  STR             R2, [R1,#0x10]
F8928:  LDR             R2, [R0,#0x14]
F892A:  STR             R2, [R1,#0x14]
F892C:  LDR             R2, [R0,#0x18]
F892E:  STR             R2, [R1,#0x18]
F8930:  LDR             R2, [R0,#0x20]
F8932:  STR             R2, [R1,#0x20]
F8934:  LDR             R2, [R0,#0x24]
F8936:  STR             R2, [R1,#0x24]
F8938:  LDR             R2, [R0,#0x28]
F893A:  STR             R2, [R1,#0x28]
F893C:  LDR             R2, [R0,#0x30]
F893E:  STR             R2, [R1,#0x30]
F8940:  LDR             R2, [R0,#0x34]
F8942:  STR             R2, [R1,#0x34]
F8944:  LDR             R0, [R0,#0x38]
F8946:  STR             R0, [R1,#0x38]
F8948:  BX              LR
