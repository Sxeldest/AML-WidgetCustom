; =========================================================
; Game Engine Function: _ZN12CFireManager8ShutdownEv
; Address            : 0x3F11B2 - 0x3F1234
; =========================================================

3F11B2:  PUSH            {R4-R7,LR}
3F11B4:  ADD             R7, SP, #0xC
3F11B6:  PUSH.W          {R8}
3F11BA:  MOV             R4, R0
3F11BC:  MOV.W           R8, #0
3F11C0:  MOVS            R6, #0
3F11C2:  LDRB            R0, [R4,R6]
3F11C4:  TST.W           R0, #1
3F11C8:  AND.W           R1, R0, #0xFD
3F11CC:  STRB            R1, [R4,R6]
3F11CE:  BEQ             loc_3F1226
3F11D0:  AND.W           R0, R0, #0xE4
3F11D4:  ADDS            R5, R4, R6
3F11D6:  ORR.W           R0, R0, #0x10
3F11DA:  STRB            R0, [R4,R6]
3F11DC:  LDR             R0, [R5,#0x24]; this
3F11DE:  STR.W           R8, [R5,#0x18]
3F11E2:  CBZ             R0, loc_3F11EC
3F11E4:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
3F11E8:  STR.W           R8, [R5,#0x24]
3F11EC:  MOV             R1, R5
3F11EE:  LDR.W           R0, [R1,#0x10]!; CEntity **
3F11F2:  CBZ             R0, loc_3F1226
3F11F4:  LDRB.W          R2, [R0,#0x3A]
3F11F8:  AND.W           R2, R2, #7
3F11FC:  CMP             R2, #2
3F11FE:  BEQ             loc_3F120A
3F1200:  CMP             R2, #3
3F1202:  BNE             loc_3F121E
3F1204:  ADD.W           R0, R0, #0x738
3F1208:  B               loc_3F120E
3F120A:  ADDW            R0, R0, #0x494
3F120E:  STR.W           R8, [R0]
3F1212:  LDR             R0, [R5,#0x10]; this
3F1214:  CMP             R0, #0
3F1216:  IT NE
3F1218:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3F121C:  B               loc_3F1222
3F121E:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3F1222:  STR.W           R8, [R5,#0x10]
3F1226:  ADDS            R6, #0x28 ; '('
3F1228:  CMP.W           R6, #0x960
3F122C:  BNE             loc_3F11C2
3F122E:  POP.W           {R8}
3F1232:  POP             {R4-R7,PC}
