; =========================================================
; Game Engine Function: _Z20emu_DistanceFogSetupfffff
; Address            : 0x1C06B0 - 0x1C0762
; =========================================================

1C06B0:  LDR.W           R12, =(emu_fogdistances_ptr - 0x1C06C0)
1C06B4:  VMOV            S4, R0
1C06B8:  VMOV            S2, R1
1C06BC:  ADD             R12, PC; emu_fogdistances_ptr
1C06BE:  VMOV            S0, R2
1C06C2:  LDR.W           R12, [R12]; emu_fogdistances
1C06C6:  VLDR            S6, [R12]
1C06CA:  VCMP.F32        S6, S4
1C06CE:  VMRS            APSR_nzcv, FPSCR
1C06D2:  ITTT EQ
1C06D4:  VLDREQ          S6, [R12,#4]
1C06D8:  VCMPEQ.F32      S6, S2
1C06DC:  VMRSEQ          APSR_nzcv, FPSCR
1C06E0:  BEQ             loc_1C070A
1C06E2:  VMOV.F32        S6, #1.0
1C06E6:  LDR             R0, =(emu_fogdistances_ptr - 0x1C06F2)
1C06E8:  VSUB.F32        S8, S2, S4
1C06EC:  LDR             R1, =(emu_fogdirty_ptr - 0x1C06F6)
1C06EE:  ADD             R0, PC; emu_fogdistances_ptr
1C06F0:  MOVS            R2, #1
1C06F2:  ADD             R1, PC; emu_fogdirty_ptr
1C06F4:  LDR             R0, [R0]; emu_fogdistances
1C06F6:  LDR             R1, [R1]; emu_fogdirty
1C06F8:  VSTR            S4, [R0]
1C06FC:  VDIV.F32        S6, S6, S8
1C0700:  STRB            R2, [R1]
1C0702:  VSTR            S2, [R0,#4]
1C0706:  VSTR            S6, [R0,#8]
1C070A:  LDR             R0, =(emu_fogcolor_ptr - 0x1C0718)
1C070C:  VMOV            S4, R3
1C0710:  VLDR            S2, [SP,#arg_0]
1C0714:  ADD             R0, PC; emu_fogcolor_ptr
1C0716:  LDR             R0, [R0]; emu_fogcolor
1C0718:  VLDR            S6, [R0]
1C071C:  VCMP.F32        S6, S0
1C0720:  VMRS            APSR_nzcv, FPSCR
1C0724:  ITTT EQ
1C0726:  VLDREQ          S6, [R0,#4]
1C072A:  VCMPEQ.F32      S6, S4
1C072E:  VMRSEQ          APSR_nzcv, FPSCR
1C0732:  BNE             loc_1C0744
1C0734:  VLDR            S6, [R0,#8]
1C0738:  VCMP.F32        S6, S2
1C073C:  VMRS            APSR_nzcv, FPSCR
1C0740:  IT EQ
1C0742:  BXEQ            LR
1C0744:  LDR             R0, =(emu_fogcolor_ptr - 0x1C074C)
1C0746:  LDR             R1, =(emu_fogdirty_ptr - 0x1C074E)
1C0748:  ADD             R0, PC; emu_fogcolor_ptr
1C074A:  ADD             R1, PC; emu_fogdirty_ptr
1C074C:  LDR             R0, [R0]; emu_fogcolor
1C074E:  LDR             R1, [R1]; emu_fogdirty
1C0750:  VSTR            S0, [R0]
1C0754:  VSTR            S4, [R0,#4]
1C0758:  VSTR            S2, [R0,#8]
1C075C:  MOVS            R0, #1
1C075E:  STRB            R0, [R1]
1C0760:  BX              LR
