; =========================================================
; Game Engine Function: _ZN8CPickups24RemoveUnnecessaryPickupsERK7CVectorf
; Address            : 0x320C50 - 0x320D6E
; =========================================================

320C50:  PUSH            {R4-R7,LR}
320C52:  ADD             R7, SP, #0xC
320C54:  PUSH.W          {R8-R11}
320C58:  SUB             SP, SP, #4
320C5A:  VPUSH           {D8-D10}
320C5E:  SUB             SP, SP, #0x10
320C60:  VMOV            S16, R1
320C64:  LDR             R1, =(_ZN8CPickups8aPickUpsE_ptr - 0x320C70)
320C66:  VMOV.F32        S18, #0.125
320C6A:  ADDS            R2, R0, #4
320C6C:  ADD             R1, PC; _ZN8CPickups8aPickUpsE_ptr
320C6E:  VMOV.I32        D10, #0x3E000000
320C72:  ADD             R4, SP, #0x48+var_3C
320C74:  MOV.W           R10, #0
320C78:  LDR             R6, [R1]; CPickups::aPickUps ...
320C7A:  MOV.W           R11, #0
320C7E:  LDR             R1, =(_ZN8CPickups8aPickUpsE_ptr - 0x320C86)
320C80:  STR             R6, [SP,#0x48+var_40]
320C82:  ADD             R1, PC; _ZN8CPickups8aPickUpsE_ptr
320C84:  LDR             R5, [R1]; CPickups::aPickUps ...
320C86:  LDR             R1, =(_ZN8CPickups8aPickUpsE_ptr - 0x320C8C)
320C88:  ADD             R1, PC; _ZN8CPickups8aPickUpsE_ptr
320C8A:  LDR             R1, [R1]; CPickups::aPickUps ...
320C8C:  STR             R1, [SP,#0x48+var_44]
320C8E:  LDR             R1, =(_ZN8CPickups8aPickUpsE_ptr - 0x320C94)
320C90:  ADD             R1, PC; _ZN8CPickups8aPickUpsE_ptr
320C92:  LDR             R1, [R1]; CPickups::aPickUps ...
320C94:  STR             R1, [SP,#0x48+var_48]
320C96:  ADD.W           R8, R6, R10
320C9A:  LDRB.W          R1, [R8,#0x1C]
320C9E:  CMP             R1, #8
320CA0:  IT NE
320CA2:  CMPNE           R1, #4
320CA4:  BNE             loc_320D52
320CA6:  ADD.W           R3, R5, R10
320CAA:  LDRSH.W         R1, [R3,#0x10]
320CAE:  VMOV            S0, R1
320CB2:  VCVT.F32.S32    S0, S0
320CB6:  LDR.W           R1, [R3,#0x12]
320CBA:  STR             R1, [SP,#0x48+var_3C]
320CBC:  VLD1.32         {D16[0]}, [R4@32]
320CC0:  VLDR            S2, [R0]
320CC4:  VMOVL.S16       Q8, D16
320CC8:  VMUL.F32        S0, S0, S18
320CCC:  VCVT.F32.S32    D16, D16
320CD0:  VLDR            D17, [R2]
320CD4:  VMUL.F32        D16, D16, D10
320CD8:  VSUB.F32        S0, S0, S2
320CDC:  VSUB.F32        D16, D16, D17
320CE0:  VMUL.F32        S0, S0, S0
320CE4:  VMUL.F32        D1, D16, D16
320CE8:  VADD.F32        S0, S0, S2
320CEC:  VADD.F32        S0, S0, S3
320CF0:  VSQRT.F32       S0, S0
320CF4:  VCMPE.F32       S0, S16
320CF8:  VMRS            APSR_nzcv, FPSCR
320CFC:  BGE             loc_320D52
320CFE:  MOV             R6, R5
320D00:  MOV             R5, R0
320D02:  LDR             R0, [SP,#0x48+var_44]
320D04:  MOV             R4, R2
320D06:  ADD.W           R9, R0, R10
320D0A:  LDRH.W          R0, [R9,#0x1A]
320D0E:  ORR.W           R1, R11, R0,LSL#16
320D12:  MOVS            R0, #7
320D14:  BLX             j__ZN6CRadar18ClearBlipForEntityE9eBlipTypei; CRadar::ClearBlipForEntity(eBlipType,int)
320D18:  LDR.W           R0, [R9,#4]; this
320D1C:  CBZ             R0, loc_320D36
320D1E:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
320D22:  LDR.W           R0, [R9,#4]
320D26:  CMP             R0, #0
320D28:  ITTT NE
320D2A:  LDRNE           R1, [R0]
320D2C:  LDRNE           R1, [R1,#4]
320D2E:  BLXNE           R1
320D30:  MOVS            R0, #0
320D32:  STR.W           R0, [R9,#4]
320D36:  MOVS            R0, #0
320D38:  MOV             R2, R4
320D3A:  STRB.W          R0, [R8,#0x1C]
320D3E:  ADD             R4, SP, #0x48+var_3C
320D40:  LDR             R0, [SP,#0x48+var_48]
320D42:  ADD             R0, R10
320D44:  LDRB            R1, [R0,#0x1D]
320D46:  ORR.W           R1, R1, #1
320D4A:  STRB            R1, [R0,#0x1D]
320D4C:  MOV             R0, R5
320D4E:  MOV             R5, R6
320D50:  LDR             R6, [SP,#0x48+var_40]
320D52:  ADD.W           R10, R10, #0x20 ; ' '
320D56:  ADD.W           R11, R11, #1
320D5A:  CMP.W           R10, #0x4D80
320D5E:  BNE             loc_320C96
320D60:  ADD             SP, SP, #0x10
320D62:  VPOP            {D8-D10}
320D66:  ADD             SP, SP, #4
320D68:  POP.W           {R8-R11}
320D6C:  POP             {R4-R7,PC}
