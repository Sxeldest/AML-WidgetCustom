; =========================================================
; Game Engine Function: _ZN15CProjectileInfo20RemoveAllProjectilesEv
; Address            : 0x5DAE5C - 0x5DAF04
; =========================================================

5DAE5C:  PUSH            {R4-R7,LR}
5DAE5E:  ADD             R7, SP, #0xC
5DAE60:  PUSH.W          {R8-R11}
5DAE64:  SUB             SP, SP, #0xC
5DAE66:  LDR             R0, =(_ZN15CProjectileInfo15ms_apProjectileE_ptr - 0x5DAE74)
5DAE68:  MOVS            R4, #0
5DAE6A:  LDR             R1, =(gaProjectileInfo_ptr - 0x5DAE76)
5DAE6C:  MOV.W           R8, #0
5DAE70:  ADD             R0, PC; _ZN15CProjectileInfo15ms_apProjectileE_ptr
5DAE72:  ADD             R1, PC; gaProjectileInfo_ptr
5DAE74:  LDR             R0, [R0]; CProjectileInfo::ms_apProjectile ...
5DAE76:  STR             R0, [SP,#0x28+var_20]
5DAE78:  LDR             R0, =(gaProjectileInfo_ptr - 0x5DAE80)
5DAE7A:  LDR             R6, [R1]; gaProjectileInfo
5DAE7C:  ADD             R0, PC; gaProjectileInfo_ptr
5DAE7E:  LDR.W           R11, [R0]; gaProjectileInfo
5DAE82:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x5DAE88)
5DAE84:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
5DAE86:  LDR.W           R10, [R0]; CPools::ms_pObjectPool ...
5DAE8A:  LDR             R0, =(g_fxMan_ptr - 0x5DAE90)
5DAE8C:  ADD             R0, PC; g_fxMan_ptr
5DAE8E:  LDR             R0, [R0]; g_fxMan
5DAE90:  STR             R0, [SP,#0x28+var_24]
5DAE92:  ADD.W           R0, R8, R8,LSL#3
5DAE96:  ADDS            R1, R6, R0
5DAE98:  LDRB            R2, [R1,#0x10]
5DAE9A:  CBZ             R2, loc_5DAEF2
5DAE9C:  LDR             R2, [SP,#0x28+var_20]
5DAE9E:  ADD.W           R9, R11, R0
5DAEA2:  STRB            R4, [R1,#0x10]
5DAEA4:  MOVS            R4, #0
5DAEA6:  LDR.W           R1, [R9,#0x20]; FxSystem_c *
5DAEAA:  LDR.W           R5, [R2,R8]
5DAEAE:  CBZ             R1, loc_5DAEBA
5DAEB0:  LDR             R0, [SP,#0x28+var_24]; this
5DAEB2:  BLX.W           j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
5DAEB6:  STR.W           R4, [R9,#0x20]
5DAEBA:  LDR.W           R0, [R10]; CPools::ms_pObjectPool
5DAEBE:  MOV             R2, #0xD8FD8FD9
5DAEC6:  LDRD.W          R1, R0, [R0]
5DAECA:  SUBS            R1, R5, R1
5DAECC:  ASRS            R1, R1, #2
5DAECE:  MULS            R1, R2
5DAED0:  LDRB            R0, [R0,R1]
5DAED2:  ORR.W           R1, R0, R1,LSL#8
5DAED6:  MOVS            R0, #3
5DAED8:  BLX.W           j__ZN6CRadar18ClearBlipForEntityE9eBlipTypei; CRadar::ClearBlipForEntity(eBlipType,int)
5DAEDC:  MOV             R0, R5; this
5DAEDE:  BLX.W           j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
5DAEE2:  CMP             R5, #0
5DAEE4:  MOV.W           R4, #0
5DAEE8:  BEQ             loc_5DAEF2
5DAEEA:  LDR             R0, [R5]
5DAEEC:  LDR             R1, [R0,#4]
5DAEEE:  MOV             R0, R5
5DAEF0:  BLX             R1
5DAEF2:  ADD.W           R8, R8, #4
5DAEF6:  CMP.W           R8, #0x80
5DAEFA:  BNE             loc_5DAE92
5DAEFC:  ADD             SP, SP, #0xC
5DAEFE:  POP.W           {R8-R11}
5DAF02:  POP             {R4-R7,PC}
