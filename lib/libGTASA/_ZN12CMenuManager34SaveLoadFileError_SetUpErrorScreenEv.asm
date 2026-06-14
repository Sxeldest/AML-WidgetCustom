; =========================================================
; Game Engine Function: _ZN12CMenuManager34SaveLoadFileError_SetUpErrorScreenEv
; Address            : 0x435918 - 0x43594E
; =========================================================

435918:  LDR             R1, =(PcSaveHelper_ptr - 0x43591E)
43591A:  ADD             R1, PC; PcSaveHelper_ptr
43591C:  LDR             R1, [R1]; PcSaveHelper
43591E:  LDR             R1, [R1]
435920:  SUBS            R1, #1; switch 10 cases
435922:  CMP             R1, #9
435924:  IT HI
435926:  BXHI            LR
435928:  TBB.W           [PC,R1]; switch jump
43592C:  DCB 5; jump table for switch statement
43592D:  DCB 5
43592E:  DCB 5
43592F:  DCB 8
435930:  DCB 8; this
435931:  DCB 8
435932:  DCB 0xE
435933:  DCB 0xB
435934:  DCB 0xB
435935:  DCB 0xB
435936:  MOVS            R1, #0x1E; jumptable 00435928 cases 1-3
435938:  B.W             sub_193988
43593C:  MOVS            R1, #0x1F; jumptable 00435928 cases 4-6
43593E:  B.W             sub_193988
435942:  MOVS            R1, #0x1D; jumptable 00435928 cases 8-10
435944:  B.W             sub_193988
435948:  MOVS            R1, #0x20 ; ' '; jumptable 00435928 case 7
43594A:  B.W             sub_193988
