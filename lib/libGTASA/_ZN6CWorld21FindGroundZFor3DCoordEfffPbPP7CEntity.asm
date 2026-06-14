; =========================================================
; Game Engine Function: _ZN6CWorld21FindGroundZFor3DCoordEfffPbPP7CEntity
; Address            : 0x42A7C0 - 0x42A824
; =========================================================

42A7C0:  PUSH            {R4,R6,R7,LR}
42A7C2:  ADD             R7, SP, #8
42A7C4:  SUB             SP, SP, #0x58
42A7C6:  MOV             R4, R3
42A7C8:  ADD             R3, SP, #0x60+var_14
42A7CA:  STM             R3!, {R0-R2}
42A7CC:  MOVS            R0, #0
42A7CE:  MOVS            R1, #1
42A7D0:  STRD.W          R1, R0, [SP,#0x60+var_60]; int
42A7D4:  MOVS            R1, #0
42A7D6:  STRD.W          R0, R0, [SP,#0x60+var_58]; int
42A7DA:  ADD             R2, SP, #0x60+var_40; int
42A7DC:  STRD.W          R0, R0, [SP,#0x60+var_50]; int
42A7E0:  ADD             R3, SP, #0x60+var_44; int
42A7E2:  STR             R0, [SP,#0x60+var_48]; int
42A7E4:  ADD             R0, SP, #0x60+var_14; CVector *
42A7E6:  MOVT            R1, #0xC47A; int
42A7EA:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
42A7EE:  LDR             R1, [R7,#arg_0]
42A7F0:  CBZ             R0, loc_42A808
42A7F2:  CMP             R4, #0
42A7F4:  ITT NE
42A7F6:  MOVNE           R0, #1
42A7F8:  STRBNE          R0, [R4]
42A7FA:  CMP             R1, #0
42A7FC:  ITT NE
42A7FE:  LDRNE           R0, [SP,#0x60+var_44]
42A800:  STRNE           R0, [R1]
42A802:  VLDR            S0, [SP,#0x60+var_38]
42A806:  B               loc_42A81C
42A808:  CMP             R4, #0
42A80A:  VLDR            S0, =0.0
42A80E:  ITT NE
42A810:  MOVNE           R0, #0
42A812:  STRBNE          R0, [R4]
42A814:  CMP             R1, #0
42A816:  ITT NE
42A818:  MOVNE           R0, #0
42A81A:  STRNE           R0, [R1]
42A81C:  VMOV            R0, S0
42A820:  ADD             SP, SP, #0x58 ; 'X'
42A822:  POP             {R4,R6,R7,PC}
