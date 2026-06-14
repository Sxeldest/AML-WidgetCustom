; =========================================================
; Game Engine Function: _ZN10CStreaming20InstanceLoadedModelsERK7CVector
; Address            : 0x2D2B88 - 0x2D2D86
; =========================================================

2D2B88:  PUSH            {R4-R7,LR}
2D2B8A:  ADD             R7, SP, #0xC
2D2B8C:  PUSH.W          {R8-R11}
2D2B90:  SUB             SP, SP, #4
2D2B92:  VPUSH           {D8-D12}
2D2B96:  SUB             SP, SP, #0x28
2D2B98:  LDR             R1, =(_ZN5CGame8currAreaE_ptr - 0x2D2BA4)
2D2B9A:  ADR             R2, dword_2D2D8C
2D2B9C:  VLDR            S0, [R0]
2D2BA0:  ADD             R1, PC; _ZN5CGame8currAreaE_ptr
2D2BA2:  VLDR            S2, [R0,#4]
2D2BA6:  VLDR            S16, =50.0
2D2BAA:  LDR             R1, [R1]; CGame::currArea ...
2D2BAC:  VLDR            S18, =60.0
2D2BB0:  LDR             R1, [R1]; CGame::currArea
2D2BB2:  CMP             R1, #0
2D2BB4:  IT NE
2D2BB6:  ADDNE           R2, #4
2D2BB8:  VLDR            S4, [R2]
2D2BBC:  VSUB.F32        S6, S0, S4
2D2BC0:  VSUB.F32        S8, S2, S4
2D2BC4:  VADD.F32        S20, S0, S4
2D2BC8:  VADD.F32        S22, S2, S4
2D2BCC:  VDIV.F32        S6, S6, S16
2D2BD0:  VDIV.F32        S8, S8, S16
2D2BD4:  VADD.F32        S6, S6, S18
2D2BD8:  VADD.F32        S8, S8, S18
2D2BDC:  VMOV            R0, S6; x
2D2BE0:  VMOV            R4, S8
2D2BE4:  BLX             floorf
2D2BE8:  VMOV            S24, R0
2D2BEC:  MOV             R0, R4; x
2D2BEE:  BLX             floorf
2D2BF2:  VDIV.F32        S0, S20, S16
2D2BF6:  MOV             R4, R0
2D2BF8:  VADD.F32        S0, S0, S18
2D2BFC:  VMOV            R0, S0; x
2D2C00:  BLX             floorf
2D2C04:  VDIV.F32        S0, S22, S16
2D2C08:  MOV             R5, R0
2D2C0A:  VADD.F32        S0, S0, S18
2D2C0E:  VMOV            R0, S0; x
2D2C12:  BLX             floorf
2D2C16:  VMOV            S0, R0
2D2C1A:  MOVS            R0, #0x77 ; 'w'
2D2C1C:  VMOV            S2, R5
2D2C20:  VCVT.S32.F32    S6, S24
2D2C24:  VCVT.S32.F32    S0, S0
2D2C28:  VCVT.S32.F32    S2, S2
2D2C2C:  VMOV            S4, R4
2D2C30:  VCVT.S32.F32    S4, S4
2D2C34:  VMOV            R1, S0
2D2C38:  VMOV            R2, S2
2D2C3C:  VMOV            R3, S4
2D2C40:  CMP             R1, #0x77 ; 'w'
2D2C42:  IT GE
2D2C44:  MOVGE           R1, R0
2D2C46:  CMP             R2, #0x77 ; 'w'
2D2C48:  IT GE
2D2C4A:  MOVGE           R2, R0
2D2C4C:  VMOV            R0, S6
2D2C50:  STR             R2, [SP,#0x70+var_4C]
2D2C52:  MOVS            R2, #0
2D2C54:  CMP             R3, #0
2D2C56:  IT LE
2D2C58:  MOVLE           R3, R2
2D2C5A:  CMP             R0, #0
2D2C5C:  IT GT
2D2C5E:  MOVGT           R2, R0
2D2C60:  ADD             R0, SP, #0x70+var_6C
2D2C62:  CMP             R3, R1
2D2C64:  STM             R0!, {R1-R3}
2D2C66:  BGT.W           loc_2D2D78
2D2C6A:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x2D2C70)
2D2C6C:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
2D2C6E:  LDR             R0, [R0]; CWorld::ms_aSectors ...
2D2C70:  STR             R0, [SP,#0x70+var_58]
2D2C72:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x2D2C78)
2D2C74:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
2D2C76:  LDR             R0, [R0]; CWorld::ms_aRepeatSectors ...
2D2C78:  STR             R0, [SP,#0x70+var_5C]
2D2C7A:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x2D2C80)
2D2C7C:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
2D2C7E:  LDR             R0, [R0]; CWorld::ms_aSectors ...
2D2C80:  STR             R0, [SP,#0x70+var_60]
2D2C82:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x2D2C88)
2D2C84:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
2D2C86:  LDR.W           R8, [R0]; CGame::currArea ...
2D2C8A:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x2D2C90)
2D2C8C:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
2D2C8E:  LDR.W           R9, [R0]; CGame::currArea ...
2D2C92:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x2D2C98)
2D2C94:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
2D2C96:  LDR.W           R10, [R0]; CGame::currArea ...
2D2C9A:  LDR             R0, [SP,#0x70+var_4C]
2D2C9C:  LDR             R1, [SP,#0x70+var_68]
2D2C9E:  CMP             R1, R0
2D2CA0:  BGT             loc_2D2D6A
2D2CA2:  LDR             R1, [SP,#0x70+var_64]
2D2CA4:  MOVS            R0, #0x77 ; 'w'
2D2CA6:  CMP             R1, #0x77 ; 'w'
2D2CA8:  IT LT
2D2CAA:  MOVLT           R0, R1
2D2CAC:  LDR             R4, [SP,#0x70+var_68]
2D2CAE:  RSB.W           R0, R0, R0,LSL#4
2D2CB2:  LSLS            R0, R0, #3
2D2CB4:  STR             R0, [SP,#0x70+var_50]
2D2CB6:  LSLS            R0, R1, #4
2D2CB8:  UXTB            R0, R0
2D2CBA:  STR             R0, [SP,#0x70+var_54]
2D2CBC:  CMP             R4, #0x77 ; 'w'
2D2CBE:  MOV.W           R0, #0x77 ; 'w'
2D2CC2:  IT LT
2D2CC4:  MOVLT           R0, R4
2D2CC6:  LDR             R1, [SP,#0x70+var_50]
2D2CC8:  ADDS            R5, R0, R1
2D2CCA:  LDR             R1, [SP,#0x70+var_58]
2D2CCC:  AND.W           R0, R4, #0xF
2D2CD0:  LDR.W           R6, [R1,R5,LSL#3]
2D2CD4:  LDR             R1, [SP,#0x70+var_54]
2D2CD6:  ORR.W           R11, R0, R1
2D2CDA:  B               loc_2D2CE2
2D2CDC:  LDR             R1, [R0]
2D2CDE:  LDR             R1, [R1,#0x20]
2D2CE0:  BLX             R1
2D2CE2:  CBZ             R6, loc_2D2D00
2D2CE4:  LDRD.W          R0, R6, [R6]
2D2CE8:  LDRB.W          R1, [R0,#0x33]
2D2CEC:  CMP             R1, #0xD
2D2CEE:  ITT NE
2D2CF0:  LDRNE.W         R2, [R10]; CGame::currArea
2D2CF4:  CMPNE           R2, R1
2D2CF6:  BNE             loc_2D2CE2
2D2CF8:  LDR             R1, [R0,#0x18]
2D2CFA:  CMP             R1, #0
2D2CFC:  BNE             loc_2D2CE2
2D2CFE:  B               loc_2D2CDC
2D2D00:  ADD.W           R0, R11, R11,LSL#1
2D2D04:  LDR             R1, [SP,#0x70+var_5C]
2D2D06:  ADD.W           R0, R1, R0,LSL#2
2D2D0A:  LDR             R6, [R0,#8]
2D2D0C:  B               loc_2D2D14
2D2D0E:  LDR             R1, [R0]
2D2D10:  LDR             R1, [R1,#0x20]
2D2D12:  BLX             R1
2D2D14:  CBZ             R6, loc_2D2D32
2D2D16:  LDRD.W          R0, R6, [R6]
2D2D1A:  LDRB.W          R1, [R0,#0x33]
2D2D1E:  CMP             R1, #0xD
2D2D20:  ITT NE
2D2D22:  LDRNE.W         R2, [R9]; CGame::currArea
2D2D26:  CMPNE           R2, R1
2D2D28:  BNE             loc_2D2D14
2D2D2A:  LDR             R1, [R0,#0x18]
2D2D2C:  CMP             R1, #0
2D2D2E:  BNE             loc_2D2D14
2D2D30:  B               loc_2D2D0E
2D2D32:  LDR             R0, [SP,#0x70+var_60]
2D2D34:  ADD.W           R0, R0, R5,LSL#3
2D2D38:  LDR             R5, [R0,#4]
2D2D3A:  B               loc_2D2D42
2D2D3C:  LDR             R1, [R0]
2D2D3E:  LDR             R1, [R1,#0x20]
2D2D40:  BLX             R1
2D2D42:  CBZ             R5, loc_2D2D60
2D2D44:  LDRD.W          R0, R5, [R5]
2D2D48:  LDRB.W          R1, [R0,#0x33]
2D2D4C:  CMP             R1, #0xD
2D2D4E:  ITT NE
2D2D50:  LDRNE.W         R2, [R8]; CGame::currArea
2D2D54:  CMPNE           R2, R1
2D2D56:  BNE             loc_2D2D42
2D2D58:  LDR             R1, [R0,#0x18]
2D2D5A:  CMP             R1, #0
2D2D5C:  BNE             loc_2D2D42
2D2D5E:  B               loc_2D2D3C
2D2D60:  LDR             R1, [SP,#0x70+var_4C]
2D2D62:  ADDS            R0, R4, #1
2D2D64:  CMP             R4, R1
2D2D66:  MOV             R4, R0
2D2D68:  BLT             loc_2D2CBC
2D2D6A:  LDR             R2, [SP,#0x70+var_64]
2D2D6C:  LDR             R1, [SP,#0x70+var_6C]
2D2D6E:  ADDS            R0, R2, #1
2D2D70:  STR             R0, [SP,#0x70+var_64]
2D2D72:  CMP             R2, R1
2D2D74:  BLT.W           loc_2D2C9A
2D2D78:  ADD             SP, SP, #0x28 ; '('
2D2D7A:  VPOP            {D8-D12}
2D2D7E:  ADD             SP, SP, #4
2D2D80:  POP.W           {R8-R11}
2D2D84:  POP             {R4-R7,PC}
