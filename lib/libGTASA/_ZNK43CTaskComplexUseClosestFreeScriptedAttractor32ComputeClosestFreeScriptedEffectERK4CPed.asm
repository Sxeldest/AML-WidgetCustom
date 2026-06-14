; =========================================================
; Game Engine Function: _ZNK43CTaskComplexUseClosestFreeScriptedAttractor32ComputeClosestFreeScriptedEffectERK4CPed
; Address            : 0x4F0AF8 - 0x4F0C7E
; =========================================================

4F0AF8:  PUSH            {R4-R7,LR}
4F0AFA:  ADD             R7, SP, #0xC
4F0AFC:  PUSH.W          {R8-R11}
4F0B00:  SUB             SP, SP, #4
4F0B02:  VPUSH           {D8-D9}
4F0B06:  SUB             SP, SP, #0x68
4F0B08:  LDR             R0, =(_ZN18CScripted2dEffects12ms_activatedE_ptr - 0x4F0B16)
4F0B0A:  MOV             R9, R1
4F0B0C:  LDR             R1, =(_ZN18CScripted2dEffects10ms_effectsE_ptr - 0x4F0B1C)
4F0B0E:  MOV.W           R8, #0
4F0B12:  ADD             R0, PC; _ZN18CScripted2dEffects12ms_activatedE_ptr
4F0B14:  VLDR            S16, =3.4028e38
4F0B18:  ADD             R1, PC; _ZN18CScripted2dEffects10ms_effectsE_ptr
4F0B1A:  MOV.W           R10, #0
4F0B1E:  LDR             R4, [R0]; CScripted2dEffects::ms_activated ...
4F0B20:  LDR             R0, =(_ZN18CScripted2dEffects12ms_userListsE_ptr - 0x4F0B28)
4F0B22:  LDR             R5, [R1]; CScripted2dEffects::ms_effects ...
4F0B24:  ADD             R0, PC; _ZN18CScripted2dEffects12ms_userListsE_ptr
4F0B26:  LDR.W           R12, [R0]; CScripted2dEffects::ms_userLists ...
4F0B2A:  LDR             R0, =(_ZN18CScripted2dEffects12ms_userListsE_ptr - 0x4F0B30)
4F0B2C:  ADD             R0, PC; _ZN18CScripted2dEffects12ms_userListsE_ptr
4F0B2E:  LDR             R0, [R0]; CScripted2dEffects::ms_userLists ...
4F0B30:  STR             R0, [SP,#0x98+var_7C]
4F0B32:  LDR             R0, =(_ZN18CScripted2dEffects12ms_userListsE_ptr - 0x4F0B38)
4F0B34:  ADD             R0, PC; _ZN18CScripted2dEffects12ms_userListsE_ptr
4F0B36:  LDR             R0, [R0]; CScripted2dEffects::ms_userLists ...
4F0B38:  STR             R0, [SP,#0x98+var_80]
4F0B3A:  LDR             R0, =(_ZN18CScripted2dEffects12ms_userListsE_ptr - 0x4F0B40)
4F0B3C:  ADD             R0, PC; _ZN18CScripted2dEffects12ms_userListsE_ptr
4F0B3E:  LDR             R0, [R0]; CScripted2dEffects::ms_userLists ...
4F0B40:  STR             R0, [SP,#0x98+var_84]
4F0B42:  LDR             R0, =(_ZN18CScripted2dEffects12ms_userListsE_ptr - 0x4F0B48)
4F0B44:  ADD             R0, PC; _ZN18CScripted2dEffects12ms_userListsE_ptr
4F0B46:  LDR             R0, [R0]; CScripted2dEffects::ms_userLists ...
4F0B48:  STR             R0, [SP,#0x98+var_88]
4F0B4A:  LDR             R0, =(_ZN18CScripted2dEffects12ms_userListsE_ptr - 0x4F0B50)
4F0B4C:  ADD             R0, PC; _ZN18CScripted2dEffects12ms_userListsE_ptr
4F0B4E:  LDR             R0, [R0]; CScripted2dEffects::ms_userLists ...
4F0B50:  STR             R0, [SP,#0x98+var_8C]
4F0B52:  LDR             R0, =(_ZN18CScripted2dEffects12ms_userListsE_ptr - 0x4F0B58)
4F0B54:  ADD             R0, PC; _ZN18CScripted2dEffects12ms_userListsE_ptr
4F0B56:  LDR             R0, [R0]; CScripted2dEffects::ms_userLists ...
4F0B58:  STR             R0, [SP,#0x98+var_90]
4F0B5A:  LDR             R0, =(_ZN18CScripted2dEffects12ms_userListsE_ptr - 0x4F0B60)
4F0B5C:  ADD             R0, PC; _ZN18CScripted2dEffects12ms_userListsE_ptr
4F0B5E:  LDR             R0, [R0]; CScripted2dEffects::ms_userLists ...
4F0B60:  STR             R0, [SP,#0x98+var_94]
4F0B62:  LDR             R0, =(_ZN18CScripted2dEffects12ms_userListsE_ptr - 0x4F0B68)
4F0B64:  ADD             R0, PC; _ZN18CScripted2dEffects12ms_userListsE_ptr
4F0B66:  LDR             R0, [R0]; CScripted2dEffects::ms_userLists ...
4F0B68:  STR             R0, [SP,#0x98+var_98]
4F0B6A:  LDRB            R0, [R4]; CScripted2dEffects::ms_activated
4F0B6C:  CMP             R0, #0
4F0B6E:  BEQ             loc_4F0C5E
4F0B70:  ADD.W           R0, R12, R8
4F0B74:  LDRB.W          R0, [R0,#0x20]
4F0B78:  CBZ             R0, loc_4F0BE2
4F0B7A:  LDR             R0, [SP,#0x98+var_7C]
4F0B7C:  LDRSH.W         R1, [R9,#0x26]
4F0B80:  LDR.W           R6, [R0,R8]
4F0B84:  CMP             R6, R1
4F0B86:  BEQ             loc_4F0BE2
4F0B88:  LDR             R0, [SP,#0x98+var_80]
4F0B8A:  ADD             R0, R8
4F0B8C:  LDR             R3, [R0,#4]
4F0B8E:  CMP             R3, R1
4F0B90:  BEQ             loc_4F0BE2
4F0B92:  LDR             R0, [SP,#0x98+var_84]
4F0B94:  ADD             R0, R8
4F0B96:  LDR             R2, [R0,#8]
4F0B98:  CMP             R2, R1
4F0B9A:  BEQ             loc_4F0BE2
4F0B9C:  LDR             R0, [SP,#0x98+var_88]
4F0B9E:  ADD             R0, R8
4F0BA0:  LDR             R0, [R0,#0xC]
4F0BA2:  CMP             R0, R1
4F0BA4:  BEQ             loc_4F0BE2
4F0BA6:  LDR.W           R1, [R9,#0x59C]
4F0BAA:  ADDS            R6, #2
4F0BAC:  BNE             loc_4F0BB8
4F0BAE:  LDR             R6, [SP,#0x98+var_8C]
4F0BB0:  ADD             R6, R8
4F0BB2:  LDR             R6, [R6,#0x10]
4F0BB4:  CMP             R6, R1
4F0BB6:  BEQ             loc_4F0BE2
4F0BB8:  ADDS            R3, #2
4F0BBA:  BNE             loc_4F0BC6
4F0BBC:  LDR             R3, [SP,#0x98+var_90]
4F0BBE:  ADD             R3, R8
4F0BC0:  LDR             R3, [R3,#0x14]
4F0BC2:  CMP             R3, R1
4F0BC4:  BEQ             loc_4F0BE2
4F0BC6:  ADDS            R2, #2
4F0BC8:  BNE             loc_4F0BD4
4F0BCA:  LDR             R2, [SP,#0x98+var_94]
4F0BCC:  ADD             R2, R8
4F0BCE:  LDR             R2, [R2,#0x18]
4F0BD0:  CMP             R2, R1
4F0BD2:  BEQ             loc_4F0BE2
4F0BD4:  ADDS            R0, #2
4F0BD6:  BNE             loc_4F0C5E
4F0BD8:  LDR             R0, [SP,#0x98+var_98]
4F0BDA:  ADD             R0, R8
4F0BDC:  LDR             R0, [R0,#0x1C]
4F0BDE:  CMP             R0, R1
4F0BE0:  BNE             loc_4F0C5E
4F0BE2:  LDR.W           R0, [R9,#0x14]
4F0BE6:  VLDR            S0, [R5]
4F0BEA:  ADD.W           R1, R0, #0x30 ; '0'
4F0BEE:  CMP             R0, #0
4F0BF0:  IT EQ
4F0BF2:  ADDEQ.W         R1, R9, #4
4F0BF6:  VLDR            D16, [R5,#4]
4F0BFA:  VLDR            S2, [R1]
4F0BFE:  VLDR            D17, [R1,#4]
4F0C02:  VSUB.F32        S0, S2, S0
4F0C06:  VSUB.F32        D16, D17, D16
4F0C0A:  VMUL.F32        D1, D16, D16
4F0C0E:  VMUL.F32        S0, S0, S0
4F0C12:  VADD.F32        S0, S0, S2
4F0C16:  VADD.F32        S18, S0, S3
4F0C1A:  VCMPE.F32       S18, S16
4F0C1E:  VMRS            APSR_nzcv, FPSCR
4F0C22:  BGE             loc_4F0C5E
4F0C24:  ADD.W           R11, SP, #0x98+var_78
4F0C28:  MOVS            R0, #0
4F0C2A:  STRD.W          R0, R0, [SP,#0x98+var_38]
4F0C2E:  MOV.W           R1, #0x3F800000; float
4F0C32:  MOV             R0, R11; this
4F0C34:  MOV             R11, R9
4F0C36:  MOV             R9, R12
4F0C38:  BLX             j__ZN7CMatrix8SetScaleEf; CMatrix::SetScale(float)
4F0C3C:  BLX             j__Z22GetPedAttractorManagerv; GetPedAttractorManager(void)
4F0C40:  MOV             R1, R5
4F0C42:  MOVS            R2, #0
4F0C44:  BLX             j__ZNK20CPedAttractorManager12HasEmptySlotEPK9C2dEffectPK7CEntity; CPedAttractorManager::HasEmptySlot(C2dEffect const*,CEntity const*)
4F0C48:  MOV             R6, R0
4F0C4A:  ADD             R0, SP, #0x98+var_78; this
4F0C4C:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
4F0C50:  CMP             R6, #0
4F0C52:  MOV             R12, R9
4F0C54:  ITT NE
4F0C56:  VMOVNE.F32      S16, S18
4F0C5A:  MOVNE           R10, R5
4F0C5C:  MOV             R9, R11
4F0C5E:  ADD.W           R8, R8, #0x24 ; '$'
4F0C62:  ADDS            R5, #0x40 ; '@'
4F0C64:  ADDS            R4, #1
4F0C66:  CMP.W           R8, #0x900
4F0C6A:  BNE.W           loc_4F0B6A
4F0C6E:  MOV             R0, R10
4F0C70:  ADD             SP, SP, #0x68 ; 'h'
4F0C72:  VPOP            {D8-D9}
4F0C76:  ADD             SP, SP, #4
4F0C78:  POP.W           {R8-R11}
4F0C7C:  POP             {R4-R7,PC}
