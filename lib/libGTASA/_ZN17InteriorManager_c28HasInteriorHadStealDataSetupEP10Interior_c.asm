; =========================================================
; Game Engine Function: _ZN17InteriorManager_c28HasInteriorHadStealDataSetupEP10Interior_c
; Address            : 0x44C806 - 0x44C83A
; =========================================================

44C806:  MOVW            R2, #0x42A4
44C80A:  LDR.W           R12, [R0,R2]
44C80E:  CMP.W           R12, #1
44C812:  ITT LT
44C814:  MOVLT           R0, #0
44C816:  BXLT            LR
44C818:  LDR             R1, [R1,#8]
44C81A:  MOVW            R3, #0x42A8
44C81E:  ADD             R0, R3
44C820:  MOVS            R3, #0
44C822:  LDR.W           R2, [R0,R3,LSL#2]
44C826:  CMP             R2, R1
44C828:  ITT EQ
44C82A:  MOVEQ           R0, #1
44C82C:  BXEQ            LR
44C82E:  ADDS            R3, #1
44C830:  CMP             R3, R12
44C832:  ITT GE
44C834:  MOVGE           R0, #0
44C836:  BXGE            LR
44C838:  B               loc_44C822
