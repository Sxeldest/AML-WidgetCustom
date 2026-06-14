; =========================================================
; Game Engine Function: _Z21emu_SetCameraPositionPf
; Address            : 0x1C0608 - 0x1C0670
; =========================================================

1C0608:  LDR             R1, =(emu_cameraPosition_ptr - 0x1C0612)
1C060A:  VLDR            S0, [R0]
1C060E:  ADD             R1, PC; emu_cameraPosition_ptr
1C0610:  LDR             R1, [R1]; emu_cameraPosition
1C0612:  VLDR            S2, [R1]
1C0616:  VCMP.F32        S0, S2
1C061A:  VMRS            APSR_nzcv, FPSCR
1C061E:  BNE             loc_1C0652
1C0620:  LDR             R1, =(emu_cameraPosition_ptr - 0x1C062A)
1C0622:  VLDR            S0, [R0,#4]
1C0626:  ADD             R1, PC; emu_cameraPosition_ptr
1C0628:  LDR             R1, [R1]; emu_cameraPosition
1C062A:  VLDR            S2, [R1,#4]
1C062E:  VCMP.F32        S0, S2
1C0632:  VMRS            APSR_nzcv, FPSCR
1C0636:  BNE             loc_1C0652
1C0638:  LDR             R1, =(emu_cameraPosition_ptr - 0x1C0642)
1C063A:  VLDR            S0, [R0,#8]
1C063E:  ADD             R1, PC; emu_cameraPosition_ptr
1C0640:  LDR             R1, [R1]; emu_cameraPosition
1C0642:  VLDR            S2, [R1,#8]
1C0646:  VCMP.F32        S0, S2
1C064A:  VMRS            APSR_nzcv, FPSCR
1C064E:  IT EQ
1C0650:  BXEQ            LR
1C0652:  LDR             R1, =(emu_cameraPosition_ptr - 0x1C065A)
1C0654:  LDR             R2, =(emu_cameraPositionDirty_ptr - 0x1C0660)
1C0656:  ADD             R1, PC; emu_cameraPosition_ptr
1C0658:  VLDR            D16, [R0]
1C065C:  ADD             R2, PC; emu_cameraPositionDirty_ptr
1C065E:  LDR             R0, [R0,#8]
1C0660:  LDR             R1, [R1]; emu_cameraPosition
1C0662:  LDR             R2, [R2]; emu_cameraPositionDirty
1C0664:  STR             R0, [R1,#(dword_6B4170 - 0x6B4168)]
1C0666:  MOVS            R0, #1
1C0668:  VSTR            D16, [R1]
1C066C:  STRB            R0, [R2]
1C066E:  BX              LR
