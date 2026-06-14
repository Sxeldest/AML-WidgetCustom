; =========================================================
; Game Engine Function: _ZN7CWeapon13LaserScopeDotEP7CVectorPf
; Address            : 0x5E1820 - 0x5E199E
; =========================================================

5E1820:  PUSH            {R4-R7,LR}
5E1822:  ADD             R7, SP, #0xC
5E1824:  PUSH.W          {R8-R11}
5E1828:  SUB             SP, SP, #4
5E182A:  VPUSH           {D8-D11}
5E182E:  SUB             SP, SP, #0xA8
5E1830:  MOVS            R6, #0
5E1832:  MOV             R11, R0
5E1834:  STR             R6, [SP,#0xE8+var_8C]
5E1836:  MOV             R10, R1
5E1838:  LDR.W           R0, [R11]
5E183C:  MOVS            R1, #1
5E183E:  MOV             R8, R2
5E1840:  MOVS            R4, #1
5E1842:  BLX.W           j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
5E1846:  LDR             R1, =(TheCamera_ptr - 0x5E1856)
5E1848:  VMOV.F32        S0, #0.5
5E184C:  ADD             R5, SP, #0xE8+var_50
5E184E:  VLDR            S22, [R0,#8]
5E1852:  ADD             R1, PC; TheCamera_ptr
5E1854:  LDR             R1, [R1]; TheCamera
5E1856:  LDRB.W          R2, [R1,#(byte_951FFF - 0x951FA8)]
5E185A:  ADD.W           R2, R2, R2,LSL#5
5E185E:  ADD.W           R1, R1, R2,LSL#4
5E1862:  VLDR            S4, [R1,#0x2DC]
5E1866:  VLDR            S6, [R1,#0x2E0]
5E186A:  VLDR            S2, [R1,#0x2D8]
5E186E:  VMUL.F32        S4, S4, S0
5E1872:  VMUL.F32        S6, S6, S0
5E1876:  VLDR            S10, [R1,#0x2E8]
5E187A:  VMUL.F32        S0, S2, S0
5E187E:  VLDR            S8, [R1,#0x2E4]
5E1882:  VLDR            S12, [R1,#0x2EC]
5E1886:  LDR.W           R0, [R1,#0x2E0]
5E188A:  VLDR            D16, [R1,#0x2D8]
5E188E:  STR             R0, [SP,#0xE8+var_48]
5E1890:  MOV             R0, R5; this
5E1892:  VADD.F32        S18, S4, S10
5E1896:  VSTR            D16, [SP,#0xE8+var_50]
5E189A:  VADD.F32        S16, S6, S12
5E189E:  VADD.F32        S20, S0, S8
5E18A2:  VSTR            S16, [SP,#0xE8+var_54]
5E18A6:  VSTR            S18, [SP,#0xE8+var_58]
5E18AA:  VSTR            S20, [SP,#0xE8+var_5C]
5E18AE:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5E18B2:  VLDR            S0, [SP,#0xE8+var_50]
5E18B6:  ADD             R0, SP, #0xE8+var_5C
5E18B8:  VLDR            S2, [SP,#0xE8+var_50+4]
5E18BC:  ADD             R2, SP, #0xE8+var_88
5E18BE:  VLDR            S4, [SP,#0xE8+var_48]
5E18C2:  VMUL.F32        S0, S22, S0
5E18C6:  VMUL.F32        S2, S22, S2
5E18CA:  ADD             R3, SP, #0xE8+var_8C
5E18CC:  VMUL.F32        S4, S22, S4
5E18D0:  MOV             R1, R5
5E18D2:  VADD.F32        S0, S20, S0
5E18D6:  VADD.F32        S2, S18, S2
5E18DA:  VADD.F32        S4, S16, S4
5E18DE:  VSTR            S0, [SP,#0xE8+var_50]
5E18E2:  VSTR            S2, [SP,#0xE8+var_50+4]
5E18E6:  VSTR            S4, [SP,#0xE8+var_48]
5E18EA:  STRD.W          R4, R4, [SP,#0xE8+var_E8]
5E18EE:  STRD.W          R4, R4, [SP,#0xE8+var_E0]; unsigned __int8
5E18F2:  STRD.W          R6, R6, [SP,#0xE8+var_D8]; float
5E18F6:  STRD.W          R6, R6, [SP,#0xE8+var_D0]; unsigned __int8
5E18FA:  BLX.W           j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
5E18FE:  CMP             R0, #1
5E1900:  BNE             loc_5E198E
5E1902:  ADD.W           R9, SP, #0xE8+var_88
5E1906:  LDR             R0, [SP,#0xE8+var_80]
5E1908:  VLDR            D16, [SP,#0xE8+var_88]
5E190C:  ADD             R1, SP, #0xE8+var_98
5E190E:  ADD             R2, SP, #0xE8+var_9C
5E1910:  ADD             R3, SP, #0xE8+var_A0
5E1912:  STR             R0, [SP,#0xE8+var_90]
5E1914:  MOV             R0, R9
5E1916:  VSTR            D16, [SP,#0xE8+var_98]
5E191A:  STRD.W          R4, R4, [SP,#0xE8+var_E8]; unsigned __int8
5E191E:  BLX.W           j__ZN7CSprite15CalcScreenCoorsERK5RwV3dPS0_PfS4_bb; CSprite::CalcScreenCoors(RwV3d const&,RwV3d*,float *,float *,bool,bool)
5E1922:  CMP             R0, #1
5E1924:  BNE             loc_5E198C
5E1926:  VMOV.F32        S0, #20.0
5E192A:  ADD             R2, SP, #0xE8+var_98
5E192C:  MOVS            R6, #1
5E192E:  MOVS            R3, #0xFF
5E1930:  LDM             R2, {R0-R2}
5E1932:  STM.W           R10, {R0-R2}
5E1936:  MOVS            R1, #0
5E1938:  MOVS            R0, #0
5E193A:  VLDR            S2, [SP,#0xE8+var_9C]
5E193E:  MOVT            R1, #0x4170
5E1942:  MOV.W           R2, #0x3FC00000
5E1946:  VDIV.F32        S0, S2, S0
5E194A:  VSTR            S0, [R8]
5E194E:  STR             R0, [SP,#0xE8+var_A8]; bool
5E1950:  STRD.W          R0, R6, [SP,#0xE8+var_C8]; unsigned __int8
5E1954:  STRD.W          R0, R0, [SP,#0xE8+var_C0]; float
5E1958:  STRD.W          R2, R0, [SP,#0xE8+var_B8]; float
5E195C:  MOVW            R2, #0x999A
5E1960:  STRD.W          R1, R0, [SP,#0xE8+var_B0]; float
5E1964:  MOVS            R1, #0x42480000
5E196A:  MOVT            R2, #0x3F99
5E196E:  STMEA.W         SP, {R0,R3,R9}
5E1972:  MOVS            R3, #0; unsigned __int8
5E1974:  STRD.W          R2, R1, [SP,#0xE8+var_DC]; CVector *
5E1978:  MOVS            R1, #0; unsigned int
5E197A:  STRD.W          R0, R0, [SP,#0xE8+var_D4]; float
5E197E:  ADD.W           R0, R11, #7; this
5E1982:  MOVS            R2, #dword_80; CEntity *
5E1984:  STR             R6, [SP,#0xE8+var_CC]; unsigned __int8
5E1986:  BLX.W           j__ZN8CCoronas14RegisterCoronaEjP7CEntityhhhhRK7CVectorffhhhhhfbfbfbb; CCoronas::RegisterCorona(uint,CEntity *,uchar,uchar,uchar,uchar,CVector const&,float,float,uchar,uchar,uchar,uchar,uchar,float,bool,float,bool,float,bool,bool)
5E198A:  B               loc_5E198E
5E198C:  MOVS            R6, #0
5E198E:  MOV             R0, R6
5E1990:  ADD             SP, SP, #0xA8
5E1992:  VPOP            {D8-D11}
5E1996:  ADD             SP, SP, #4
5E1998:  POP.W           {R8-R11}
5E199C:  POP             {R4-R7,PC}
