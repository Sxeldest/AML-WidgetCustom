; =========================================================
; Game Engine Function: sub_1805DC
; Address            : 0x1805DC - 0x180642
; =========================================================

1805DC:  PUSH            {R4-R7,LR}
1805DE:  ADD             R7, SP, #0xC
1805E0:  PUSH.W          {R11}
1805E4:  LDR.W           R1, [R0,#0x38C]
1805E8:  ADD.W           R5, R0, #0x38C
1805EC:  LDR.W           R2, [R0,#0x398]
1805F0:  CMP             R1, R2
1805F2:  BEQ             loc_180634
1805F4:  MOV             R4, R0
1805F6:  MOVS            R6, #0
1805F8:  LDRB.W          R0, [R1,#0x11C]
1805FC:  CBZ             R0, loc_180634
1805FE:  LDR             R0, [R1,#0x10]; void *
180600:  LDR.W           R1, [R1,#0x120]
180604:  STR             R1, [R5]
180606:  CBZ             R0, loc_180614
180608:  BLX             j__ZdaPv; operator delete[](void *)
18060C:  LDR.W           R1, [R4,#0x38C]
180610:  LDR.W           R2, [R4,#0x398]
180614:  LDR.W           R0, [R4,#0x394]
180618:  CMP             R1, R2
18061A:  LDR.W           R3, [R4,#0x39C]
18061E:  STRB.W          R6, [R0,#0x11C]
180622:  ADD.W           R3, R3, #1
180626:  LDR.W           R0, [R0,#0x120]
18062A:  STR.W           R3, [R4,#0x39C]
18062E:  STR.W           R0, [R4,#0x394]
180632:  BNE             loc_1805F8
180634:  MOV             R0, R5
180636:  POP.W           {R11}
18063A:  POP.W           {R4-R7,LR}
18063E:  B.W             sub_182FAE
