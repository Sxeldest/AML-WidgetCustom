; =========================================================
; Game Engine Function: sub_1728D8
; Address            : 0x1728D8 - 0x172950
; =========================================================

1728D8:  PUSH            {R4,R5,R7,LR}
1728DA:  ADD             R7, SP, #8
1728DC:  MOV             R4, R0
1728DE:  LDR             R0, [R0,#8]
1728E0:  CBZ             R0, loc_1728EE
1728E2:  MOVS            R5, #0
1728E4:  STRD.W          R5, R5, [R4]
1728E8:  BL              sub_165578
1728EC:  STR             R5, [R4,#8]
1728EE:  LDR             R0, [R4,#0x14]
1728F0:  CBZ             R0, loc_1728FE
1728F2:  MOVS            R5, #0
1728F4:  STRD.W          R5, R5, [R4,#0xC]
1728F8:  BL              sub_165578
1728FC:  STR             R5, [R4,#0x14]
1728FE:  LDR             R0, [R4,#0x20]
172900:  CBZ             R0, loc_17290E
172902:  MOVS            R5, #0
172904:  STRD.W          R5, R5, [R4,#0x18]
172908:  BL              sub_165578
17290C:  STR             R5, [R4,#0x20]
17290E:  LDR             R0, [R4,#0x48]
172910:  MOVS            R5, #0
172912:  STRD.W          R5, R5, [R4,#0x34]
172916:  STR             R5, [R4,#0x3C]
172918:  CBZ             R0, loc_172924
17291A:  STRD.W          R5, R5, [R4,#0x40]
17291E:  BL              sub_165578
172922:  STR             R5, [R4,#0x48]
172924:  LDR             R0, [R4,#0x54]
172926:  CBZ             R0, loc_172934
172928:  MOVS            R5, #0
17292A:  STRD.W          R5, R5, [R4,#0x4C]
17292E:  BL              sub_165578
172932:  STR             R5, [R4,#0x54]
172934:  LDR             R0, [R4,#0x60]
172936:  CBZ             R0, loc_172944
172938:  MOVS            R5, #0
17293A:  STRD.W          R5, R5, [R4,#0x58]
17293E:  BL              sub_165578
172942:  STR             R5, [R4,#0x60]
172944:  ADD.W           R0, R4, #0x64 ; 'd'
172948:  POP.W           {R4,R5,R7,LR}
17294C:  B.W             sub_172950
