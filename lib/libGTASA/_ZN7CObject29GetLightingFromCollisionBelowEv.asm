; =========================================================
; Game Engine Function: _ZN7CObject29GetLightingFromCollisionBelowEv
; Address            : 0x454C60 - 0x454CA6
; =========================================================

454C60:  PUSH            {R4,R6,R7,LR}
454C62:  ADD             R7, SP, #8
454C64:  SUB             SP, SP, #0x50
454C66:  MOV             R4, R0
454C68:  MOVS            R0, #0
454C6A:  LDR             R1, [R4,#0x14]
454C6C:  MOVS            R2, #1
454C6E:  STRD.W          R2, R0, [SP,#0x58+var_58]; int
454C72:  ADD             R3, SP, #0x58+var_38; int
454C74:  STRD.W          R0, R0, [SP,#0x58+var_50]; int
454C78:  CMP             R1, #0
454C7A:  STRD.W          R2, R0, [SP,#0x58+var_48]; int
454C7E:  ADD             R2, SP, #0x58+var_34; int
454C80:  STR             R0, [SP,#0x58+var_40]; int
454C82:  ADD.W           R0, R1, #0x30 ; '0'
454C86:  MOVW            R1, #0
454C8A:  IT EQ
454C8C:  ADDEQ           R0, R4, #4; CVector *
454C8E:  MOVT            R1, #0xC47A; int
454C92:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
454C96:  CMP             R0, #1
454C98:  ITT EQ
454C9A:  LDRBEQ.W        R0, [SP,#0x58+var_F]
454C9E:  STRBEQ.W        R0, [R4,#0x14D]
454CA2:  ADD             SP, SP, #0x50 ; 'P'
454CA4:  POP             {R4,R6,R7,PC}
