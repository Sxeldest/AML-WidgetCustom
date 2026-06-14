; =========================================================
; Game Engine Function: sub_1177F8
; Address            : 0x1177F8 - 0x117832
; =========================================================

1177F8:  PUSH            {R4,R6,R7,LR}
1177FA:  ADD             R7, SP, #8
1177FC:  SUB             SP, SP, #0x10
1177FE:  MOV             R4, R0
117800:  LDR             R0, =(_ZTV10ICustomHud - 0x117806); `vtable for'ICustomHud ...
117802:  ADD             R0, PC; `vtable for'ICustomHud
117804:  ADDS            R0, #8
117806:  STR             R0, [R4]
117808:  ADD             R0, SP, #0x18+var_14
11780A:  MOV             R1, R4
11780C:  BL              sub_116964
117810:  LDR             R1, =(aRemoveHud - 0x117816); "Remove HUD {}" ...
117812:  ADD             R1, PC; "Remove HUD {}"
117814:  ADD             R3, SP, #0x18+var_14
117816:  MOVS            R0, #1
117818:  MOVS            R2, #0xD
11781A:  BL              sub_10B7B4
11781E:  LDRB.W          R0, [SP,#0x18+var_14]
117822:  LSLS            R0, R0, #0x1F
117824:  ITT NE
117826:  LDRNE           R0, [SP,#0x18+var_C]; void *
117828:  BLXNE           j__ZdlPv; operator delete(void *)
11782C:  MOV             R0, R4
11782E:  ADD             SP, SP, #0x10
117830:  POP             {R4,R6,R7,PC}
