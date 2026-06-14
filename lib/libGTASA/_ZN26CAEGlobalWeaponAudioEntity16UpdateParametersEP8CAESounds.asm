; =========================================================
; Game Engine Function: _ZN26CAEGlobalWeaponAudioEntity16UpdateParametersEP8CAESounds
; Address            : 0x397650 - 0x397698
; =========================================================

397650:  ADDS            R0, R2, #1
397652:  IT NE
397654:  BXNE            LR
397656:  LDR             R0, =(pFogHorn_ptr - 0x39765C)
397658:  ADD             R0, PC; pFogHorn_ptr
39765A:  LDR             R0, [R0]; pFogHorn
39765C:  LDR             R0, [R0]
39765E:  CMP             R0, R1
397660:  BEQ             loc_39768C
397662:  LDR             R0, =(pWaterfall_ptr - 0x397668)
397664:  ADD             R0, PC; pWaterfall_ptr
397666:  LDR             R0, [R0]; pWaterfall
397668:  LDR             R2, [R0]
39766A:  CMP             R2, R1
39766C:  BEQ             loc_397692
39766E:  LDR             R0, =(pWaterfall_ptr - 0x397674)
397670:  ADD             R0, PC; pWaterfall_ptr
397672:  LDR             R0, [R0]; pWaterfall
397674:  LDR.W           R2, [R0,#(dword_944588 - 0x944584)]!
397678:  CMP             R2, R1
39767A:  BEQ             loc_397692
39767C:  LDR             R0, =(pWaterfall_ptr - 0x397682)
39767E:  ADD             R0, PC; pWaterfall_ptr
397680:  LDR             R0, [R0]; pWaterfall
397682:  LDR.W           R2, [R0,#(dword_94458C - 0x944584)]!
397686:  CMP             R2, R1
397688:  BEQ             loc_397692
39768A:  BX              LR
39768C:  LDR             R0, =(pFogHorn_ptr - 0x397692)
39768E:  ADD             R0, PC; pFogHorn_ptr
397690:  LDR             R0, [R0]; pFogHorn
397692:  MOVS            R1, #0
397694:  STR             R1, [R0]
397696:  BX              LR
