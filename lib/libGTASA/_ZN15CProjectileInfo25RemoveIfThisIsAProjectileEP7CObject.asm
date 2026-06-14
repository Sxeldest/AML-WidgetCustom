; =========================================================
; Game Engine Function: _ZN15CProjectileInfo25RemoveIfThisIsAProjectileEP7CObject
; Address            : 0x5DAF18 - 0x5DAFBE
; =========================================================

5DAF18:  PUSH            {R4-R7,LR}
5DAF1A:  ADD             R7, SP, #0xC
5DAF1C:  PUSH.W          {R11}
5DAF20:  LDR             R1, =(gaProjectileInfo_ptr - 0x5DAF28)
5DAF22:  MOVS            R4, #0
5DAF24:  ADD             R1, PC; gaProjectileInfo_ptr
5DAF26:  LDR             R1, [R1]; gaProjectileInfo
5DAF28:  ADD.W           R5, R1, #0x10
5DAF2C:  LDR             R1, =(_ZN15CProjectileInfo15ms_apProjectileE_ptr - 0x5DAF32)
5DAF2E:  ADD             R1, PC; _ZN15CProjectileInfo15ms_apProjectileE_ptr
5DAF30:  LDR             R2, [R1]; CProjectileInfo::ms_apProjectile ...
5DAF32:  LDR.W           R1, [R2,R4,LSL#2]
5DAF36:  CMP             R1, R0
5DAF38:  BNE             loc_5DAF3E
5DAF3A:  LDRB            R3, [R5]
5DAF3C:  CBNZ            R3, loc_5DAF50
5DAF3E:  ADDS            R1, R4, #1
5DAF40:  ADDS            R5, #0x24 ; '$'
5DAF42:  CMP             R4, #0x1F
5DAF44:  MOV             R4, R1
5DAF46:  BLT             loc_5DAF32
5DAF48:  MOVS            R0, #0
5DAF4A:  POP.W           {R11}
5DAF4E:  POP             {R4-R7,PC}
5DAF50:  MOVS            R6, #0
5DAF52:  STRB            R6, [R5]
5DAF54:  LDR             R0, [R5,#0x10]; this
5DAF56:  CBZ             R0, loc_5DAF68
5DAF58:  BLX.W           j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
5DAF5C:  LDR             R0, =(_ZN15CProjectileInfo15ms_apProjectileE_ptr - 0x5DAF64)
5DAF5E:  STR             R6, [R5,#0x10]
5DAF60:  ADD             R0, PC; _ZN15CProjectileInfo15ms_apProjectileE_ptr
5DAF62:  LDR             R0, [R0]; CProjectileInfo::ms_apProjectile ...
5DAF64:  LDR.W           R1, [R0,R4,LSL#2]
5DAF68:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x5DAF6E)
5DAF6A:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
5DAF6C:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
5DAF6E:  LDR             R0, [R0]; CPools::ms_pObjectPool
5DAF70:  LDRD.W          R2, R0, [R0]
5DAF74:  SUBS            R1, R1, R2
5DAF76:  MOV             R2, #0xD8FD8FD9
5DAF7E:  ASRS            R1, R1, #2
5DAF80:  MULS            R1, R2
5DAF82:  LDRB            R0, [R0,R1]
5DAF84:  ORR.W           R1, R0, R1,LSL#8
5DAF88:  MOVS            R0, #3
5DAF8A:  BLX.W           j__ZN6CRadar18ClearBlipForEntityE9eBlipTypei; CRadar::ClearBlipForEntity(eBlipType,int)
5DAF8E:  LDR             R0, =(_ZN15CProjectileInfo15ms_apProjectileE_ptr - 0x5DAF94)
5DAF90:  ADD             R0, PC; _ZN15CProjectileInfo15ms_apProjectileE_ptr
5DAF92:  LDR             R5, [R0]; CProjectileInfo::ms_apProjectile ...
5DAF94:  LDR.W           R0, [R5,R4,LSL#2]; this
5DAF98:  BLX.W           j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
5DAF9C:  LDR.W           R0, [R5,R4,LSL#2]
5DAFA0:  CMP             R0, #0
5DAFA2:  ITTT NE
5DAFA4:  LDRNE           R1, [R0]
5DAFA6:  LDRNE           R1, [R1,#4]
5DAFA8:  BLXNE           R1
5DAFAA:  LDR             R0, =(_ZN15CProjectileInfo15ms_apProjectileE_ptr - 0x5DAFB2)
5DAFAC:  MOVS            R1, #0
5DAFAE:  ADD             R0, PC; _ZN15CProjectileInfo15ms_apProjectileE_ptr
5DAFB0:  LDR             R0, [R0]; CProjectileInfo::ms_apProjectile ...
5DAFB2:  STR.W           R1, [R0,R4,LSL#2]
5DAFB6:  MOVS            R0, #1
5DAFB8:  POP.W           {R11}
5DAFBC:  POP             {R4-R7,PC}
