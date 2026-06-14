; =========================================================
; Game Engine Function: _ZN4CPad14ProcessStoppieEv
; Address            : 0x3F97F8 - 0x3F98B8
; =========================================================

3F97F8:  PUSH            {R4-R7,LR}
3F97FA:  ADD             R7, SP, #0xC
3F97FC:  PUSH.W          {R11}
3F9800:  MOV             R4, R0
3F9802:  MOVS            R0, #3
3F9804:  MOVS            R1, #0
3F9806:  MOVS            R2, #1
3F9808:  MOVS            R5, #0
3F980A:  MOVS            R6, #1
3F980C:  BLX             j__ZN15CTouchInterface14IsDoubleTappedENS_9WidgetIDsEbi; CTouchInterface::IsDoubleTapped(CTouchInterface::WidgetIDs,bool,int)
3F9810:  CMP             R0, #1
3F9812:  BNE             loc_3F9820
3F9814:  LDR             R0, =(dword_959E0C - 0x3F981E)
3F9816:  STRB.W          R6, [R4,#0x11A]
3F981A:  ADD             R0, PC; dword_959E0C
3F981C:  STR             R5, [R0]
3F981E:  B               loc_3F9826
3F9820:  LDRB.W          R0, [R4,#0x11A]
3F9824:  CBZ             R0, loc_3F9896
3F9826:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3F9834)
3F9828:  MOVS            R1, #0
3F982A:  VLDR            S0, =50.0
3F982E:  MOVS            R2, #1
3F9830:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3F9832:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3F9834:  VLDR            S2, [R0]
3F9838:  LDR             R0, =(dword_959E0C - 0x3F9842)
3F983A:  VDIV.F32        S0, S2, S0
3F983E:  ADD             R0, PC; dword_959E0C
3F9840:  VLDR            S2, =1000.0
3F9844:  VMUL.F32        S0, S0, S2
3F9848:  VCVT.U32.F32    S0, S0
3F984C:  VCVT.F32.U32    S0, S0
3F9850:  VDIV.F32        S0, S0, S2
3F9854:  VLDR            S2, [R0]
3F9858:  VADD.F32        S0, S2, S0
3F985C:  VSTR            S0, [R0]
3F9860:  MOVS            R0, #3
3F9862:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3F9866:  CMP             R0, #1
3F9868:  BNE             loc_3F9896
3F986A:  MOV.W           R0, #0xFFFFFFFF; int
3F986E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3F9872:  VMOV.F32        S0, #-0.5
3F9876:  LDR             R0, [R0,#0x14]
3F9878:  VLDR            S2, [R0,#0x18]
3F987C:  VCMPE.F32       S2, S0
3F9880:  VMRS            APSR_nzcv, FPSCR
3F9884:  BLE             loc_3F98B2
3F9886:  MOVS            R0, #0xC37F0000
3F988C:  STR.W           R0, [R4,#0x128]
3F9890:  POP.W           {R11}
3F9894:  POP             {R4-R7,PC}
3F9896:  LDR             R0, =(dword_959E0C - 0x3F98A0)
3F9898:  VLDR            S0, =0.2
3F989C:  ADD             R0, PC; dword_959E0C
3F989E:  VLDR            S2, [R0]
3F98A2:  VCMPE.F32       S2, S0
3F98A6:  VMRS            APSR_nzcv, FPSCR
3F98AA:  ITT GT
3F98AC:  MOVGT           R0, #0
3F98AE:  STRBGT.W        R0, [R4,#0x11A]
3F98B2:  POP.W           {R11}
3F98B6:  POP             {R4-R7,PC}
