; =========================================================
; Game Engine Function: _ZN8CCarCtrl28SwitchBetweenPhysicsAndGhostEP8CVehicle
; Address            : 0x2F18FC - 0x2F19D2
; =========================================================

2F18FC:  PUSH            {R4,R6,R7,LR}
2F18FE:  ADD             R7, SP, #8
2F1900:  MOV             R4, R0
2F1902:  LDRB.W          R0, [R4,#0x45]
2F1906:  LSLS            R0, R0, #0x19
2F1908:  BPL             locret_2F19C6
2F190A:  LDRB.W          R0, [R4,#0x4A8]
2F190E:  CMP             R0, #2
2F1910:  BNE             locret_2F19C6
2F1912:  LDR.W           R0, [R4,#0x5A4]
2F1916:  SUBS            R0, #3
2F1918:  CMP             R0, #3
2F191A:  BCC             locret_2F19C6
2F191C:  LDRB.W          R0, [R4,#0x3A]
2F1920:  MOVS            R1, #0xC
2F1922:  CMP.W           R1, R0,LSR#3
2F1926:  BEQ             loc_2F198A
2F1928:  LSRS            R0, R0, #3
2F192A:  CMP             R0, #3
2F192C:  BNE             locret_2F19C6
2F192E:  LDR             R1, [R4,#0x14]
2F1930:  ADD.W           R0, R1, #0x30 ; '0'
2F1934:  CMP             R1, #0
2F1936:  IT EQ
2F1938:  ADDEQ           R0, R4, #4; this
2F193A:  MOVS            R1, #0; CVector *
2F193C:  BLX             j__ZN9CColStore18HasCollisionLoadedERK7CVectori; CColStore::HasCollisionLoaded(CVector const&,int)
2F1940:  CMP             R0, #0
2F1942:  BNE             locret_2F19C6
2F1944:  LDR.W           R2, [R4,#0x5A4]
2F1948:  MOVS            R1, #0xC
2F194A:  LDRB.W          R0, [R4,#0x3A]
2F194E:  CMP             R2, #0
2F1950:  BFI.W           R0, R1, #3, #0x1D
2F1954:  STRB.W          R0, [R4,#0x3A]
2F1958:  BNE             locret_2F19C6
2F195A:  ADDW            R4, R4, #0x5B4
2F195E:  MOVS            R1, #0; int
2F1960:  MOVS            R2, #0; unsigned int
2F1962:  MOV             R0, R4; this
2F1964:  BLX             j__ZN14CDamageManager14SetWheelStatusEij; CDamageManager::SetWheelStatus(int,uint)
2F1968:  MOV             R0, R4; this
2F196A:  MOVS            R1, #1; int
2F196C:  MOVS            R2, #0; unsigned int
2F196E:  BLX             j__ZN14CDamageManager14SetWheelStatusEij; CDamageManager::SetWheelStatus(int,uint)
2F1972:  MOV             R0, R4; this
2F1974:  MOVS            R1, #2; int
2F1976:  MOVS            R2, #0; unsigned int
2F1978:  BLX             j__ZN14CDamageManager14SetWheelStatusEij; CDamageManager::SetWheelStatus(int,uint)
2F197C:  MOV             R0, R4; this
2F197E:  MOVS            R1, #3; int
2F1980:  MOVS            R2, #0; int
2F1982:  POP.W           {R4,R6,R7,LR}
2F1986:  B.W             j_j__ZN14CDamageManager14SetWheelStatusEij; j_CDamageManager::SetWheelStatus(int,uint)
2F198A:  LDR             R1, [R4,#0x14]
2F198C:  ADD.W           R0, R1, #0x30 ; '0'
2F1990:  CMP             R1, #0
2F1992:  IT EQ
2F1994:  ADDEQ           R0, R4, #4; this
2F1996:  MOVS            R1, #0; CVector *
2F1998:  BLX             j__ZN9CColStore18HasCollisionLoadedERK7CVectori; CColStore::HasCollisionLoaded(CVector const&,int)
2F199C:  CMP             R0, #1
2F199E:  BNE             locret_2F19C6
2F19A0:  LDR.W           R0, [R4,#0x5A0]
2F19A4:  MOVS            R2, #3
2F19A6:  LDRB.W          R1, [R4,#0x3A]
2F19AA:  CMP             R0, #0
2F19AC:  BFI.W           R1, R2, #3, #0x1D
2F19B0:  STRB.W          R1, [R4,#0x3A]
2F19B4:  BEQ             loc_2F19C8
2F19B6:  CMP             R0, #9
2F19B8:  IT NE
2F19BA:  POPNE           {R4,R6,R7,PC}
2F19BC:  MOV             R0, R4; this
2F19BE:  POP.W           {R4,R6,R7,LR}
2F19C2:  B.W             j_j__ZN5CBike19PlaceOnRoadProperlyEv; j_CBike::PlaceOnRoadProperly(void)
2F19C6:  POP             {R4,R6,R7,PC}
2F19C8:  MOV             R0, R4; this
2F19CA:  POP.W           {R4,R6,R7,LR}
2F19CE:  B.W             j_j__ZN11CAutomobile19PlaceOnRoadProperlyEv; j_CAutomobile::PlaceOnRoadProperly(void)
