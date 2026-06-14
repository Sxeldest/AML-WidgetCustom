; =========================================================
; Game Engine Function: _ZN6CWorld19FindRoofZFor3DCoordEfffPb
; Address            : 0x42A828 - 0x42A87A
; =========================================================

42A828:  PUSH            {R4,R6,R7,LR}
42A82A:  ADD             R7, SP, #8
42A82C:  SUB             SP, SP, #0x58
42A82E:  MOV             R4, R3
42A830:  ADD             R3, SP, #0x60+var_14
42A832:  STM             R3!, {R0-R2}
42A834:  MOVS            R0, #0
42A836:  MOVS            R1, #1
42A838:  STRD.W          R1, R0, [SP,#0x60+var_60]; int
42A83C:  ADD             R2, SP, #0x60+var_40; int
42A83E:  STRD.W          R0, R0, [SP,#0x60+var_58]; int
42A842:  ADD             R3, SP, #0x60+var_44; int
42A844:  STRD.W          R1, R0, [SP,#0x60+var_50]; int
42A848:  MOVS            R1, #0
42A84A:  STR             R0, [SP,#0x60+var_48]; int
42A84C:  ADD             R0, SP, #0x60+var_14; CVector *
42A84E:  MOVT            R1, #0x447A; int
42A852:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
42A856:  CBZ             R0, loc_42A866
42A858:  CMP             R4, #0
42A85A:  ITT NE
42A85C:  MOVNE           R0, #1
42A85E:  STRBNE          R0, [R4]
42A860:  VLDR            S0, [SP,#0x60+var_38]
42A864:  B               loc_42A872
42A866:  CMP             R4, #0
42A868:  VMOV.F32        S0, #20.0
42A86C:  ITT NE
42A86E:  MOVNE           R0, #0
42A870:  STRBNE          R0, [R4]
42A872:  VMOV            R0, S0
42A876:  ADD             SP, SP, #0x58 ; 'X'
42A878:  POP             {R4,R6,R7,PC}
