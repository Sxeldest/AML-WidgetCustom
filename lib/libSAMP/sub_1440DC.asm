; =========================================================
; Game Engine Function: sub_1440DC
; Address            : 0x1440DC - 0x14414C
; =========================================================

1440DC:  PUSH            {R4-R7,LR}
1440DE:  ADD             R7, SP, #0xC
1440E0:  PUSH.W          {R8,R9,R11}
1440E4:  SUB             SP, SP, #8
1440E6:  ADD             R1, SP, #0x20+var_1C; int
1440E8:  MOV.W           R9, #0
1440EC:  MOVS            R2, #0x20 ; ' '
1440EE:  MOVS            R3, #1
1440F0:  MOV             R8, R0
1440F2:  STR.W           R9, [SP,#0x20+var_1C]
1440F6:  BL              sub_17D786
1440FA:  LDR             R6, [SP,#0x20+var_1C]
1440FC:  ADDS            R4, R6, #1
1440FE:  IT CS
144100:  MOVCS.W         R4, #0xFFFFFFFF
144104:  MOV             R0, R4; unsigned int
144106:  BLX             j__Znaj; operator new[](uint)
14410A:  MOV             R5, R0
14410C:  STRB.W          R9, [R0],#1; int
144110:  SUBS            R1, R4, #1; n
144112:  BLX             sub_22178C
144116:  MOV             R0, R8; int
144118:  MOV             R1, R5; dest
14411A:  MOV             R2, R6
14411C:  BL              sub_17D744
144120:  LDR             R0, =(off_23494C - 0x14412E)
144122:  MOV             R1, #0x678FF8
14412A:  ADD             R0, PC; off_23494C
14412C:  LDR             R0, [R0]; dword_23DF24
14412E:  LDR             R0, [R0]
144130:  LDR             R0, [R0,R1]
144132:  MOV             R1, R5
144134:  LDR             R2, =(aSite16m - 0x14413A); "site16M" ...
144136:  ADD             R2, PC; "site16M"
144138:  ADDS            R0, #4
14413A:  BL              sub_163108
14413E:  MOV             R0, R5; void *
144140:  BLX             j__ZdaPv; operator delete[](void *)
144144:  ADD             SP, SP, #8
144146:  POP.W           {R8,R9,R11}
14414A:  POP             {R4-R7,PC}
