; =========================================================
; Game Engine Function: sub_130830
; Address            : 0x130830 - 0x1308AE
; =========================================================

130830:  PUSH            {R4-R7,LR}
130832:  ADD             R7, SP, #0xC
130834:  PUSH.W          {R11}
130838:  SUB             SP, SP, #0x10
13083A:  MOV             R4, R0
13083C:  LDRB.W          R0, [R0,#0x50]
130840:  CBZ             R0, loc_1308A6
130842:  LDR             R0, =(off_23496C - 0x130848)
130844:  ADD             R0, PC; off_23496C
130846:  LDR             R0, [R0]; dword_23DEF4
130848:  LDR             R5, [R0]
13084A:  CBZ             R5, loc_130876
13084C:  LDR             R6, [R4,#0x70]
13084E:  ADD             R0, SP, #0x20+var_1C; int
130850:  LDR             R1, =(byte_8F794 - 0x130856)
130852:  ADD             R1, PC; byte_8F794 ; s
130854:  BL              sub_DC6DC
130858:  SUBS            R2, R6, #1
13085A:  STR             R0, [SP,#0x20+var_20]
13085C:  MOV             R0, R5
13085E:  MOVS            R1, #1
130860:  MOV.W           R3, #0xFFFFFFFF
130864:  BL              sub_144712
130868:  LDRB.W          R0, [SP,#0x20+var_1C]
13086C:  LSLS            R0, R0, #0x1F
13086E:  ITT NE
130870:  LDRNE           R0, [SP,#0x20+var_14]; void *
130872:  BLXNE           j__ZdlPv; operator delete(void *)
130876:  MOV             R0, R4
130878:  BL              sub_13D014
13087C:  LDR             R0, [R4,#8]
13087E:  CBZ             R0, loc_1308A6
130880:  LDR             R0, [R0,#8]
130882:  CBZ             R0, loc_1308A6
130884:  LDR             R0, [R0,#8]; lpsrc
130886:  CBZ             R0, loc_1308A6
130888:  LDR             R1, =(off_234BA8 - 0x130892)
13088A:  MOVS            R3, #0; s2d
13088C:  LDR             R2, =(_ZTI8Keyboard - 0x130894); `typeinfo for'Keyboard ...
13088E:  ADD             R1, PC; off_234BA8
130890:  ADD             R2, PC; lpdtype
130892:  LDR             R1, [R1]; lpstype
130894:  BLX             j___dynamic_cast
130898:  CBZ             R0, loc_1308A6
13089A:  MOV             R4, R0
13089C:  BL              sub_12F66C
1308A0:  MOV             R0, R4
1308A2:  BL              sub_12F5E0
1308A6:  ADD             SP, SP, #0x10
1308A8:  POP.W           {R11}
1308AC:  POP             {R4-R7,PC}
