; =========================================================
; Game Engine Function: _ZN24CTaskComplexUseAttractor17CreateNextSubTaskEP4CPed
; Address            : 0x4EDF84 - 0x4EDFF4
; =========================================================

4EDF84:  PUSH            {R4,R5,R7,LR}
4EDF86:  ADD             R7, SP, #8
4EDF88:  MOV             R5, R0
4EDF8A:  MOV             R4, R1
4EDF8C:  LDR             R0, [R5,#0xC]
4EDF8E:  LDR             R1, [R0]
4EDF90:  LDR             R1, [R1]
4EDF92:  BLX             R1
4EDF94:  CMP             R0, #3
4EDF96:  BEQ             loc_4EDFD0
4EDF98:  CBNZ            R0, loc_4EDFE4
4EDF9A:  BLX             rand
4EDF9E:  UXTH            R0, R0
4EDFA0:  VLDR            S2, =0.000015259
4EDFA4:  VMOV            S0, R0
4EDFA8:  VCVT.F32.S32    S0, S0
4EDFAC:  VMUL.F32        S0, S0, S2
4EDFB0:  VLDR            S2, =50.0
4EDFB4:  VMUL.F32        S0, S0, S2
4EDFB8:  VCVT.S32.F32    S0, S0
4EDFBC:  LDRH.W          R0, [R4,#0x75E]
4EDFC0:  VMOV            R1, S0
4EDFC4:  ADD.W           R1, R1, R1,LSL#2
4EDFC8:  ADD.W           R0, R0, R1,LSL#2
4EDFCC:  ADDS            R0, #0x14
4EDFCE:  B               loc_4EDFE0
4EDFD0:  LDRH.W          R0, [R4,#0x75E]
4EDFD4:  CMP             R0, #0xB
4EDFD6:  ITTE CS
4EDFD8:  MOVWCS          R1, #0xFFF6
4EDFDC:  ADDCS           R0, R1
4EDFDE:  MOVCC           R0, #0
4EDFE0:  STRH.W          R0, [R4,#0x75E]
4EDFE4:  BLX             j__Z22GetPedAttractorManagerv; GetPedAttractorManager(void)
4EDFE8:  LDR             R2, [R5,#0xC]; CPedAttractor *
4EDFEA:  MOV             R1, R4; CPed *
4EDFEC:  BLX             j__ZN20CPedAttractorManager18BroadcastDepartureEP4CPedP13CPedAttractor; CPedAttractorManager::BroadcastDeparture(CPed *,CPedAttractor *)
4EDFF0:  MOVS            R0, #0
4EDFF2:  POP             {R4,R5,R7,PC}
