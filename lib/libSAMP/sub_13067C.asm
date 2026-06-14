; =========================================================
; Game Engine Function: sub_13067C
; Address            : 0x13067C - 0x130756
; =========================================================

13067C:  PUSH            {R4-R7,LR}
13067E:  ADD             R7, SP, #0xC
130680:  PUSH.W          {R11}
130684:  SUB             SP, SP, #0x10
130686:  MOV             R5, R1
130688:  LDR             R1, =(byte_8F794 - 0x130692)
13068A:  ADD             R6, SP, #0x20+var_1C
13068C:  MOV             R4, R0
13068E:  ADD             R1, PC; byte_8F794 ; s
130690:  MOV             R0, R6; int
130692:  BL              sub_DC6DC
130696:  MOV             R0, R4
130698:  MOV             R1, R6
13069A:  MOVS            R2, #0
13069C:  BL              sub_13CE34
1306A0:  LDRB.W          R0, [SP,#0x20+var_1C]
1306A4:  LSLS            R0, R0, #0x1F
1306A6:  ITT NE
1306A8:  LDRNE           R0, [SP,#0x20+var_14]; void *
1306AA:  BLXNE           j__ZdlPv; operator delete(void *)
1306AE:  LDR             R0, =(_ZTVN14KeyboardLayout3Row3KeyE - 0x1306B4); `vtable for'KeyboardLayout::Row::Key ...
1306B0:  ADD             R0, PC; `vtable for'KeyboardLayout::Row::Key
1306B2:  ADDS            R0, #8
1306B4:  STR             R0, [R4]
1306B6:  SUBS            R0, R5, #4; switch 5 cases
1306B8:  CMP             R0, #4
1306BA:  BHI             def_1306BC; jumptable 001306BC default case
1306BC:  TBB.W           [PC,R0]; switch jump
1306C0:  DCB 3; jump table for switch statement
1306C1:  DCB 0x17
1306C2:  DCB 0x21
1306C3:  DCB 0x2B
1306C4:  DCB 0x35
1306C5:  ALIGN 2
1306C6:  LDR             R1, =(unk_89192 - 0x1306CC); jumptable 001306BC case 4
1306C8:  ADD             R1, PC; unk_89192 ; src
1306CA:  ADD             R0, SP, #0x20+var_1C; int
1306CC:  BL              sub_13055C
1306D0:  ADD             R1, SP, #0x20+var_1C
1306D2:  MOV             R0, R4
1306D4:  BL              sub_130514
1306D8:  B               loc_13073C
1306DA:  LDR             R1, =(byte_8F794 - 0x1306E0); jumptable 001306BC default case
1306DC:  ADD             R1, PC; byte_8F794 ; src
1306DE:  ADD             R0, SP, #0x20+var_1C; int
1306E0:  BL              sub_13055C
1306E4:  ADD             R1, SP, #0x20+var_1C
1306E6:  MOV             R0, R4
1306E8:  BL              sub_130514
1306EC:  B               loc_13073C
1306EE:  LDR             R1, =(aB_3 - 0x1306F4); jumptable 001306BC case 5
1306F0:  ADD             R1, PC; "B[..]"
1306F2:  ADD             R0, SP, #0x20+var_1C; int
1306F4:  BL              sub_13055C
1306F8:  ADD             R1, SP, #0x20+var_1C
1306FA:  MOV             R0, R4
1306FC:  BL              sub_130514
130700:  B               loc_13073C
130702:  LDR             R1, =(aRu - 0x130708); jumptable 001306BC case 6
130704:  ADD             R1, PC; "ru"
130706:  ADD             R0, SP, #0x20+var_1C; int
130708:  BL              sub_13055C
13070C:  ADD             R1, SP, #0x20+var_1C
13070E:  MOV             R0, R4
130710:  BL              sub_130514
130714:  B               loc_13073C
130716:  LDR             R1, =(aEng - 0x13071C); jumptable 001306BC case 7
130718:  ADD             R1, PC; "eng"
13071A:  ADD             R0, SP, #0x20+var_1C; int
13071C:  BL              sub_13055C
130720:  ADD             R1, SP, #0x20+var_1C
130722:  MOV             R0, R4
130724:  BL              sub_130514
130728:  B               loc_13073C
13072A:  LDR             R1, =(aBack - 0x130730); jumptable 001306BC case 8
13072C:  ADD             R1, PC; "[back]"
13072E:  ADD             R0, SP, #0x20+var_1C; int
130730:  BL              sub_13055C
130734:  ADD             R1, SP, #0x20+var_1C
130736:  MOV             R0, R4
130738:  BL              sub_130514
13073C:  LDRB.W          R0, [SP,#0x20+var_1C]
130740:  LSLS            R0, R0, #0x1F
130742:  ITT NE
130744:  LDRNE           R0, [SP,#0x20+var_14]; void *
130746:  BLXNE           j__ZdlPv; operator delete(void *)
13074A:  STR             R5, [R4,#0x70]
13074C:  MOV             R0, R4
13074E:  ADD             SP, SP, #0x10
130750:  POP.W           {R11}
130754:  POP             {R4-R7,PC}
