; =========================================================
; Game Engine Function: _ZN7CCameraC2Ev
; Address            : 0x3D6680 - 0x3D67A4
; =========================================================

3D6680:  PUSH            {R4,R6,R7,LR}
3D6682:  ADD             R7, SP, #8
3D6684:  MOV             R4, R0
3D6686:  BLX             j__ZN10CPlaceableC2Ev; CPlaceable::CPlaceable(void)
3D668A:  LDR             R0, =(_ZTV7CCamera_ptr - 0x3D6690)
3D668C:  ADD             R0, PC; _ZTV7CCamera_ptr
3D668E:  LDR             R0, [R0]; `vtable for'CCamera ...
3D6690:  ADDS            R0, #8
3D6692:  STR             R0, [R4]
3D6694:  ADD.W           R0, R4, #0x170; this
3D6698:  BLX             j__ZN4CCam4InitEv; CCam::Init(void)
3D669C:  ADD.W           R0, R4, #0x380; this
3D66A0:  BLX             j__ZN4CCam4InitEv; CCam::Init(void)
3D66A4:  ADD.W           R0, R4, #0x590; this
3D66A8:  BLX             j__ZN4CCam4InitEv; CCam::Init(void)
3D66AC:  ADR             R0, dword_3D67B0
3D66AE:  VMOV.I32        Q9, #0
3D66B2:  VLD1.64         {D16-D17}, [R0@128]
3D66B6:  ADR             R0, dword_3D67C0
3D66B8:  ADDW            R3, R4, #0xBDC
3D66BC:  MOV.W           R1, #0x3F800000
3D66C0:  VLD1.64         {D20-D21}, [R0@128]
3D66C4:  ADDW            R0, R4, #0x8E4
3D66C8:  MOV.W           R2, #0xFFFFFFFF
3D66CC:  VST1.32         {D18-D19}, [R0]
3D66D0:  MOVS            R0, #0
3D66D2:  STR.W           R0, [R4,#0x93C]
3D66D6:  STR.W           R0, [R4,#0x940]
3D66DA:  STR.W           R0, [R4,#0x984]
3D66DE:  STR.W           R0, [R4,#0x988]
3D66E2:  STR.W           R0, [R4,#0x9CC]
3D66E6:  STR.W           R0, [R4,#0x9D0]
3D66EA:  STR.W           R0, [R4,#0xA14]
3D66EE:  STR.W           R0, [R4,#0xA18]
3D66F2:  STR.W           R0, [R4,#0xA5C]
3D66F6:  STR.W           R0, [R4,#0xA60]
3D66FA:  STR.W           R0, [R4,#0xAA4]
3D66FE:  STR.W           R0, [R4,#0xAA8]
3D6702:  STR.W           R2, [R4,#0xC7C]
3D6706:  STR.W           R1, [R4,#0xC80]
3D670A:  STR.W           R1, [R4,#0xC84]
3D670E:  STR.W           R0, [R4,#0xC88]
3D6712:  STR.W           R2, [R4,#0xC8C]
3D6716:  STR.W           R1, [R4,#0xC90]
3D671A:  STR.W           R1, [R4,#0xC94]
3D671E:  STR.W           R0, [R4,#0xC98]
3D6722:  STR.W           R2, [R4,#0xC9C]
3D6726:  STR.W           R1, [R4,#0xCA0]
3D672A:  STR.W           R1, [R4,#0xCA4]
3D672E:  STR.W           R0, [R4,#0xCA8]
3D6732:  STR.W           R2, [R4,#0xCAC]
3D6736:  STR.W           R1, [R4,#0xCB0]
3D673A:  STR.W           R1, [R4,#0xCB4]
3D673E:  STR.W           R0, [R4,#0xCB8]
3D6742:  VST1.32         {D20-D21}, [R3]
3D6746:  ADDW            R3, R4, #0xC2C
3D674A:  VST1.32         {D16-D17}, [R3]
3D674E:  STR.W           R2, [R4,#0xCBC]
3D6752:  ADDW            R2, R4, #0x8FC
3D6756:  STR.W           R1, [R4,#0xCC0]
3D675A:  STR.W           R1, [R4,#0xCC4]
3D675E:  MOVS            R1, #1
3D6760:  STR.W           R0, [R4,#0xCC8]
3D6764:  STRB.W          R0, [R4,#0x51]
3D6768:  STR.W           R1, [R4,#0xC28]
3D676C:  STR             R2, [R4,#0x14]
3D676E:  MOVS            R2, #0xBF800000
3D6774:  STR.W           R2, [R4,#0xC1C]
3D6778:  STR.W           R2, [R4,#0xC20]
3D677C:  STRB.W          R1, [R4,#0xC04]
3D6780:  STRB.W          R1, [R4,#0xC3C]
3D6784:  STRB.W          R1, [R4,#0xC64]
3D6788:  STR.W           R2, [R4,#0xC44]
3D678C:  STR.W           R2, [R4,#0xC48]
3D6790:  STRB.W          R0, [R4,#0xC14]
3D6794:  STRB.W          R0, [R4,#0xC3D]
3D6798:  STR.W           R0, [R4,#0xC74]
3D679C:  STR.W           R0, [R4,#0x8F8]
3D67A0:  MOV             R0, R4
3D67A2:  POP             {R4,R6,R7,PC}
