; =========================================================
; Game Engine Function: _ZN22CTaskSimpleStealthKill10ProcessPedEP4CPed
; Address            : 0x4E8768 - 0x4E8876
; =========================================================

4E8768:  PUSH            {R4,R5,R7,LR}
4E876A:  ADD             R7, SP, #8
4E876C:  MOV             R5, R0
4E876E:  MOV             R4, R1
4E8770:  LDRB            R0, [R5,#0x14]
4E8772:  CBZ             R0, loc_4E8778
4E8774:  MOVS            R0, #1
4E8776:  POP             {R4,R5,R7,PC}
4E8778:  LDR             R0, [R5,#0xC]
4E877A:  CMP             R0, #0
4E877C:  BEQ             loc_4E8774
4E877E:  LDR             R0, [R5,#0x18]
4E8780:  CBNZ            R0, loc_4E87A0
4E8782:  LDRB            R0, [R5,#8]
4E8784:  CBNZ            R0, loc_4E878E
4E8786:  MOV             R0, R4; CPed *
4E8788:  MOVS            R1, #0x38 ; '8'
4E878A:  BLX             j__ZN4CPed11SetPedStateE9ePedState; CPed::SetPedState(ePedState)
4E878E:  MOV             R0, R5; this
4E8790:  MOV             R1, R4; CPed *
4E8792:  BLX             j__ZN22CTaskSimpleStealthKill10ManageAnimEP4CPed; CTaskSimpleStealthKill::ManageAnim(CPed *)
4E8796:  LDR             R0, [R5,#0x18]
4E8798:  CBNZ            R0, loc_4E87A0
4E879A:  LDRB            R0, [R5,#0x15]
4E879C:  CMP             R0, #0
4E879E:  BNE             loc_4E8872
4E87A0:  LDR.W           R0, [R4,#0x534]
4E87A4:  LDR             R1, [R4,#0x14]
4E87A6:  ORR.W           R0, R0, #8
4E87AA:  STR.W           R0, [R4,#0x534]
4E87AE:  LDR             R2, [R5,#0xC]
4E87B0:  ADD.W           R0, R1, #0x30 ; '0'
4E87B4:  CMP             R1, #0
4E87B6:  LDR             R3, [R2,#0x14]
4E87B8:  IT EQ
4E87BA:  ADDEQ           R0, R4, #4
4E87BC:  VLDR            S2, [R0]
4E87C0:  ADD.W           R1, R3, #0x30 ; '0'
4E87C4:  CMP             R3, #0
4E87C6:  VLDR            S0, [R0,#4]
4E87CA:  IT EQ
4E87CC:  ADDEQ           R1, R2, #4
4E87CE:  VLDR            S4, [R1]
4E87D2:  VLDR            S6, [R1,#4]
4E87D6:  VSUB.F32        S2, S4, S2
4E87DA:  LDRB            R2, [R5,#8]
4E87DC:  VSUB.F32        S0, S6, S0
4E87E0:  CBZ             R2, loc_4E8846
4E87E2:  VLDR            S4, [R0,#8]
4E87E6:  VMUL.F32        S8, S2, S2
4E87EA:  VLDR            S6, [R1,#8]
4E87EE:  VSUB.F32        S4, S6, S4
4E87F2:  VMUL.F32        S6, S0, S0
4E87F6:  VMUL.F32        S4, S4, S4
4E87FA:  VADD.F32        S6, S8, S6
4E87FE:  VLDR            S8, =0.02
4E8802:  VADD.F32        S4, S6, S4
4E8806:  VMOV.F32        S6, #-1.0
4E880A:  VSQRT.F32       S4, S4
4E880E:  VADD.F32        S4, S4, S6
4E8812:  VABS.F32        S6, S4
4E8816:  VCMPE.F32       S6, S8
4E881A:  VMRS            APSR_nzcv, FPSCR
4E881E:  BLE             loc_4E885E
4E8820:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4E882A)
4E8822:  VLDR            S6, =0.05
4E8826:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4E8828:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4E882A:  VLDR            S8, [R0]
4E882E:  MOVS            R0, #0
4E8830:  STR.W           R0, [R4,#0x4E4]
4E8834:  ADD.W           R0, R4, #0x4E8
4E8838:  VMUL.F32        S6, S8, S6
4E883C:  VMIN.F32        D2, D2, D3
4E8840:  VSTR            S4, [R0]
4E8844:  B               loc_4E885E
4E8846:  LDR             R0, [R5,#0x18]
4E8848:  CMP             R0, #0
4E884A:  ITTT NE
4E884C:  LDRHNE          R0, [R0,#0x2C]
4E884E:  MOVWNE          R1, #0x15D
4E8852:  CMPNE           R0, R1
4E8854:  BNE             loc_4E8872
4E8856:  VNEG.F32        S0, S0
4E885A:  VNEG.F32        S2, S2
4E885E:  VMOV            R0, S2
4E8862:  VMOV            R1, S0; x
4E8866:  EOR.W           R0, R0, #0x80000000; y
4E886A:  BLX             atan2f
4E886E:  STR.W           R0, [R4,#0x560]
4E8872:  MOVS            R0, #0
4E8874:  POP             {R4,R5,R7,PC}
