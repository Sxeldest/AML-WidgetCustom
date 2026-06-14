; =========================================================
; Game Engine Function: sub_FD5FA
; Address            : 0xFD5FA - 0xFD706
; =========================================================

FD5FA:  MOVW            R2, #0xDC6B
FD5FE:  MOV             R1, R0
FD600:  MOVT            R2, #0x66 ; 'f'
FD604:  MOVS            R0, #0
FD606:  CMP             R1, R2
FD608:  BGT             loc_FD65A
FD60A:  MOV             R2, #0x66D917
FD612:  CMP             R1, R2
FD614:  BLE             loc_FD6A0
FD616:  MOV             R2, #0x66D918
FD61E:  CMP             R1, R2
FD620:  ITTT EQ
FD622:  MOVWEQ          R0, #0x8B14
FD626:  MOVTEQ          R0, #0x56 ; 'V'
FD62A:  BXEQ            LR
FD62C:  MOV             R2, #0x66DA30
FD634:  CMP             R1, R2
FD636:  ITTT EQ
FD638:  MOVWEQ          R0, #0xBE50
FD63C:  MOVTEQ          R0, #0x56 ; 'V'
FD640:  BXEQ            LR
FD642:  MOV             R2, #0x66DB44
FD64A:  CMP             R1, R2
FD64C:  ITTT EQ
FD64E:  MOVWEQ          R0, #0x1238
FD652:  MOVTEQ          R0, #0x57 ; 'W'
FD656:  BXEQ            LR
FD658:  BX              LR
FD65A:  MOV             R2, #0x66DEBB
FD662:  CMP             R1, R2
FD664:  BLE             loc_FD6CE
FD666:  MOV             R2, #0x66DEBC
FD66E:  CMP             R1, R2
FD670:  ITTT EQ
FD672:  MOVWEQ          R0, #0xA280
FD676:  MOVTEQ          R0, #0x57 ; 'W'
FD67A:  BXEQ            LR
FD67C:  MOV             R2, #0x66DFE4
FD684:  CMP             R1, R2
FD686:  BEQ             loc_FD6FC
FD688:  MOV             R2, #0x66E10C
FD690:  CMP             R1, R2
FD692:  ITTT EQ
FD694:  MOVWEQ          R0, #0xD030
FD698:  MOVTEQ          R0, #0x57 ; 'W'
FD69C:  BXEQ            LR
FD69E:  B               locret_FD658
FD6A0:  MOV             R2, #0x66D688
FD6A8:  CMP             R1, R2
FD6AA:  ITTT EQ
FD6AC:  MOVWEQ          R0, #0x3DD4
FD6B0:  MOVTEQ          R0, #0x55 ; 'U'
FD6B4:  BXEQ            LR
FD6B6:  MOV             R2, #0x66D800
FD6BE:  CMP             R1, R2
FD6C0:  ITTT EQ
FD6C2:  MOVWEQ          R0, #0x1A20
FD6C6:  MOVTEQ          R0, #0x56 ; 'V'
FD6CA:  BXEQ            LR
FD6CC:  B               locret_FD658
FD6CE:  MOV             R2, #0x66DC6C
FD6D6:  CMP             R1, R2
FD6D8:  ITTT EQ
FD6DA:  MOVWEQ          R0, #0x47F4
FD6DE:  MOVTEQ          R0, #0x57 ; 'W'
FD6E2:  BXEQ            LR
FD6E4:  MOV             R2, #0x66DD94
FD6EC:  CMP             R1, R2
FD6EE:  ITTT EQ
FD6F0:  MOVWEQ          R0, #0x5C88
FD6F4:  MOVTEQ          R0, #0x57 ; 'W'
FD6F8:  BXEQ            LR
FD6FA:  B               locret_FD658
FD6FC:  MOV             R0, #0x57B304
FD704:  BX              LR
