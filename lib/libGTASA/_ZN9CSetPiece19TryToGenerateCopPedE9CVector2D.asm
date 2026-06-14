; =========================================================
; Game Engine Function: _ZN9CSetPiece19TryToGenerateCopPedE9CVector2D
; Address            : 0x35F470 - 0x35F512
; =========================================================

35F470:  PUSH            {R4,R5,R7,LR}
35F472:  ADD             R7, SP, #8
35F474:  SUB             SP, SP, #0x60
35F476:  MOVS            R0, #0
35F478:  STRD.W          R1, R2, [SP,#0x68+var_14]
35F47C:  MOVT            R0, #0x447A
35F480:  MOVS            R1, #0
35F482:  STR             R0, [SP,#0x68+var_C]
35F484:  ADD             R0, SP, #0x68+var_14; CVector *
35F486:  ADD             R2, SP, #0x68+var_40; int
35F488:  ADD             R3, SP, #0x68+var_44; int
35F48A:  MOVT            R1, #0xC47A; int
35F48E:  MOVS            R4, #0
35F490:  MOVS            R5, #1
35F492:  STRD.W          R5, R4, [SP,#0x68+var_68]; int
35F496:  STRD.W          R4, R4, [SP,#0x68+var_60]; int
35F49A:  STRD.W          R5, R4, [SP,#0x68+var_58]; int
35F49E:  STR             R4, [SP,#0x68+var_50]; int
35F4A0:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
35F4A4:  CMP             R0, #1
35F4A6:  MOV.W           R0, #word_10
35F4AA:  ITTTT EQ
35F4AC:  VLDREQ          S0, =0.9
35F4B0:  VLDREQ          S2, [SP,#0x68+var_38]
35F4B4:  VADDEQ.F32      S0, S2, S0
35F4B8:  VSTREQ          S0, [SP,#0x68+var_C]
35F4BC:  STRD.W          R0, R4, [SP,#0x68+var_68]; __int16 *
35F4C0:  MOVW            R1, #0x999A
35F4C4:  ADD             R0, SP, #0x68+var_14; this
35F4C6:  SUB.W           R3, R7, #-var_46; bool
35F4CA:  MOVT            R1, #0x3F19; CVector *
35F4CE:  MOVS            R2, #0; float
35F4D0:  STRD.W          R4, R5, [SP,#0x68+var_60]; CEntity **
35F4D4:  STRD.W          R5, R4, [SP,#0x68+var_58]; bool
35F4D8:  STR             R4, [SP,#0x68+var_50]; bool
35F4DA:  BLX             j__ZN6CWorld25FindObjectsKindaCollidingERK7CVectorfbPssPP7CEntitybbbbb; CWorld::FindObjectsKindaColliding(CVector const&,float,bool,short *,short,CEntity **,bool,bool,bool,bool,bool)
35F4DE:  LDRH.W          R0, [R7,#var_46]
35F4E2:  CBNZ            R0, loc_35F50C
35F4E4:  MOVW            R0, #(elf_hash_bucket+0x6D0); this
35F4E8:  BLX             j__ZN4CPednwEj; CPed::operator new(uint)
35F4EC:  MOVS            R1, #0
35F4EE:  MOV             R4, R0
35F4F0:  BLX             j__ZN7CCopPedC2E8eCopType; CCopPed::CCopPed(eCopType)
35F4F4:  LDR             R0, [R4,#0x14]
35F4F6:  LDR             R1, [SP,#0x68+var_14]
35F4F8:  STR             R1, [R0,#0x30]
35F4FA:  LDR             R0, [R4,#0x14]
35F4FC:  LDR             R1, [SP,#0x68+var_10]
35F4FE:  STR             R1, [R0,#0x34]
35F500:  LDR             R0, [R4,#0x14]
35F502:  LDR             R1, [SP,#0x68+var_C]; CEntity *
35F504:  STR             R1, [R0,#0x38]
35F506:  MOV             R0, R4; this
35F508:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
35F50C:  MOV             R0, R4
35F50E:  ADD             SP, SP, #0x60 ; '`'
35F510:  POP             {R4,R5,R7,PC}
