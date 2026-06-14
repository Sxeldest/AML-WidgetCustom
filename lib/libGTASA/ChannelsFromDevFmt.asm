; =========================================================
; Game Engine Function: ChannelsFromDevFmt
; Address            : 0x248940 - 0x248974
; =========================================================

248940:  SUB.W           R1, R0, #0x1500; switch 7 cases
248944:  CMP             R1, #6
248946:  BHI             def_24894A; jumptable 0024894A default case
248948:  MOVS            R0, #1
24894A:  TBB.W           [PC,R1]; switch jump
24894E:  DCB 0xC; jump table for switch statement
24894F:  DCB 4
248950:  DCB 0xB
248951:  DCB 0xD
248952:  DCB 9
248953:  DCB 0xF
248954:  DCB 0x11
248955:  ALIGN 2
248956:  MOVS            R0, #2; jumptable 0024894A case 5377
248958:  BX              LR
24895A:  CMP.W           R0, #0x80000000; jumptable 0024894A default case
24895E:  BNE             loc_248964; jumptable 0024894A case 5378
248960:  MOVS            R0, #6; jumptable 0024894A case 5380
248962:  BX              LR
248964:  MOVS            R0, #0; jumptable 0024894A case 5378
248966:  BX              LR; jumptable 0024894A case 5376
248968:  MOVS            R0, #4; jumptable 0024894A case 5379
24896A:  BX              LR
24896C:  MOVS            R0, #7; jumptable 0024894A case 5381
24896E:  BX              LR
248970:  MOVS            R0, #8; jumptable 0024894A case 5382
248972:  BX              LR
