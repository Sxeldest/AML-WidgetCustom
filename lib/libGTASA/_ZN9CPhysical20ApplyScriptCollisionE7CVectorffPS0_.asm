; =========================================================
; Game Engine Function: _ZN9CPhysical20ApplyScriptCollisionE7CVectorffPS0_
; Address            : 0x406BF4 - 0x406CC2
; =========================================================

406BF4:  PUSH            {R4-R7,LR}
406BF6:  ADD             R7, SP, #0xC
406BF8:  PUSH.W          {R8,R9,R11}
406BFC:  VPUSH           {D8-D12}
406C00:  SUB             SP, SP, #0x30
406C02:  MOV             R4, R0
406C04:  MOVS            R0, #0
406C06:  STR             R0, [SP,#0x70+var_44]
406C08:  MOV             R6, R3
406C0A:  LDR.W           R9, [R4,#0xA0]
406C0E:  MOV             R5, R2
406C10:  LDR             R0, [R7,#arg_8]
406C12:  MOV             R8, R1
406C14:  VLDR            S16, [R7,#arg_4]
406C18:  VLDR            S18, [R7,#arg_0]
406C1C:  CMP             R0, #0
406C1E:  STR             R6, [SP,#0x70+var_58]
406C20:  STRD.W          R8, R5, [SP,#0x70+var_60]
406C24:  BEQ             loc_406C34
406C26:  VLDR            S0, [R0]
406C2A:  VLDR            S2, [R0,#4]
406C2E:  VLDR            S4, [R0,#8]
406C32:  B               loc_406C7A
406C34:  LDR             R0, [R4,#0x14]
406C36:  ADD.W           R1, R0, #0x30 ; '0'
406C3A:  CMP             R0, #0
406C3C:  IT EQ
406C3E:  ADDEQ           R1, R4, #4
406C40:  MOV             R0, R4; this
406C42:  VLDR            S20, [R1]
406C46:  VLDR            S22, [R1,#4]
406C4A:  VLDR            S24, [R1,#8]
406C4E:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
406C52:  VMOV            S0, R5
406C56:  VLDR            S4, [R0,#0x24]
406C5A:  VMOV            S2, R6
406C5E:  VMOV            S6, R8
406C62:  VMUL.F32        S2, S4, S2
406C66:  VMUL.F32        S0, S4, S0
406C6A:  VMUL.F32        S6, S4, S6
406C6E:  VSUB.F32        S4, S24, S2
406C72:  VSUB.F32        S2, S22, S0
406C76:  VSUB.F32        S0, S20, S6
406C7A:  ADD             R3, SP, #0x70+var_44
406C7C:  MOV             R2, SP
406C7E:  MOV             R0, R4
406C80:  MOV             R1, R4
406C82:  VSTR            S4, [SP,#0x70+var_68]
406C86:  VSTR            S2, [SP,#0x70+var_6C]
406C8A:  VSTR            S0, [SP,#0x70+var_70]
406C8E:  VSTR            S18, [R4,#0xA0]
406C92:  BLX             j__ZN9CPhysical14ApplyCollisionEP7CEntityR9CColPointRf; CPhysical::ApplyCollision(CEntity *,CColPoint &,float &)
406C96:  VCMPE.F32       S16, #0.0
406C9A:  VMRS            APSR_nzcv, FPSCR
406C9E:  BLE             loc_406CB0
406CA0:  CMP             R0, #1
406CA2:  BNE             loc_406CB0
406CA4:  VMOV            R1, S16
406CA8:  MOV             R2, SP
406CAA:  MOV             R0, R4
406CAC:  BLX             j__ZN9CPhysical13ApplyFrictionEfR9CColPoint; CPhysical::ApplyFriction(float,CColPoint &)
406CB0:  STR.W           R9, [R4,#0xA0]
406CB4:  LDR             R0, [SP,#0x70+var_44]
406CB6:  ADD             SP, SP, #0x30 ; '0'
406CB8:  VPOP            {D8-D12}
406CBC:  POP.W           {R8,R9,R11}
406CC0:  POP             {R4-R7,PC}
