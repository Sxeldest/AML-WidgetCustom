; =========================================================
; Game Engine Function: _ZN6CWorld19FindGroundZForCoordEff
; Address            : 0x42A774 - 0x42A7C0
; =========================================================

42A774:  PUSH            {R7,LR}
42A776:  MOV             R7, SP
42A778:  SUB             SP, SP, #0x58
42A77A:  STRD.W          R0, R1, [SP,#0x60+var_14]
42A77E:  MOVS            R0, #0x447A0000
42A784:  MOVS            R1, #1
42A786:  STR             R0, [SP,#0x60+var_C]
42A788:  MOVS            R0, #0
42A78A:  STRD.W          R1, R0, [SP,#0x60+var_60]; int
42A78E:  ADD             R2, SP, #0x60+var_40; int
42A790:  STRD.W          R0, R0, [SP,#0x60+var_58]; int
42A794:  ADD             R3, SP, #0x60+var_44; int
42A796:  STRD.W          R1, R0, [SP,#0x60+var_50]; int
42A79A:  MOVS            R1, #0
42A79C:  STR             R0, [SP,#0x60+var_48]; int
42A79E:  ADD             R0, SP, #0x60+var_14; CVector *
42A7A0:  MOVT            R1, #0xC47A; int
42A7A4:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
42A7A8:  VLDR            S2, [SP,#0x60+var_38]
42A7AC:  VMOV.F32        S0, #20.0
42A7B0:  CMP             R0, #0
42A7B2:  IT NE
42A7B4:  VMOVNE.F32      S0, S2
42A7B8:  VMOV            R0, S0
42A7BC:  ADD             SP, SP, #0x58 ; 'X'
42A7BE:  POP             {R7,PC}
