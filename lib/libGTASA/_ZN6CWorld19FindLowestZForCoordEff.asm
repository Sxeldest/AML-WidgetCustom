; =========================================================
; Game Engine Function: _ZN6CWorld19FindLowestZForCoordEff
; Address            : 0x42A87A - 0x42A8C6
; =========================================================

42A87A:  PUSH            {R7,LR}
42A87C:  MOV             R7, SP
42A87E:  SUB             SP, SP, #0x58
42A880:  STRD.W          R0, R1, [SP,#0x60+var_14]
42A884:  MOVS            R0, #0xC47A0000
42A88A:  MOVS            R1, #1
42A88C:  STR             R0, [SP,#0x60+var_C]
42A88E:  MOVS            R0, #0
42A890:  STRD.W          R1, R0, [SP,#0x60+var_60]; int
42A894:  ADD             R2, SP, #0x60+var_40; int
42A896:  STRD.W          R0, R0, [SP,#0x60+var_58]; int
42A89A:  ADD             R3, SP, #0x60+var_44; int
42A89C:  STRD.W          R1, R0, [SP,#0x60+var_50]; int
42A8A0:  MOVS            R1, #0
42A8A2:  STR             R0, [SP,#0x60+var_48]; int
42A8A4:  ADD             R0, SP, #0x60+var_14; CVector *
42A8A6:  MOVT            R1, #0x447A; int
42A8AA:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
42A8AE:  VLDR            S2, [SP,#0x60+var_38]
42A8B2:  VMOV.F32        S0, #20.0
42A8B6:  CMP             R0, #0
42A8B8:  IT NE
42A8BA:  VMOVNE.F32      S0, S2
42A8BE:  VMOV            R0, S0
42A8C2:  ADD             SP, SP, #0x58 ; 'X'
42A8C4:  POP             {R7,PC}
