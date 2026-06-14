; =========================================================
; Game Engine Function: _ZN17CTaskSimpleUseGun9StartAnimEP4CPed
; Address            : 0x4DCC34 - 0x4DCF42
; =========================================================

4DCC34:  PUSH            {R4-R7,LR}
4DCC36:  ADD             R7, SP, #0xC
4DCC38:  PUSH.W          {R8,R9,R11}
4DCC3C:  MOV             R5, R1
4DCC3E:  MOV             R4, R0
4DCC40:  LDRB.W          R0, [R5,#0x487]
4DCC44:  LSLS            R0, R0, #0x1D
4DCC46:  BMI             loc_4DCC4E
4DCC48:  MOV.W           R9, #0
4DCC4C:  B               loc_4DCC5A
4DCC4E:  LDR.W           R0, [R5,#0x440]; this
4DCC52:  MOVS            R1, #1; bool
4DCC54:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
4DCC58:  MOV             R9, R0
4DCC5A:  LDR             R0, [R4,#0x2C]
4DCC5C:  CBZ             R0, loc_4DCCA4
4DCC5E:  LDRB            R1, [R4,#0xF]
4DCC60:  CMP             R1, #7
4DCC62:  BNE             loc_4DCC94
4DCC64:  VMOV.F32        S0, #-8.0
4DCC68:  VLDR            S2, [R0,#0x1C]
4DCC6C:  VCMPE.F32       S2, S0
4DCC70:  VMRS            APSR_nzcv, FPSCR
4DCC74:  BLE             loc_4DCC94
4DCC76:  VLDR            S0, [R0,#0x18]
4DCC7A:  VCMPE.F32       S0, #0.0
4DCC7E:  VMRS            APSR_nzcv, FPSCR
4DCC82:  BLE             loc_4DCC94
4DCC84:  LDRSB.W         R1, [R4,#0x10]
4DCC88:  CMP             R1, #3
4DCC8A:  ITTT LE
4DCC8C:  MOVLE.W         R1, #0xC1000000
4DCC90:  STRLE           R1, [R0,#0x1C]
4DCC92:  LDRLE           R0, [R4,#0x2C]; this
4DCC94:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4DCC9E)
4DCC96:  MOVS            R2, #0; void *
4DCC98:  MOVS            R6, #0
4DCC9A:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4DCC9C:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DCC9E:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DCCA2:  STR             R6, [R4,#0x2C]
4DCCA4:  LDRSB.W         R0, [R4,#0xF]
4DCCA8:  CMP             R0, #7; switch 8 cases
4DCCAA:  BHI.W           def_4DCCB2; jumptable 004DCCB2 default case
4DCCAE:  ADDW            R8, R5, #0x484
4DCCB2:  TBB.W           [PC,R0]; switch jump
4DCCB6:  DCB 0x36; jump table for switch statement
4DCCB7:  DCB 4
4DCCB8:  DCB 4
4DCCB9:  DCB 4
4DCCBA:  DCB 0x70
4DCCBB:  DCB 0x9B
4DCCBC:  DCB 0x36
4DCCBD:  DCB 0x36
4DCCBE:  UXTB            R0, R0; jumptable 004DCCB2 cases 1-3
4DCCC0:  CMP             R0, #1
4DCCC2:  BNE             loc_4DCD30
4DCCC4:  VLDR            S0, [R4,#0x14]
4DCCC8:  VCMP.F32        S0, #0.0
4DCCCC:  VMRS            APSR_nzcv, FPSCR
4DCCD0:  BNE             loc_4DCCE0
4DCCD2:  VLDR            S0, [R4,#0x18]
4DCCD6:  VCMP.F32        S0, #0.0
4DCCDA:  VMRS            APSR_nzcv, FPSCR
4DCCDE:  BEQ             loc_4DCCE8
4DCCE0:  LDR             R0, [R4,#0x30]
4DCCE2:  LDRB            R0, [R0,#0x18]
4DCCE4:  LSLS            R0, R0, #0x1A
4DCCE6:  BPL             loc_4DCD0C
4DCCE8:  CMP.W           R9, #0
4DCCEC:  BEQ             loc_4DCD80
4DCCEE:  VLDR            S0, [R9,#0x1C]
4DCCF2:  VCMP.F32        S0, #0.0
4DCCF6:  VMRS            APSR_nzcv, FPSCR
4DCCFA:  BNE             loc_4DCD0C
4DCCFC:  VLDR            S0, [R9,#0x20]
4DCD00:  VCMP.F32        S0, #0.0
4DCD04:  VMRS            APSR_nzcv, FPSCR
4DCD08:  BEQ.W           loc_4DCF0E
4DCD0C:  LDRB            R0, [R4,#0x10]
4DCD0E:  AND.W           R0, R0, #0xFE
4DCD12:  CMP             R0, #2
4DCD14:  BNE.W           loc_4DCEB6
4DCD18:  MOVS            R0, #1
4DCD1A:  STRB            R0, [R4,#0x10]
4DCD1C:  POP.W           {R8,R9,R11}
4DCD20:  POP             {R4-R7,PC}
4DCD22:  MOV             R0, R4; jumptable 004DCCB2 cases 0,6,7
4DCD24:  MOV             R1, R5; CPed *
4DCD26:  BLX             j__ZN17CTaskSimpleUseGun17RemoveStanceAnimsEP4CPedf; CTaskSimpleUseGun::RemoveStanceAnims(CPed *,float)
4DCD2A:  MOVS            R0, #1
4DCD2C:  STRB            R0, [R4,#8]
4DCD2E:  B               def_4DCCB2; jumptable 004DCCB2 default case
4DCD30:  CMP.W           R9, #0
4DCD34:  BEQ             loc_4DCD78
4DCD36:  VLDR            S0, [R9,#0x1C]
4DCD3A:  VCMP.F32        S0, #0.0
4DCD3E:  VMRS            APSR_nzcv, FPSCR
4DCD42:  BNE.W           loc_4DCEB6
4DCD46:  LDR.W           R1, [R9,#0x10]
4DCD4A:  CMP             R1, #0
4DCD4C:  BEQ.W           loc_4DCEB6
4DCD50:  VMOV.F32        S0, #1.0
4DCD54:  VLDR            S2, [R1,#0x18]
4DCD58:  VCMPE.F32       S2, S0
4DCD5C:  VMRS            APSR_nzcv, FPSCR
4DCD60:  BLT.W           loc_4DCEB6
4DCD64:  LDRB.W          R1, [R9,#0x19]
4DCD68:  CMP             R1, #0
4DCD6A:  BNE.W           loc_4DCEB6
4DCD6E:  LDRSH.W         R1, [R9,#0xE]
4DCD72:  CMP             R1, #0
4DCD74:  BGT.W           loc_4DCEB6
4DCD78:  CMP             R0, #3
4DCD7A:  ITT EQ
4DCD7C:  LDRHEQ          R0, [R4,#0x34]
4DCD7E:  STRHEQ          R0, [R4,#0x36]
4DCD80:  LDRB.W          R1, [R8,#3]
4DCD84:  LDR             R0, [R4,#0x30]
4DCD86:  LSLS            R1, R1, #0x1D
4DCD88:  ITT MI
4DCD8A:  LDRBMI          R1, [R0,#0x19]
4DCD8C:  MOVSMI.W        R1, R1,LSL#26
4DCD90:  BMI             loc_4DCE60
4DCD92:  MOVS            R2, #0xE0
4DCD94:  B               loc_4DCE62
4DCD96:  CMP.W           R9, #0; jumptable 004DCCB2 case 4
4DCD9A:  BEQ             loc_4DCDD8
4DCD9C:  VLDR            S0, [R9,#0x1C]
4DCDA0:  VCMP.F32        S0, #0.0
4DCDA4:  VMRS            APSR_nzcv, FPSCR
4DCDA8:  BNE.W           loc_4DCEB6
4DCDAC:  LDR.W           R0, [R9,#0x10]
4DCDB0:  CMP             R0, #0
4DCDB2:  BEQ.W           loc_4DCEB6
4DCDB6:  VMOV.F32        S0, #1.0
4DCDBA:  VLDR            S2, [R0,#0x18]
4DCDBE:  VCMPE.F32       S2, S0
4DCDC2:  VMRS            APSR_nzcv, FPSCR
4DCDC6:  BLT             loc_4DCEB6
4DCDC8:  LDRB.W          R0, [R9,#0x19]
4DCDCC:  CMP             R0, #0
4DCDCE:  BNE             loc_4DCEB6
4DCDD0:  LDRSH.W         R0, [R9,#0xE]
4DCDD4:  CMP             R0, #0
4DCDD6:  BGT             loc_4DCEB6
4DCDD8:  LDRB            R0, [R4,#0x10]
4DCDDA:  CMP             R0, #4
4DCDDC:  BNE             loc_4DCEBC
4DCDDE:  LDRSH.W         R0, [R4,#0x36]
4DCDE2:  CMP             R0, #1
4DCDE4:  BGE             loc_4DCECC
4DCDE6:  MOVS            R0, #0
4DCDE8:  STRB            R0, [R4,#0xF]
4DCDEA:  B               def_4DCCB2; jumptable 004DCCB2 default case
4DCDEC:  CMP.W           R9, #0; jumptable 004DCCB2 case 5
4DCDF0:  BEQ             loc_4DCE38
4DCDF2:  VLDR            S0, [R9,#0x1C]
4DCDF6:  VCMP.F32        S0, #0.0
4DCDFA:  VMRS            APSR_nzcv, FPSCR
4DCDFE:  BNE             loc_4DCEB6
4DCE00:  VLDR            S0, [R9,#0x20]
4DCE04:  VCMP.F32        S0, #0.0
4DCE08:  VMRS            APSR_nzcv, FPSCR
4DCE0C:  BNE             loc_4DCEB6
4DCE0E:  LDR.W           R0, [R9,#0x10]
4DCE12:  CMP             R0, #0
4DCE14:  BEQ             loc_4DCEB6
4DCE16:  VMOV.F32        S0, #1.0
4DCE1A:  VLDR            S2, [R0,#0x18]
4DCE1E:  VCMPE.F32       S2, S0
4DCE22:  VMRS            APSR_nzcv, FPSCR
4DCE26:  BLT             loc_4DCEB6
4DCE28:  LDRB.W          R0, [R9,#0x19]
4DCE2C:  CMP             R0, #0
4DCE2E:  BNE             loc_4DCEB6
4DCE30:  LDRSH.W         R0, [R9,#0xE]
4DCE34:  CMP             R0, #0
4DCE36:  BGT             loc_4DCEB6
4DCE38:  LDR             R0, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x4DCE42)
4DCE3A:  LDR.W           R1, [R8]
4DCE3E:  ADD             R0, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
4DCE40:  LDR             R3, [R0]; CTaskSimpleFight::m_aComboData ...
4DCE42:  LSRS            R2, R1, #0x1A
4DCE44:  LDR             R0, [R5,#0x18]; int
4DCE46:  LDR.W           R1, [R3,#(dword_9FDAC0 - 0x9FD460)]; int
4DCE4A:  MOVS            R3, #0x6B ; 'k'
4DCE4C:  BFI.W           R2, R3, #1, #0x1F; unsigned int
4DCE50:  MOV.W           R3, #0x41000000
4DCE54:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4DCE58:  LDR             R1, =(_ZN17CTaskSimpleUseGun15FinishGunAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4DCE60)
4DCE5A:  STR             R0, [R4,#0x2C]
4DCE5C:  ADD             R1, PC; _ZN17CTaskSimpleUseGun15FinishGunAnimCBEP21CAnimBlendAssociationPv_ptr
4DCE5E:  B               loc_4DCEA6
4DCE60:  MOVS            R2, #0xE1; unsigned int
4DCE62:  LDR             R1, [R0,#0x1C]; int
4DCE64:  MOV.W           R3, #0x41000000
4DCE68:  LDR             R0, [R5,#0x18]; int
4DCE6A:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4DCE6E:  LDRB            R1, [R4,#0x10]
4DCE70:  STR             R0, [R4,#0x2C]
4DCE72:  CMP             R1, #4
4DCE74:  BNE             loc_4DCEA2
4DCE76:  LDR             R1, [R4,#0x30]
4DCE78:  LDRB            R2, [R1,#0x19]
4DCE7A:  LSLS            R2, R2, #0x19
4DCE7C:  BPL             loc_4DCEA2
4DCE7E:  LDR.W           R2, [R8]
4DCE82:  ADD.W           R3, R1, #0x40 ; '@'
4DCE86:  TST.W           R2, #0x4000000
4DCE8A:  IT NE
4DCE8C:  ADDNE.W         R3, R1, #0x4C ; 'L'
4DCE90:  LDR             R1, [R3]; float
4DCE92:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
4DCE96:  LDR             R0, [R4,#0x2C]
4DCE98:  LDRH            R1, [R0,#0x2E]
4DCE9A:  BIC.W           R1, R1, #1
4DCE9E:  STRH            R1, [R0,#0x2E]
4DCEA0:  LDR             R0, [R4,#0x2C]; this
4DCEA2:  LDR             R1, =(_ZN17CTaskSimpleUseGun15FinishGunAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4DCEA8)
4DCEA4:  ADD             R1, PC; _ZN17CTaskSimpleUseGun15FinishGunAnimCBEP21CAnimBlendAssociationPv_ptr
4DCEA6:  LDR             R1, [R1]; CTaskSimpleUseGun::FinishGunAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DCEA8:  MOV             R2, R4; void *
4DCEAA:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DCEAE:  LDRB            R0, [R4,#0xF]; jumptable 004DCCB2 default case
4DCEB0:  STRB            R0, [R4,#0x10]
4DCEB2:  MOVS            R0, #0
4DCEB4:  STRB            R0, [R4,#0xF]
4DCEB6:  POP.W           {R8,R9,R11}
4DCEBA:  POP             {R4-R7,PC}
4DCEBC:  LDR             R0, [R4,#0x30]
4DCEBE:  MOVS            R1, #1
4DCEC0:  LDR             R0, [R0,#0x18]
4DCEC2:  AND.W           R0, R0, #0x800
4DCEC6:  ADD.W           R0, R1, R0,LSR#11
4DCECA:  STRH            R0, [R4,#0x36]
4DCECC:  LDRB.W          R1, [R8,#3]
4DCED0:  LDR             R0, [R4,#0x30]
4DCED2:  LSLS            R1, R1, #0x1D
4DCED4:  ITT MI
4DCED6:  LDRBMI          R1, [R0,#0x19]
4DCED8:  MOVSMI.W        R1, R1,LSL#26
4DCEDC:  BMI             loc_4DCEE2
4DCEDE:  MOVS            R2, #0xE2
4DCEE0:  B               loc_4DCEE4
4DCEE2:  MOVS            R2, #0xE3; unsigned int
4DCEE4:  LDR             R1, [R0,#0x1C]; int
4DCEE6:  MOV.W           R3, #0x41000000
4DCEEA:  LDR             R0, [R5,#0x18]; int
4DCEEC:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4DCEF0:  MOVS            R1, #0; float
4DCEF2:  STR             R0, [R4,#0x2C]
4DCEF4:  BLX             j__ZN21CAnimBlendAssociation5StartEf; CAnimBlendAssociation::Start(float)
4DCEF8:  LDR             R1, =(_ZN17CTaskSimpleUseGun15FinishGunAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4DCF02)
4DCEFA:  MOV             R2, R4; void *
4DCEFC:  LDR             R0, [R4,#0x2C]; this
4DCEFE:  ADD             R1, PC; _ZN17CTaskSimpleUseGun15FinishGunAnimCBEP21CAnimBlendAssociationPv_ptr
4DCF00:  LDR             R1, [R1]; CTaskSimpleUseGun::FinishGunAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DCF02:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DCF06:  LDRH            R0, [R4,#0x36]
4DCF08:  SUBS            R0, #1
4DCF0A:  STRH            R0, [R4,#0x36]
4DCF0C:  B               def_4DCCB2; jumptable 004DCCB2 default case
4DCF0E:  LDR.W           R0, [R9,#0x10]
4DCF12:  CMP             R0, #0
4DCF14:  BEQ.W           loc_4DCD0C
4DCF18:  VMOV.F32        S0, #1.0
4DCF1C:  VLDR            S2, [R0,#0x18]
4DCF20:  VCMPE.F32       S2, S0
4DCF24:  VMRS            APSR_nzcv, FPSCR
4DCF28:  BLT.W           loc_4DCD0C
4DCF2C:  LDRB.W          R0, [R9,#0x19]
4DCF30:  CMP             R0, #0
4DCF32:  BNE.W           loc_4DCD0C
4DCF36:  LDRSH.W         R0, [R9,#0xE]
4DCF3A:  CMP             R0, #1
4DCF3C:  BGE.W           loc_4DCD0C
4DCF40:  B               loc_4DCD80
