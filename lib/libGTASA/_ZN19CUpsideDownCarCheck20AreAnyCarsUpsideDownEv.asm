; =========================================================
; Game Engine Function: _ZN19CUpsideDownCarCheck20AreAnyCarsUpsideDownEv
; Address            : 0x3284E8 - 0x328546
; =========================================================

3284E8:  LDR             R1, [R0]
3284EA:  CMP             R1, #0
3284EC:  BLT             loc_3284F6
3284EE:  LDR             R1, [R0,#4]
3284F0:  CMP.W           R1, #0x7D0
3284F4:  BHI             loc_32853E
3284F6:  LDR             R1, [R0,#8]
3284F8:  CMP.W           R1, #0xFFFFFFFF
3284FC:  BLE             loc_328506
3284FE:  LDR             R1, [R0,#0xC]
328500:  CMP.W           R1, #0x7D0
328504:  BHI             loc_32853E
328506:  LDR             R1, [R0,#0x10]
328508:  CMP             R1, #0
32850A:  BLT             loc_328514
32850C:  LDR             R1, [R0,#0x14]
32850E:  CMP.W           R1, #0x7D0
328512:  BHI             loc_32853E
328514:  LDR             R1, [R0,#0x18]
328516:  CMP             R1, #0
328518:  BLT             loc_328522
32851A:  LDR             R1, [R0,#0x1C]
32851C:  CMP.W           R1, #0x7D0
328520:  BHI             loc_32853E
328522:  LDR             R1, [R0,#0x20]
328524:  CMP             R1, #0
328526:  BLT             loc_328530
328528:  LDR             R1, [R0,#0x24]
32852A:  CMP.W           R1, #0x7D0
32852E:  BHI             loc_32853E
328530:  LDR             R1, [R0,#0x28]
328532:  CMP             R1, #0
328534:  BLT             loc_328542
328536:  LDR             R0, [R0,#0x2C]
328538:  CMP.W           R0, #0x7D0
32853C:  BLS             loc_328542
32853E:  MOVS            R0, #1
328540:  BX              LR
328542:  MOVS            R0, #0
328544:  BX              LR
