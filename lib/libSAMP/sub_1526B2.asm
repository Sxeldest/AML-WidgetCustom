; =========================================================
; Game Engine Function: sub_1526B2
; Address            : 0x1526B2 - 0x15274E
; =========================================================

1526B2:  B.W             loc_1526B8
1526B6:  BMI             loc_152662
1526B8:  PUSH            {R4-R7,LR}
1526BA:  ADD             R7, SP, #0x14+var_8
1526BC:  PUSH.W          {R8}
1526C0:  SUB             SP, SP, #0x20 ; ' '
1526C2:  ADD.W           R4, R0, #0xC
1526C6:  SUB.W           R8, R7, #0x22 ; '"'
1526CA:  STRH.W          R1, [R7,#-0x22]
1526CE:  MOV             R0, R4
1526D0:  MOV             R1, R8
1526D2:  BL              sub_15426C
1526D6:  MOVS            R6, #0
1526D8:  CBNZ            R0, loc_152744
1526DA:  MOVS            R0, #0x48 ; 'H'; unsigned int
1526DC:  BLX             j__Znwj; operator new(uint)
1526E0:  VMOV.I32        Q8, #0
1526E4:  ADD.W           R2, R0, #0x24 ; '$'
1526E8:  LDR             R1, =(_ZTV18AudioChannelGlobal - 0x1526F8); `vtable for'AudioChannelGlobal ...
1526EA:  MOV.W           R5, #0x3F800000
1526EE:  LDR             R3, =(unk_B998D - 0x1526FC)
1526F0:  VST1.32         {D16-D17}, [R2]!
1526F4:  ADD             R1, PC; `vtable for'AudioChannelGlobal
1526F6:  ADDS            R1, #8
1526F8:  ADD             R3, PC; unk_B998D
1526FA:  STR             R6, [R0,#0x40]
1526FC:  VST1.32         {D16-D17}, [R2]
152700:  ADDS            R2, R0, #4
152702:  STRD.W          R1, R2, [R0]
152706:  ADD.W           R1, R0, #0xC
15270A:  VST1.32         {D16-D17}, [R1]!
15270E:  STR             R6, [R0,#0x44]
152710:  STR             R5, [R0,#0x20]
152712:  STR             R2, [R0,#8]
152714:  STR             R0, [SP,#0x38+var_30]
152716:  ADD             R0, SP, #0x38+var_30
152718:  STR             R6, [R1]
15271A:  STR.W           R8, [SP,#0x38+var_24]
15271E:  STR             R0, [SP,#0x38+var_28]
152720:  ADD             R0, SP, #0x38+var_28
152722:  ADD             R1, SP, #0x38+var_24
152724:  MOV             R2, R8
152726:  STRD.W          R1, R0, [SP,#0x38+var_38]
15272A:  ADD             R0, SP, #0x38+var_20
15272C:  MOV             R1, R4
15272E:  BL              sub_1537D6
152732:  LDR             R1, [SP,#0x38+var_20]
152734:  LDR             R0, [SP,#0x38+var_30]
152736:  LDR             R6, [R1,#0xC]
152738:  MOVS            R1, #0
15273A:  STR             R1, [SP,#0x38+var_30]
15273C:  CBZ             R0, loc_152744
15273E:  LDR             R1, [R0]
152740:  LDR             R1, [R1,#4]
152742:  BLX             R1
152744:  MOV             R0, R6
152746:  ADD             SP, SP, #0x20 ; ' '
152748:  POP.W           {R8}
15274C:  POP             {R4-R7,PC}
