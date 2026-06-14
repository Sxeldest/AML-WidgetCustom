; =========================================================
; Game Engine Function: sub_150588
; Address            : 0x150588 - 0x15062E
; =========================================================

150588:  PUSH            {R4-R7,LR}
15058A:  ADD             R7, SP, #0xC
15058C:  PUSH.W          {R8-R11}
150590:  SUB             SP, SP, #4
150592:  MOV             R10, R0
150594:  LDR             R0, [R0,#0xC]
150596:  CMP             R0, #0
150598:  BEQ             loc_150626
15059A:  LDR.W           R6, [R10,#8]
15059E:  ADD.W           R8, R10, #4
1505A2:  CMP             R6, R8
1505A4:  BEQ             loc_150626
1505A6:  LDR             R5, =(_ZTI12AudioChannel - 0x1505AE); `typeinfo for'AudioChannel ...
1505A8:  LDR             R0, =(_ZTI19AudioChannelVehicle - 0x1505B0); `typeinfo for'AudioChannelVehicle ...
1505AA:  ADD             R5, PC; `typeinfo for'AudioChannel
1505AC:  ADD             R0, PC; `typeinfo for'AudioChannelVehicle
1505AE:  MOV             R11, R0
1505B0:  LDR             R0, =(_ZTI19AudioChannelPoint3D - 0x1505B6); `typeinfo for'AudioChannelPoint3D ...
1505B2:  ADD             R0, PC; `typeinfo for'AudioChannelPoint3D
1505B4:  STR             R0, [SP,#0x20+lpdtype]
1505B6:  LDR             R0, =(off_234A54 - 0x1505BC)
1505B8:  ADD             R0, PC; off_234A54
1505BA:  LDR.W           R9, [R0]; dword_381A0C
1505BE:  LDR             R1, [R6,#8]
1505C0:  MOV             R0, R10
1505C2:  BL              sub_1504C0
1505C6:  CBZ             R0, loc_1505FA
1505C8:  LDR.W           R0, [R10]
1505CC:  MOV             R4, R5
1505CE:  LDR             R5, [R6,#8]
1505D0:  LDR             R1, [R0,#0x10]
1505D2:  MOV             R0, R10
1505D4:  BLX             R1
1505D6:  EOR.W           R1, R0, #1
1505DA:  MOV             R0, R5
1505DC:  MOV             R5, R4
1505DE:  BL              sub_151D18
1505E2:  MOV             R0, R10; lpsrc
1505E4:  MOV             R1, R4; lpstype
1505E6:  MOV             R2, R11; lpdtype
1505E8:  MOVS            R3, #0; s2d
1505EA:  BLX             j___dynamic_cast
1505EE:  CBZ             R0, loc_150606
1505F0:  LDR.W           R1, [R9]
1505F4:  LDR             R0, [R6,#8]
1505F6:  LDR             R1, [R1,#0x74]
1505F8:  B               loc_15061C
1505FA:  MOV             R0, R8; int
1505FC:  MOV             R1, R6; void *
1505FE:  BL              sub_150640
150602:  MOV             R6, R0
150604:  B               loc_150622
150606:  LDR             R2, [SP,#0x20+lpdtype]; lpdtype
150608:  MOV             R0, R10; lpsrc
15060A:  MOV             R1, R5; lpstype
15060C:  MOVS            R3, #0; s2d
15060E:  BLX             j___dynamic_cast
150612:  CBZ             R0, loc_150620
150614:  LDR.W           R1, [R9]
150618:  LDR             R0, [R6,#8]
15061A:  LDR             R1, [R1,#0x78]
15061C:  BL              sub_151D54
150620:  LDR             R6, [R6,#4]
150622:  CMP             R6, R8
150624:  BNE             loc_1505BE
150626:  ADD             SP, SP, #4
150628:  POP.W           {R8-R11}
15062C:  POP             {R4-R7,PC}
