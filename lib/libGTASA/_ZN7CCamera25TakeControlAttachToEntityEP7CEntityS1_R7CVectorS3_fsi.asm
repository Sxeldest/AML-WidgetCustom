; =========================================================
; Game Engine Function: _ZN7CCamera25TakeControlAttachToEntityEP7CEntityS1_R7CVectorS3_fsi
; Address            : 0x3E17E8 - 0x3E1992
; =========================================================

3E17E8:  PUSH            {R4-R7,LR}
3E17EA:  ADD             R7, SP, #0xC
3E17EC:  PUSH.W          {R8-R10}
3E17F0:  VPUSH           {D8}
3E17F4:  MOV             R4, R0
3E17F6:  LDRD.W          R10, R0, [R7,#arg_8]
3E17FA:  LDR             R5, [R7,#arg_0]
3E17FC:  CMP             R0, #2
3E17FE:  MOV             R6, R1
3E1800:  VLDR            S16, [R7,#arg_4]
3E1804:  ITT EQ
3E1806:  LDREQ.W         R1, [R4,#0xAC]
3E180A:  CMPEQ           R1, #1
3E180C:  MOV             R9, R3
3E180E:  MOV             R8, R2
3E1810:  BEQ.W           loc_3E1942
3E1814:  CMP.W           R8, #0
3E1818:  STR.W           R0, [R4,#0xAC]
3E181C:  BEQ             loc_3E1846
3E181E:  CBZ             R6, loc_3E1866
3E1820:  LDR.W           R0, [R4,#0x8DC]; this
3E1824:  ADDW            R5, R4, #0x8DC
3E1828:  CMP             R0, #0
3E182A:  ITT NE
3E182C:  MOVNE           R1, R5; CEntity **
3E182E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3E1832:  MOV             R0, R6; this
3E1834:  MOV             R1, R5; CEntity **
3E1836:  STR.W           R6, [R4,#0x8DC]
3E183A:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3E183E:  MOVS            R0, #0
3E1840:  STRB.W          R0, [R4,#0x2A]
3E1844:  B               loc_3E18B4
3E1846:  MOV.W           R0, #0xFFFFFFFF; int
3E184A:  MOVS            R1, #0; bool
3E184C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3E1850:  CMP             R0, #0
3E1852:  BEQ.W           loc_3E1960
3E1856:  MOV.W           R0, #0xFFFFFFFF; int
3E185A:  MOVS            R1, #0; bool
3E185C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3E1860:  MOV             R8, R0
3E1862:  CMP             R6, #0
3E1864:  BNE             loc_3E1820
3E1866:  MOVS            R0, #1
3E1868:  STRB.W          R0, [R4,#0x2A]
3E186C:  VLDR            S0, [R9]
3E1870:  VLDR            S2, [R5]
3E1874:  VCMP.F32        S2, S0
3E1878:  VMRS            APSR_nzcv, FPSCR
3E187C:  BNE             loc_3E18A2
3E187E:  VLDR            S0, [R9,#4]
3E1882:  VLDR            S2, [R5,#4]
3E1886:  VCMP.F32        S2, S0
3E188A:  VMRS            APSR_nzcv, FPSCR
3E188E:  BNE             loc_3E18A2
3E1890:  VLDR            S0, [R9,#8]
3E1894:  VLDR            S2, [R5,#8]
3E1898:  VCMP.F32        S2, S0
3E189C:  VMRS            APSR_nzcv, FPSCR
3E18A0:  BEQ             loc_3E1982
3E18A2:  LDR             R0, [R5,#8]
3E18A4:  VLDR            D16, [R5]
3E18A8:  STR.W           R0, [R4,#0x8D0]
3E18AC:  ADDW            R0, R4, #0x8C8
3E18B0:  VSTR            D16, [R0]
3E18B4:  VLDR            S0, [R9]
3E18B8:  VCMP.F32        S0, #0.0
3E18BC:  VMRS            APSR_nzcv, FPSCR
3E18C0:  ITTT EQ
3E18C2:  VLDREQ          S0, [R9,#4]
3E18C6:  VCMPEQ.F32      S0, #0.0
3E18CA:  VMRSEQ          APSR_nzcv, FPSCR
3E18CE:  BNE             loc_3E18DE
3E18D0:  VLDR            S0, [R9,#8]
3E18D4:  VCMP.F32        S0, #0.0
3E18D8:  VMRS            APSR_nzcv, FPSCR
3E18DC:  BEQ             loc_3E194C
3E18DE:  LDR.W           R0, [R9,#8]
3E18E2:  VLDR            D16, [R9]
3E18E6:  STR.W           R0, [R4,#0x8C4]
3E18EA:  ADDW            R0, R4, #0x8BC
3E18EE:  VSTR            D16, [R0]
3E18F2:  LDR.W           R0, [R4,#0x8E0]; this
3E18F6:  ADDW            R1, R4, #0x8D4
3E18FA:  ADD.W           R5, R4, #0x8E0
3E18FE:  CMP             R0, #0
3E1900:  VSTR            S16, [R1]
3E1904:  ITT NE
3E1906:  MOVNE           R1, R5; CEntity **
3E1908:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3E190C:  MOV             R0, R8; this
3E190E:  MOV             R1, R5; CEntity **
3E1910:  STR.W           R8, [R4,#0x8E0]
3E1914:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3E1918:  MOVS            R0, #0x2F ; '/'
3E191A:  STRH.W          R10, [R4,#0xBC4]
3E191E:  STRH.W          R0, [R4,#0xBC0]
3E1922:  MOVS            R0, #0
3E1924:  STRB.W          R0, [R4,#0x29]
3E1928:  MOVS            R0, #1
3E192A:  STRB.W          R0, [R4,#0x30]
3E192E:  MOV.W           R0, #0xFFFFFFFF; int
3E1932:  VPOP            {D8}
3E1936:  POP.W           {R8-R10}
3E193A:  POP.W           {R4-R7,LR}
3E193E:  B.W             j_j__Z13FindPlayerPedi; j_FindPlayerPed(int)
3E1942:  VPOP            {D8}
3E1946:  POP.W           {R8-R10}
3E194A:  POP             {R4-R7,PC}
3E194C:  MOVS            R0, #0
3E194E:  MOV.W           R1, #0x40000000
3E1952:  STR.W           R0, [R4,#0x8BC]
3E1956:  STR.W           R0, [R4,#0x8C0]
3E195A:  STR.W           R1, [R4,#0x8C4]
3E195E:  B               loc_3E18F2
3E1960:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3E196C)
3E1962:  MOV.W           R2, #0x194
3E1966:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x3E196E)
3E1968:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
3E196A:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3E196C:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
3E196E:  LDR             R1, [R1]; CWorld::Players ...
3E1970:  LDR             R0, [R0]; CWorld::PlayerInFocus
3E1972:  SMULBB.W        R0, R0, R2
3E1976:  LDR.W           R8, [R1,R0]
3E197A:  CMP             R6, #0
3E197C:  BNE.W           loc_3E1820
3E1980:  B               loc_3E1866
3E1982:  MOVS            R0, #0
3E1984:  STR.W           R0, [R4,#0x8C8]
3E1988:  STR.W           R0, [R4,#0x8CC]
3E198C:  STR.W           R0, [R4,#0x8D0]
3E1990:  B               loc_3E18B4
