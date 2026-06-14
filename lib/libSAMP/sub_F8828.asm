; =========================================================
; Game Engine Function: sub_F8828
; Address            : 0xF8828 - 0xF885C
; =========================================================

F8828:  LDR             R0, [R0,#8]
F882A:  LDR             R2, [R0]
F882C:  STR             R2, [R1]
F882E:  LDR             R2, [R0,#4]
F8830:  STR             R2, [R1,#4]
F8832:  LDR             R2, [R0,#8]
F8834:  STR             R2, [R1,#8]
F8836:  LDR             R2, [R0,#0x10]
F8838:  STR             R2, [R1,#0x10]
F883A:  LDR             R2, [R0,#0x14]
F883C:  STR             R2, [R1,#0x14]
F883E:  LDR             R2, [R0,#0x18]
F8840:  STR             R2, [R1,#0x18]
F8842:  LDR             R2, [R0,#0x20]
F8844:  STR             R2, [R1,#0x20]
F8846:  LDR             R2, [R0,#0x24]
F8848:  STR             R2, [R1,#0x24]
F884A:  LDR             R2, [R0,#0x28]
F884C:  STR             R2, [R1,#0x28]
F884E:  LDR             R2, [R0,#0x30]
F8850:  STR             R2, [R1,#0x30]
F8852:  LDR             R2, [R0,#0x34]
F8854:  STR             R2, [R1,#0x34]
F8856:  LDR             R0, [R0,#0x38]
F8858:  STR             R0, [R1,#0x38]
F885A:  BX              LR
