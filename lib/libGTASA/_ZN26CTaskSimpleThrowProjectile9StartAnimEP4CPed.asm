; =========================================================
; Game Engine Function: _ZN26CTaskSimpleThrowProjectile9StartAnimEP4CPed
; Address            : 0x4DEC40 - 0x4DED8A
; =========================================================

4DEC40:  PUSH            {R4-R7,LR}
4DEC42:  ADD             R7, SP, #0xC
4DEC44:  PUSH.W          {R11}
4DEC48:  MOV             R5, R1
4DEC4A:  MOV             R6, R0
4DEC4C:  LDRSB.W         R0, [R5,#0x71C]
4DEC50:  MOVS            R1, #1
4DEC52:  RSB.W           R0, R0, R0,LSL#3
4DEC56:  ADD.W           R0, R5, R0,LSL#2
4DEC5A:  LDR.W           R0, [R0,#0x5A4]
4DEC5E:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4DEC62:  LDRB            R1, [R6,#9]
4DEC64:  CMP             R1, #0
4DEC66:  BEQ             loc_4DED3E
4DEC68:  LDR             R1, [R6,#0x10]
4DEC6A:  CBZ             R1, loc_4DECBA
4DEC6C:  LDR             R2, [R5,#0x14]
4DEC6E:  LDR             R3, [R1,#0x14]
4DEC70:  ADD.W           R4, R2, #0x30 ; '0'
4DEC74:  CMP             R2, #0
4DEC76:  IT EQ
4DEC78:  ADDEQ           R4, R5, #4
4DEC7A:  ADD.W           R2, R3, #0x30 ; '0'
4DEC7E:  CMP             R3, #0
4DEC80:  VLDR            S0, [R4]
4DEC84:  IT EQ
4DEC86:  ADDEQ           R2, R1, #4
4DEC88:  VLDR            D16, [R4,#4]
4DEC8C:  VLDR            S2, [R2]
4DEC90:  VLDR            D17, [R2,#4]
4DEC94:  VSUB.F32        S0, S2, S0
4DEC98:  VSUB.F32        D16, D17, D16
4DEC9C:  VMUL.F32        D1, D16, D16
4DECA0:  VMUL.F32        S0, S0, S0
4DECA4:  VADD.F32        S0, S0, S2
4DECA8:  VADD.F32        S0, S0, S3
4DECAC:  VLDR            S2, =100.0
4DECB0:  VCMPE.F32       S0, S2
4DECB4:  VMRS            APSR_nzcv, FPSCR
4DECB8:  BGT             loc_4DED3A
4DECBA:  VLDR            S2, [R6,#0x18]
4DECBE:  MOVS            R2, #0
4DECC0:  VLDR            S0, [R6,#0x14]
4DECC4:  MOVS            R1, #0
4DECC6:  VCMP.F32        S2, #0.0
4DECCA:  VMRS            APSR_nzcv, FPSCR
4DECCE:  VCMP.F32        S0, #0.0
4DECD2:  IT EQ
4DECD4:  MOVEQ           R2, #1
4DECD6:  VMRS            APSR_nzcv, FPSCR
4DECDA:  IT EQ
4DECDC:  MOVEQ           R1, #1
4DECDE:  TST             R1, R2
4DECE0:  BEQ             loc_4DECF0
4DECE2:  VLDR            S4, [R6,#0x1C]
4DECE6:  VCMP.F32        S4, #0.0
4DECEA:  VMRS            APSR_nzcv, FPSCR
4DECEE:  BEQ             loc_4DED4A
4DECF0:  LDR             R1, [R5,#0x14]
4DECF2:  ADD.W           R2, R1, #0x30 ; '0'
4DECF6:  CMP             R1, #0
4DECF8:  IT EQ
4DECFA:  ADDEQ           R2, R5, #4
4DECFC:  VLDR            S4, [R2]
4DED00:  VLDR            S6, [R2,#4]
4DED04:  VSUB.F32        S0, S0, S4
4DED08:  VLDR            S8, [R2,#8]
4DED0C:  VSUB.F32        S2, S2, S6
4DED10:  VLDR            S4, [R6,#0x1C]
4DED14:  VSUB.F32        S4, S4, S8
4DED18:  VMUL.F32        S0, S0, S0
4DED1C:  VMUL.F32        S2, S2, S2
4DED20:  VMUL.F32        S4, S4, S4
4DED24:  VADD.F32        S0, S0, S2
4DED28:  VLDR            S2, =100.0
4DED2C:  VADD.F32        S0, S0, S4
4DED30:  VCMPE.F32       S0, S2
4DED34:  VMRS            APSR_nzcv, FPSCR
4DED38:  BLE             loc_4DED4A
4DED3A:  MOVS            R2, #0xE6
4DED3C:  B               loc_4DED66
4DED3E:  LDR             R1, [R0,#0x1C]
4DED40:  MOVS            R2, #0xE4
4DED42:  LDR             R0, [R5,#0x18]
4DED44:  MOV.W           R3, #0x41800000
4DED48:  B               loc_4DED70
4DED4A:  LDRB            R1, [R6,#0xA]
4DED4C:  MOVS            R2, #0xE5
4DED4E:  CBNZ            R1, loc_4DED66
4DED50:  LDRSB.W         R1, [R5,#0x71C]
4DED54:  RSB.W           R1, R1, R1,LSL#3
4DED58:  ADD.W           R1, R5, R1,LSL#2
4DED5C:  LDR.W           R1, [R1,#0x5A4]
4DED60:  CMP             R1, #0x27 ; '''
4DED62:  IT NE
4DED64:  MOVNE           R2, #0xE6; unsigned int
4DED66:  LDR             R1, [R0,#0x1C]; int
4DED68:  MOVS            R3, #0
4DED6A:  LDR             R0, [R5,#0x18]; int
4DED6C:  MOVT            R3, #0x447A
4DED70:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4DED74:  LDR             R1, =(_ZN26CTaskSimpleThrowProjectile27FinishAnimThrowProjectileCBEP21CAnimBlendAssociationPv_ptr - 0x4DED7E)
4DED76:  MOV             R2, R6
4DED78:  STR             R0, [R6,#0xC]
4DED7A:  ADD             R1, PC; _ZN26CTaskSimpleThrowProjectile27FinishAnimThrowProjectileCBEP21CAnimBlendAssociationPv_ptr
4DED7C:  LDR             R1, [R1]; CTaskSimpleThrowProjectile::FinishAnimThrowProjectileCB(CAnimBlendAssociation *,void *)
4DED7E:  POP.W           {R11}
4DED82:  POP.W           {R4-R7,LR}
4DED86:  B.W             sub_18C20C
