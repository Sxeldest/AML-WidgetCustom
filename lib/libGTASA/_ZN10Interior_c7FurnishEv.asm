; =========================================================
; Game Engine Function: _ZN10Interior_c7FurnishEv
; Address            : 0x445790 - 0x4457BA
; =========================================================

445790:  LDR             R1, [R0,#0x14]
445792:  LDRB            R1, [R1]
445794:  CMP             R1, #4; switch 5 cases
445796:  IT HI
445798:  BXHI            LR
44579A:  TBB.W           [PC,R1]; switch jump
44579E:  DCB 3; jump table for switch statement
44579F:  DCB 6
4457A0:  DCB 8; this
4457A1:  DCB 0xA
4457A2:  DCB 0xC
4457A3:  ALIGN 2
4457A4:  MOVS            R1, #0; jumptable 0044579A case 0
4457A6:  B.W             sub_1954DC
4457AA:  B.W             sub_1933C8; jumptable 0044579A case 1
4457AE:  B.W             j_j__ZN10Interior_c13FurnishLoungeEv; jumptable 0044579A case 2
4457B2:  B.W             sub_19C7BC; jumptable 0044579A case 3
4457B6:  B.W             sub_1925EC; jumptable 0044579A case 4
