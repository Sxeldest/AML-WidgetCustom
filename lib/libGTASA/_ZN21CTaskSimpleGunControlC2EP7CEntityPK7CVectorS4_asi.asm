; =========================================================
; Game Engine Function: _ZN21CTaskSimpleGunControlC2EP7CEntityPK7CVectorS4_asi
; Address            : 0x4DDF64 - 0x4DDFFA
; =========================================================

4DDF64:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleGunControl::CTaskSimpleGunControl(CEntity *, CVector const*, CVector const*, signed char, short, int)'
4DDF66:  ADD             R7, SP, #0xC
4DDF68:  PUSH.W          {R8,R9,R11}
4DDF6C:  MOV             R8, R3
4DDF6E:  MOV             R9, R2
4DDF70:  MOV             R5, R1
4DDF72:  MOV             R4, R0
4DDF74:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4DDF78:  LDR             R0, =(_ZTV21CTaskSimpleGunControl_ptr - 0x4DDF88)
4DDF7A:  VMOV.I32        Q8, #0
4DDF7E:  ADD.W           R6, R4, #0x10
4DDF82:  MOVS            R1, #0
4DDF84:  ADD             R0, PC; _ZTV21CTaskSimpleGunControl_ptr
4DDF86:  STRB            R1, [R4,#8]
4DDF88:  STR             R1, [R4,#0x24]
4DDF8A:  CMP             R5, #0
4DDF8C:  LDR             R0, [R0]; `vtable for'CTaskSimpleGunControl ...
4DDF8E:  VST1.32         {D16-D17}, [R6]
4DDF92:  ADD.W           R0, R0, #8
4DDF96:  STR             R1, [R4,#0x20]
4DDF98:  MOV             R1, R4
4DDF9A:  STR             R0, [R4]
4DDF9C:  STR.W           R5, [R1,#0xC]!; CEntity **
4DDFA0:  ITT NE
4DDFA2:  MOVNE           R0, R5; this
4DDFA4:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4DDFA8:  CMP.W           R9, #0
4DDFAC:  ITTTT NE
4DDFAE:  VLDRNE          D16, [R9]
4DDFB2:  LDRNE.W         R0, [R9,#8]
4DDFB6:  STRNE           R0, [R6,#8]
4DDFB8:  VSTRNE          D16, [R6]
4DDFBC:  CMP.W           R8, #0
4DDFC0:  LDRD.W          R1, R2, [R7,#arg_0]
4DDFC4:  ITTTT NE
4DDFC6:  ADDNE.W         R3, R4, #0x1C
4DDFCA:  VLDRNE          D16, [R8]
4DDFCE:  LDRNE.W         R6, [R8,#8]
4DDFD2:  STRNE           R6, [R3,#8]
4DDFD4:  LDR             R0, [R7,#arg_8]
4DDFD6:  IT NE
4DDFD8:  VSTRNE          D16, [R3]
4DDFDC:  STRH            R2, [R4,#0x2C]
4DDFDE:  STRB.W          R1, [R4,#0x2E]
4DDFE2:  MOV.W           R1, #0x3F800000
4DDFE6:  MOVS            R2, #0
4DDFE8:  STRD.W          R1, R2, [R4,#0x30]
4DDFEC:  STR             R0, [R4,#0x28]
4DDFEE:  MOVS            R0, #1
4DDFF0:  STRH            R0, [R4,#0x38]
4DDFF2:  MOV             R0, R4
4DDFF4:  POP.W           {R8,R9,R11}
4DDFF8:  POP             {R4-R7,PC}
