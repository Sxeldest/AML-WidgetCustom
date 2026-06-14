; =========================================================
; Game Engine Function: _ZN8CPickups19RemovePickUpsInAreaEffffff
; Address            : 0x321970 - 0x321AB4
; =========================================================

321970:  PUSH            {R4-R7,LR}
321972:  ADD             R7, SP, #0xC
321974:  PUSH.W          {R8-R11}
321978:  SUB             SP, SP, #4
32197A:  VPUSH           {D8-D14}
32197E:  SUB             SP, SP, #0x10
321980:  VMOV            S26, R0
321984:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x321992)
321986:  VMOV            S24, R1
32198A:  VLDR            S16, [R7,#arg_4]
32198E:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
321990:  VMOV.F32        S28, #0.125
321994:  VLDR            S18, [R7,#arg_0]
321998:  VMOV            S20, R3
32199C:  LDR             R5, [R0]; CPickups::aPickUps ...
32199E:  VMOV            S22, R2
3219A2:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x3219B0)
3219A4:  MOV.W           R8, #0
3219A8:  MOV.W           R10, #0
3219AC:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
3219AE:  LDR             R6, [R0]; CPickups::aPickUps ...
3219B0:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x3219B6)
3219B2:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
3219B4:  LDR             R4, [R0]; CPickups::aPickUps ...
3219B6:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x3219BC)
3219B8:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
3219BA:  LDR             R1, [R0]; CPickups::aPickUps ...
3219BC:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x3219C4)
3219BE:  STR             R1, [SP,#0x68+var_5C]
3219C0:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
3219C2:  LDR             R0, [R0]; CPickups::aPickUps ...
3219C4:  STR             R0, [SP,#0x68+var_60]
3219C6:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x3219CC)
3219C8:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
3219CA:  LDR             R0, [R0]; CPickups::aPickUps ...
3219CC:  STR             R0, [SP,#0x68+var_64]
3219CE:  ADD.W           R11, R5, R8
3219D2:  LDRB.W          R0, [R11,#0x1C]
3219D6:  CMP             R0, #0
3219D8:  BEQ             loc_321A98
3219DA:  ADD.W           R0, R6, R8
3219DE:  LDRSH.W         R0, [R0,#0x10]
3219E2:  VMOV            S0, R0
3219E6:  VCVT.F32.S32    S0, S0
3219EA:  VMUL.F32        S0, S0, S28
3219EE:  VCMPE.F32       S0, S26
3219F2:  VMRS            APSR_nzcv, FPSCR
3219F6:  BLT             loc_321A98
3219F8:  VCMPE.F32       S0, S24
3219FC:  VMRS            APSR_nzcv, FPSCR
321A00:  BGT             loc_321A98
321A02:  ADD.W           R0, R4, R8
321A06:  LDRSH.W         R0, [R0,#0x12]
321A0A:  VMOV            S0, R0
321A0E:  VCVT.F32.S32    S0, S0
321A12:  VMUL.F32        S0, S0, S28
321A16:  VCMPE.F32       S0, S22
321A1A:  VMRS            APSR_nzcv, FPSCR
321A1E:  BLT             loc_321A98
321A20:  VCMPE.F32       S0, S20
321A24:  VMRS            APSR_nzcv, FPSCR
321A28:  BGT             loc_321A98
321A2A:  ADD.W           R0, R1, R8
321A2E:  LDRSH.W         R0, [R0,#0x14]
321A32:  VMOV            S0, R0
321A36:  VCVT.F32.S32    S0, S0
321A3A:  VMUL.F32        S0, S0, S28
321A3E:  VCMPE.F32       S0, S18
321A42:  VMRS            APSR_nzcv, FPSCR
321A46:  BLT             loc_321A98
321A48:  VCMPE.F32       S0, S16
321A4C:  VMRS            APSR_nzcv, FPSCR
321A50:  BGT             loc_321A98
321A52:  LDR             R0, [SP,#0x68+var_60]
321A54:  ADD.W           R9, R0, R8
321A58:  LDRH.W          R0, [R9,#0x1A]
321A5C:  ORR.W           R1, R10, R0,LSL#16
321A60:  MOVS            R0, #7
321A62:  BLX             j__ZN6CRadar18ClearBlipForEntityE9eBlipTypei; CRadar::ClearBlipForEntity(eBlipType,int)
321A66:  LDR.W           R0, [R9,#4]; this
321A6A:  CBZ             R0, loc_321A84
321A6C:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
321A70:  LDR.W           R0, [R9,#4]
321A74:  CMP             R0, #0
321A76:  ITTT NE
321A78:  LDRNE           R1, [R0]
321A7A:  LDRNE           R1, [R1,#4]
321A7C:  BLXNE           R1
321A7E:  MOVS            R0, #0
321A80:  STR.W           R0, [R9,#4]
321A84:  MOVS            R0, #0
321A86:  STRB.W          R0, [R11,#0x1C]
321A8A:  LDR             R0, [SP,#0x68+var_64]
321A8C:  ADD             R0, R8
321A8E:  LDRB            R1, [R0,#0x1D]
321A90:  ORR.W           R1, R1, #1
321A94:  STRB            R1, [R0,#0x1D]
321A96:  LDR             R1, [SP,#0x68+var_5C]
321A98:  ADD.W           R8, R8, #0x20 ; ' '
321A9C:  ADD.W           R10, R10, #1
321AA0:  CMP.W           R8, #0x4D80
321AA4:  BNE             loc_3219CE
321AA6:  ADD             SP, SP, #0x10
321AA8:  VPOP            {D8-D14}
321AAC:  ADD             SP, SP, #4
321AAE:  POP.W           {R8-R11}
321AB2:  POP             {R4-R7,PC}
