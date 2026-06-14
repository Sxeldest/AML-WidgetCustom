; =========================================================
; Game Engine Function: _ZNK14TextureListing11GetMipCountEv
; Address            : 0x1E7692 - 0x1E76D8
; =========================================================

1E7692:  LDRSH.W         R1, [R0,#6]
1E7696:  CMP.W           R1, #0xFFFFFFFF
1E769A:  ITT GT
1E769C:  MOVGT           R0, #1
1E769E:  BXGT            LR
1E76A0:  LDRH            R2, [R0,#4]
1E76A2:  BFC.W           R1, #0xF, #0x11
1E76A6:  MOVS            R0, #1
1E76A8:  ADDS            R3, R1, R2
1E76AA:  CMP             R3, #3
1E76AC:  IT CC
1E76AE:  BXCC            LR
1E76B0:  LSRS            R3, R2, #1
1E76B2:  CMP             R3, #1
1E76B4:  MOV.W           R3, #1
1E76B8:  ADD.W           R0, R0, #1
1E76BC:  IT HI
1E76BE:  LSRHI           R3, R2, #1
1E76C0:  LSRS            R2, R1, #1
1E76C2:  CMP             R2, #1
1E76C4:  MOV.W           R2, #1
1E76C8:  IT HI
1E76CA:  LSRHI           R2, R1, #1
1E76CC:  ADDS            R1, R2, R3
1E76CE:  CMP             R1, #2
1E76D0:  MOV             R1, R2
1E76D2:  MOV             R2, R3
1E76D4:  BHI             loc_1E76B0
1E76D6:  BX              LR
