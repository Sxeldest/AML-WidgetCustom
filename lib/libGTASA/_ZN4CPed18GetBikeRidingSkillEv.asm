; =========================================================
; Game Engine Function: _ZN4CPed18GetBikeRidingSkillEv
; Address            : 0x4A5684 - 0x4A56C8
; =========================================================

4A5684:  LDR.W           R1, [R0,#0x444]; unsigned __int16
4A5688:  CBZ             R1, loc_4A56AE
4A568A:  PUSH            {R7,LR}
4A568C:  MOV             R7, SP
4A568E:  MOVS            R0, #(dword_E4+1); this
4A5690:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
4A5694:  VLDR            S0, =1000.0
4A5698:  VMOV            S2, R0
4A569C:  VDIV.F32        S0, S2, S0
4A56A0:  VMOV.F32        S2, #1.0
4A56A4:  VMIN.F32        D0, D0, D1
4A56A8:  VMOV            R0, S0
4A56AC:  POP             {R7,PC}
4A56AE:  VMOV.F32        S2, #1.0
4A56B2:  LDRB.W          R0, [R0,#0x448]
4A56B6:  VLDR            S0, =0.0
4A56BA:  CMP             R0, #2
4A56BC:  IT EQ
4A56BE:  VMOVEQ.F32      S0, S2
4A56C2:  VMOV            R0, S0
4A56C6:  BX              LR
