; =========================================================
; Game Engine Function: _ZN7CWanted23RemoveExcessPursuitCopsEv
; Address            : 0x422BEC - 0x422D5E
; =========================================================

422BEC:  PUSH            {R4-R7,LR}
422BEE:  ADD             R7, SP, #0xC
422BF0:  PUSH.W          {R8-R11}
422BF4:  SUB             SP, SP, #4
422BF6:  VPUSH           {D8-D9}
422BFA:  SUB             SP, SP, #0x20
422BFC:  MOV             R4, R0
422BFE:  LDRB            R0, [R4,#0x18]
422C00:  LDRB            R1, [R4,#0x19]
422C02:  CMP             R0, R1
422C04:  BLS.W           loc_422D50
422C08:  VMOV.F32        S16, #1.0
422C0C:  ADD.W           R0, R4, #0x218
422C10:  STR             R0, [SP,#0x50+var_4C]
422C12:  ADD.W           R0, R4, #0x214
422C16:  STR             R0, [SP,#0x50+var_48]
422C18:  ADD.W           R0, R4, #0x210
422C1C:  STR             R0, [SP,#0x50+var_44]
422C1E:  ADD.W           R0, R4, #0x20C
422C22:  STR             R0, [SP,#0x50+var_40]
422C24:  ADD.W           R0, R4, #0x208
422C28:  ADD.W           R9, R4, #0x1FC
422C2C:  ADD.W           R10, R4, #0x1F8
422C30:  ADD.W           R11, R4, #0x1F4
422C34:  STR             R0, [SP,#0x50+var_3C]
422C36:  ADD.W           R0, R4, #0x204
422C3A:  STR             R0, [SP,#0x50+var_38]
422C3C:  ADD.W           R0, R4, #0x200
422C40:  STR             R0, [SP,#0x50+var_34]
422C42:  VMOV.F32        S18, S16
422C46:  MOVS            R6, #0
422C48:  MOVS            R0, #0x7D ; '}'
422C4A:  MOV             R8, R0
422C4C:  LDR.W           R0, [R4,R8,LSL#2]; this
422C50:  CBZ             R0, loc_422CB4
422C52:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
422C56:  CBZ             R0, loc_422CC2
422C58:  MOV.W           R0, #0xFFFFFFFF; int
422C5C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
422C60:  LDR.W           R1, [R4,R8,LSL#2]
422C64:  LDR             R2, [R0,#0x14]
422C66:  LDR             R3, [R1,#0x14]
422C68:  ADD.W           R5, R2, #0x30 ; '0'
422C6C:  CMP             R2, #0
422C6E:  IT EQ
422C70:  ADDEQ           R5, R0, #4
422C72:  ADD.W           R0, R3, #0x30 ; '0'
422C76:  CMP             R3, #0
422C78:  VLDR            S0, [R5]
422C7C:  IT EQ
422C7E:  ADDEQ           R0, R1, #4
422C80:  VLDR            D16, [R5,#4]
422C84:  VLDR            S2, [R0]
422C88:  VLDR            D17, [R0,#4]
422C8C:  VSUB.F32        S0, S0, S2
422C90:  VSUB.F32        D16, D16, D17
422C94:  VMUL.F32        D1, D16, D16
422C98:  VMUL.F32        S0, S0, S0
422C9C:  VADD.F32        S0, S0, S2
422CA0:  VADD.F32        S0, S0, S3
422CA4:  VCMPE.F32       S0, S18
422CA8:  VMRS            APSR_nzcv, FPSCR
422CAC:  ITT GT
422CAE:  VMOVGT.F32      S18, S0
422CB2:  MOVGT           R6, R1
422CB4:  SUB.W           R1, R8, #0x7D ; '}'
422CB8:  ADD.W           R0, R8, #1
422CBC:  CMP             R1, #9
422CBE:  BLT             loc_422C4A
422CC0:  B               loc_422CC6
422CC2:  LDR.W           R6, [R4,R8,LSL#2]
422CC6:  LDR.W           R0, [R11]
422CCA:  CMP             R0, R6
422CCC:  MOV             R0, R11
422CCE:  BEQ             loc_422D3C
422CD0:  LDR.W           R0, [R10]
422CD4:  CMP             R0, R6
422CD6:  MOV             R0, R10
422CD8:  BEQ             loc_422D3C
422CDA:  LDR.W           R0, [R9]
422CDE:  CMP             R0, R6
422CE0:  MOV             R0, R9
422CE2:  BEQ             loc_422D3C
422CE4:  LDR             R0, [SP,#0x50+var_34]
422CE6:  MOV             R1, R0
422CE8:  LDR             R0, [R1]
422CEA:  CMP             R0, R6
422CEC:  MOV             R0, R1
422CEE:  BEQ             loc_422D3C
422CF0:  LDR             R0, [SP,#0x50+var_38]
422CF2:  MOV             R1, R0
422CF4:  LDR             R0, [R1]
422CF6:  CMP             R0, R6
422CF8:  MOV             R0, R1
422CFA:  BEQ             loc_422D3C
422CFC:  LDR             R0, [SP,#0x50+var_3C]
422CFE:  MOV             R1, R0
422D00:  LDR             R0, [R1]
422D02:  CMP             R0, R6
422D04:  MOV             R0, R1
422D06:  BEQ             loc_422D3C
422D08:  LDR             R0, [SP,#0x50+var_40]
422D0A:  MOV             R1, R0
422D0C:  LDR             R0, [R1]
422D0E:  CMP             R0, R6
422D10:  MOV             R0, R1
422D12:  BEQ             loc_422D3C
422D14:  LDR             R0, [SP,#0x50+var_44]
422D16:  MOV             R1, R0
422D18:  LDR             R0, [R1]
422D1A:  CMP             R0, R6
422D1C:  MOV             R0, R1
422D1E:  BEQ             loc_422D3C
422D20:  LDR             R0, [SP,#0x50+var_48]
422D22:  MOV             R1, R0
422D24:  LDR             R0, [R1]
422D26:  CMP             R0, R6
422D28:  MOV             R0, R1
422D2A:  BEQ             loc_422D3C
422D2C:  LDR             R0, [SP,#0x50+var_4C]
422D2E:  MOV             R1, R0
422D30:  LDR             R0, [R1]
422D32:  CMP             R0, R6
422D34:  MOV             R0, R1
422D36:  BEQ             loc_422D3C
422D38:  LDRB            R0, [R4,#0x18]
422D3A:  B               loc_422D46
422D3C:  MOVS            R1, #0
422D3E:  STR             R1, [R0]
422D40:  LDRB            R0, [R4,#0x18]
422D42:  SUBS            R0, #1
422D44:  STRB            R0, [R4,#0x18]
422D46:  LDRB            R1, [R4,#0x19]
422D48:  UXTB            R0, R0
422D4A:  CMP             R0, R1
422D4C:  BHI.W           loc_422C42
422D50:  ADD             SP, SP, #0x20 ; ' '
422D52:  VPOP            {D8-D9}
422D56:  ADD             SP, SP, #4
422D58:  POP.W           {R8-R11}
422D5C:  POP             {R4-R7,PC}
