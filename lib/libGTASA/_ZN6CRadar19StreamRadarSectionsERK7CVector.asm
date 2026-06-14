; =========================================================
; Game Engine Function: _ZN6CRadar19StreamRadarSectionsERK7CVector
; Address            : 0x4444D8 - 0x44454C
; =========================================================

4444D8:  LDR             R1, =(_ZN10CStreaming19ms_disableStreamingE_ptr - 0x4444DE)
4444DA:  ADD             R1, PC; _ZN10CStreaming19ms_disableStreamingE_ptr
4444DC:  LDR             R1, [R1]; CStreaming::ms_disableStreaming ...
4444DE:  LDRB            R1, [R1]; CStreaming::ms_disableStreaming
4444E0:  CMP             R1, #0
4444E2:  IT NE
4444E4:  BXNE            LR
4444E6:  PUSH            {R4,R6,R7,LR}
4444E8:  ADD             R7, SP, #0x10+var_8
4444EA:  VPUSH           {D8-D10}
4444EE:  VLDR            S16, =3000.0
4444F2:  VMOV.F32        S2, #11.0
4444F6:  VLDR            S0, [R0,#4]
4444FA:  VLDR            S20, =500.0
4444FE:  VADD.F32        S0, S0, S16
444502:  VLDR            S18, [R0]
444506:  VDIV.F32        S0, S0, S20
44450A:  VSUB.F32        S0, S2, S0
44450E:  VMOV            R0, S0; x
444512:  BLX             ceilf
444516:  VADD.F32        S0, S18, S16
44451A:  MOV             R4, R0
44451C:  VDIV.F32        S0, S0, S20
444520:  VMOV            R0, S0; x
444524:  BLX             floorf
444528:  VMOV            S0, R0
44452C:  VMOV            S2, R4
444530:  VCVT.S32.F32    S0, S0
444534:  VCVT.S32.F32    S2, S2
444538:  VMOV            R0, S0; this
44453C:  VMOV            R1, S2; int
444540:  VPOP            {D8-D10}
444544:  POP.W           {R4,R6,R7,LR}
444548:  B.W             _ZN6CRadar19StreamRadarSectionsEii; CRadar::StreamRadarSections(int,int)
