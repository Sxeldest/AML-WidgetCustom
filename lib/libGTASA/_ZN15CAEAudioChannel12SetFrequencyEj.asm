; =========================================================
; Game Engine Function: _ZN15CAEAudioChannel12SetFrequencyEj
; Address            : 0x391C7C - 0x391CCA
; =========================================================

391C7C:  PUSH            {R4-R7,LR}
391C7E:  ADD             R7, SP, #0xC
391C80:  PUSH.W          {R11}
391C84:  MOV             R4, R1
391C86:  LDR             R1, [R0,#0x20]
391C88:  CMP             R1, R4
391C8A:  BEQ             loc_391CC4
391C8C:  LDR             R5, [R0,#4]
391C8E:  STR             R4, [R0,#0x20]
391C90:  CBZ             R5, loc_391CC4
391C92:  LDR             R6, [R0,#0x24]
391C94:  MOV             R0, R5; this
391C96:  BLX             j__ZN9OALSource12ObtainSourceEv; OALSource::ObtainSource(void)
391C9A:  VMOV            S0, R4
391C9E:  MOVW            R1, #0x1003
391CA2:  VMOV            S2, R6
391CA6:  VCVT.F32.U32    S0, S0
391CAA:  VCVT.F32.U32    S2, S2
391CAE:  LDR             R0, [R5,#8]
391CB0:  VDIV.F32        S0, S0, S2
391CB4:  VMOV            R2, S0
391CB8:  POP.W           {R11}
391CBC:  POP.W           {R4-R7,LR}
391CC0:  B.W             sub_198FC8
391CC4:  POP.W           {R11}
391CC8:  POP             {R4-R7,PC}
