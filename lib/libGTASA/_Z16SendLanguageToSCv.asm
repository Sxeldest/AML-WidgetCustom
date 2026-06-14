; =========================================================
; Game Engine Function: _Z16SendLanguageToSCv
; Address            : 0x2A8C84 - 0x2A8CCA
; =========================================================

2A8C84:  LDR             R0, =(FrontEndMenuManager_ptr - 0x2A8C8A)
2A8C86:  ADD             R0, PC; FrontEndMenuManager_ptr
2A8C88:  LDR             R0, [R0]; FrontEndMenuManager
2A8C8A:  LDRSB.W         R0, [R0,#(byte_98F140 - 0x98F0F8)]
2A8C8E:  CMP             R0, #6; switch 7 cases
2A8C90:  IT HI
2A8C92:  BXHI            LR
2A8C94:  TBB.W           [PC,R0]; switch jump
2A8C98:  DCB 4; jump table for switch statement
2A8C99:  DCB 7
2A8C9A:  DCB 0xA
2A8C9B:  DCB 0xD
2A8C9C:  DCB 0x10
2A8C9D:  DCB 0x13
2A8C9E:  DCB 0x16
2A8C9F:  ALIGN 2
2A8CA0:  ADR             R0, dword_2A8CE8; jumptable 002A8C94 case 0
2A8CA2:  B.W             j_j__Z20SCSetCurrentLangaugePKc; j_SCSetCurrentLangauge(char const*)
2A8CA6:  ADR             R0, dword_2A8CDC; jumptable 002A8C94 case 1
2A8CA8:  B.W             j_j__Z20SCSetCurrentLangaugePKc; j_SCSetCurrentLangauge(char const*)
2A8CAC:  ADR             R0, dword_2A8CD8; jumptable 002A8C94 case 2
2A8CAE:  B.W             j_j__Z20SCSetCurrentLangaugePKc; j_SCSetCurrentLangauge(char const*)
2A8CB2:  ADR             R0, dword_2A8CE4; jumptable 002A8C94 case 3
2A8CB4:  B.W             j_j__Z20SCSetCurrentLangaugePKc; j_SCSetCurrentLangauge(char const*)
2A8CB8:  ADR             R0, dword_2A8CE0; jumptable 002A8C94 case 4
2A8CBA:  B.W             j_j__Z20SCSetCurrentLangaugePKc; j_SCSetCurrentLangauge(char const*)
2A8CBE:  ADR             R0, dword_2A8CD4; jumptable 002A8C94 case 5
2A8CC0:  B.W             j_j__Z20SCSetCurrentLangaugePKc; j_SCSetCurrentLangauge(char const*)
2A8CC4:  ADR             R0, dword_2A8CD0; jumptable 002A8C94 case 6
2A8CC6:  B.W             j_j__Z20SCSetCurrentLangaugePKc; j_SCSetCurrentLangauge(char const*)
