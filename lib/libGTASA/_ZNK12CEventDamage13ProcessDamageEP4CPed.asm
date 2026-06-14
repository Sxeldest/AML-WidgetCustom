; =========================================================
; Game Engine Function: _ZNK12CEventDamage13ProcessDamageEP4CPed
; Address            : 0x372CA0 - 0x372D50
; =========================================================

372CA0:  PUSH            {R4,R5,R7,LR}
372CA2:  ADD             R7, SP, #8
372CA4:  MOV             R5, R0
372CA6:  MOV             R4, R1
372CA8:  LDR             R0, [R5,#0x18]
372CAA:  CMP             R0, #0x33 ; '3'; switch 52 cases
372CAC:  BHI             def_372CAE; jumptable 00372CAE default case, cases 17-23,28,29,32,37,39-45,47-50
372CAE:  TBB.W           [PC,R0]; switch jump
372CB2:  DCB 0x1A; jump table for switch statement
372CB3:  DCB 0x1A
372CB4:  DCB 0x1A
372CB5:  DCB 0x1A
372CB6:  DCB 0x1A
372CB7:  DCB 0x1A
372CB8:  DCB 0x1A
372CB9:  DCB 0x1A
372CBA:  DCB 0x1A
372CBB:  DCB 0x1A
372CBC:  DCB 0x1A
372CBD:  DCB 0x1A
372CBE:  DCB 0x1A
372CBF:  DCB 0x1A
372CC0:  DCB 0x1A
372CC1:  DCB 0x1A
372CC2:  DCB 0x2B
372CC3:  DCB 0x2A
372CC4:  DCB 0x2A
372CC5:  DCB 0x2A
372CC6:  DCB 0x2A
372CC7:  DCB 0x2A
372CC8:  DCB 0x2A
372CC9:  DCB 0x2A
372CCA:  DCB 0x1F
372CCB:  DCB 0x1F
372CCC:  DCB 0x1F
372CCD:  DCB 0x1F
372CCE:  DCB 0x2A
372CCF:  DCB 0x2A
372CD0:  DCB 0x1F
372CD1:  DCB 0x1F
372CD2:  DCB 0x2A
372CD3:  DCB 0x1F
372CD4:  DCB 0x1F
372CD5:  DCB 0x2B
372CD6:  DCB 0x2B
372CD7:  DCB 0x2A
372CD8:  DCB 0x1F
372CD9:  DCB 0x2A
372CDA:  DCB 0x2A
372CDB:  DCB 0x2A
372CDC:  DCB 0x2A
372CDD:  DCB 0x2A
372CDE:  DCB 0x2A
372CDF:  DCB 0x2A
372CE0:  DCB 0x1A
372CE1:  DCB 0x2A
372CE2:  DCB 0x2A
372CE3:  DCB 0x2A
372CE4:  DCB 0x2A
372CE5:  DCB 0x2B
372CE6:  LDRB.W          R0, [R5,#0x3D]; jumptable 00372CAE cases 0-15,46
372CEA:  CBZ             R0, def_372CAE; jumptable 00372CAE default case, cases 17-23,28,29,32,37,39-45,47-50
372CEC:  MOVS            R1, #2
372CEE:  B               loc_372D42
372CF0:  LDRB.W          R0, [R5,#0x3D]; jumptable 00372CAE cases 24-27,30,31,33,34,38
372CF4:  CBZ             R0, def_372CAE; jumptable 00372CAE default case, cases 17-23,28,29,32,37,39-45,47-50
372CF6:  LDR             R0, [R5,#0x1C]
372CF8:  SUBS            R0, #5
372CFA:  CMP             R0, #5
372CFC:  BCS             def_372CAE; jumptable 00372CAE default case, cases 17-23,28,29,32,37,39-45,47-50
372CFE:  ADR             R1, dword_372D50
372D00:  ADD.W           R0, R1, R0,LSL#2
372D04:  B               loc_372D40
372D06:  POP             {R4,R5,R7,PC}; jumptable 00372CAE default case, cases 17-23,28,29,32,37,39-45,47-50
372D08:  LDRB.W          R0, [R5,#0x3D]; jumptable 00372CAE cases 16,35,36,51
372D0C:  CMP             R0, #0
372D0E:  IT EQ
372D10:  POPEQ           {R4,R5,R7,PC}
372D12:  BLX             rand
372D16:  UXTH            R0, R0
372D18:  VLDR            S2, =0.000015259
372D1C:  VMOV            S0, R0
372D20:  LDR             R0, =(unk_610260 - 0x372D2E)
372D22:  VMOV.F32        S4, #5.0
372D26:  VCVT.F32.S32    S0, S0
372D2A:  ADD             R0, PC; unk_610260
372D2C:  VMUL.F32        S0, S0, S2
372D30:  VMUL.F32        S0, S0, S4
372D34:  VCVT.S32.F32    S0, S0
372D38:  VMOV            R1, S0
372D3C:  ADD.W           R0, R0, R1,LSL#2
372D40:  LDR             R1, [R0]; int
372D42:  LDRSB.W         R2, [R5,#0x20]; signed __int8
372D46:  MOV             R0, R4; this
372D48:  POP.W           {R4,R5,R7,LR}
372D4C:  B.W             j_j__ZN4CPed14RemoveBodyPartEia; j_CPed::RemoveBodyPart(int,signed char)
