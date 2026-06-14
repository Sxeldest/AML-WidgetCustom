; =========================================================
; Game Engine Function: sub_120554
; Address            : 0x120554 - 0x1205FE
; =========================================================

120554:  PUSH            {R4-R7,LR}
120556:  ADD             R7, SP, #0xC
120558:  PUSH.W          {R11}
12055C:  LDR             R0, =(off_23494C - 0x12056A)
12055E:  MOV             R5, #0x6728E8
120566:  ADD             R0, PC; off_23494C
120568:  LDR             R4, [R0]; dword_23DF24
12056A:  LDR             R0, [R4]
12056C:  LDR             R1, =(loc_12052C+1 - 0x120576)
12056E:  LDR             R2, =(off_263900 - 0x12057C)
120570:  ADD             R0, R5
120572:  ADD             R1, PC; loc_12052C
120574:  ADD.W           R0, R0, #0x4C0
120578:  ADD             R2, PC; off_263900
12057A:  BL              sub_164196
12057E:  LDR             R0, [R4]
120580:  LDR             R1, =(loc_120540+1 - 0x12058A)
120582:  LDR             R2, =(off_263904 - 0x12058C)
120584:  ADD             R0, R5
120586:  ADD             R1, PC; loc_120540
120588:  ADD             R2, PC; off_263904
12058A:  BL              sub_164196
12058E:  LDR             R0, [R4]
120590:  MOVW            R6, #0x58C4
120594:  LDR             R1, =(sub_12063C+1 - 0x1205A2)
120596:  MOVT            R6, #0x67 ; 'g'
12059A:  LDR             R2, =(off_2638F0 - 0x1205A4)
12059C:  ADD             R0, R6
12059E:  ADD             R1, PC; sub_12063C
1205A0:  ADD             R2, PC; off_2638F0
1205A2:  BL              sub_164196
1205A6:  LDR             R0, [R4]
1205A8:  MOVW            R5, #0xF934
1205AC:  LDR             R1, =(sub_120664+1 - 0x1205BA)
1205AE:  MOVT            R5, #0x66 ; 'f'
1205B2:  LDR             R2, =(off_2638F4 - 0x1205BC)
1205B4:  ADD             R0, R5
1205B6:  ADD             R1, PC; sub_120664
1205B8:  ADD             R2, PC; off_2638F4
1205BA:  BL              sub_164196
1205BE:  LDR             R0, [R4]
1205C0:  LDR             R1, =(loc_120714+1 - 0x1205CA)
1205C2:  LDR             R2, =(off_2638F8 - 0x1205D0)
1205C4:  ADD             R0, R6
1205C6:  ADD             R1, PC; loc_120714
1205C8:  ADD.W           R0, R0, #0x560
1205CC:  ADD             R2, PC; off_2638F8
1205CE:  BL              sub_164196
1205D2:  LDR             R0, [R4]
1205D4:  LDR             R1, =(sub_12073C+1 - 0x1205DE)
1205D6:  LDR             R2, =(off_2638FC - 0x1205E2)
1205D8:  ADD             R0, R5
1205DA:  ADD             R1, PC; sub_12073C
1205DC:  ADDS            R0, #0x1C
1205DE:  ADD             R2, PC; off_2638FC
1205E0:  BL              sub_164196
1205E4:  LDR             R0, [R4]
1205E6:  LDR             R1, =(sub_120764+1 - 0x1205F0)
1205E8:  LDR             R2, =(off_263908 - 0x1205F4)
1205EA:  ADD             R0, R5
1205EC:  ADD             R1, PC; sub_120764
1205EE:  ADDS            R0, #0x48 ; 'H'
1205F0:  ADD             R2, PC; off_263908
1205F2:  POP.W           {R11}
1205F6:  POP.W           {R4-R7,LR}
1205FA:  B.W             sub_164196
