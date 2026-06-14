; =========================================================
; Game Engine Function: _ZN20CPedGeometryAnalyser24ComputeBuildingHitPointsERK7CVectorS2_
; Address            : 0x4B1960 - 0x4B198E
; =========================================================

4B1960:  PUSH            {R7,LR}
4B1962:  MOV             R7, SP
4B1964:  SUB             SP, SP, #0x50
4B1966:  MOVS            R2, #0
4B1968:  MOVS            R3, #1
4B196A:  STRD.W          R3, R2, [SP,#0x58+var_58]
4B196E:  STRD.W          R2, R2, [SP,#0x58+var_50]
4B1972:  STRD.W          R3, R2, [SP,#0x58+var_48]
4B1976:  ADD             R3, SP, #0x58+var_38
4B1978:  STRD.W          R2, R2, [SP,#0x58+var_40]
4B197C:  ADD             R2, SP, #0x58+var_34
4B197E:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
4B1982:  LDR             R0, =(_ZN6CWorld27ms_iProcessLineNumCrossingsE_ptr - 0x4B1988)
4B1984:  ADD             R0, PC; _ZN6CWorld27ms_iProcessLineNumCrossingsE_ptr
4B1986:  LDR             R0, [R0]; CWorld::ms_iProcessLineNumCrossings ...
4B1988:  LDR             R0, [R0]; CWorld::ms_iProcessLineNumCrossings
4B198A:  ADD             SP, SP, #0x50 ; 'P'
4B198C:  POP             {R7,PC}
