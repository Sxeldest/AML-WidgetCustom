; =========================================================
; Game Engine Function: sub_10627C
; Address            : 0x10627C - 0x106316
; =========================================================

10627C:  PUSH            {R4-R7,LR}
10627E:  ADD             R7, SP, #0xC
106280:  PUSH.W          {R8-R10}
106284:  MOV             R6, R0
106286:  LDR             R0, [R0,#8]
106288:  MOV             R4, R1
10628A:  LDRB            R1, [R0,#4]
10628C:  CMP             R1, #0xA
10628E:  BNE             loc_1062B6
106290:  BL              sub_10637C
106294:  CBZ             R0, loc_1062B4
106296:  LDR             R6, [R6,#8]
106298:  MOV             R0, R4
10629A:  LDR             R1, =(aId_0 - 0x1062A0); "id<" ...
10629C:  ADD             R1, PC; "id<"
10629E:  ADDS            R2, R1, #3
1062A0:  BL              sub_FFB40
1062A4:  LDR             R0, =(asc_4DB85 - 0x1062AE); ">" ...
1062A6:  LDRD.W          R5, R9, [R6,#0xC]
1062AA:  ADD             R0, PC; ">"
1062AC:  ADD.W           R8, R0, #1
1062B0:  MOV             R10, R0
1062B2:  B               loc_1062FA
1062B4:  LDR             R0, [R6,#8]
1062B6:  LDR             R1, [R0]
1062B8:  LDR             R2, [R1,#0x10]
1062BA:  MOV             R1, R4
1062BC:  BLX             R2
1062BE:  LDR             R0, [R6,#8]
1062C0:  MOV             R1, R4
1062C2:  BL              sub_10069E
1062C6:  CBZ             R0, loc_1062D4
1062C8:  LDR             R1, =(asc_4B4F4 - 0x1062D0); " " ...
1062CA:  MOV             R0, R4
1062CC:  ADD             R1, PC; " "
1062CE:  ADDS            R2, R1, #1
1062D0:  BL              sub_FFB40
1062D4:  LDR             R0, [R6,#8]
1062D6:  MOV             R1, R4
1062D8:  BL              sub_10069E
1062DC:  LDR             R1, =(byte_4CC4A - 0x1062E4)
1062DE:  LDR             R5, =(asc_4F675 - 0x1062E6); "(" ...
1062E0:  ADD             R1, PC; byte_4CC4A
1062E2:  ADD             R5, PC; "("
1062E4:  ADD.W           R8, R1, #1
1062E8:  ADD.W           R9, R5, #1
1062EC:  MOV             R10, R1
1062EE:  CBNZ            R0, loc_1062FA
1062F0:  LDR             R0, [R6,#8]
1062F2:  MOV             R1, R4
1062F4:  BL              sub_1006B2
1062F8:  CBZ             R0, loc_106304
1062FA:  MOV             R0, R4
1062FC:  MOV             R1, R5
1062FE:  MOV             R2, R9
106300:  BL              sub_FFB40
106304:  MOV             R0, R4
106306:  MOV             R1, R10
106308:  MOV             R2, R8
10630A:  POP.W           {R8-R10}
10630E:  POP.W           {R4-R7,LR}
106312:  B.W             sub_FFB40
