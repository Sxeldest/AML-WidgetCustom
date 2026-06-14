; =========================================================
; Game Engine Function: _ZN11CPopulation21ArePedStatsCompatibleEii
; Address            : 0x4CF960 - 0x4CFA20
; =========================================================

4CF960:  CMP             R1, #0x2A ; '*'
4CF962:  MOV             R2, R0
4CF964:  MOV.W           R0, #0
4CF968:  IT NE
4CF96A:  CMPNE           R2, #0x2A ; '*'
4CF96C:  BEQ             locret_4CFA1E
4CF96E:  CMP             R1, #0x29 ; ')'
4CF970:  IT NE
4CF972:  CMPNE           R2, #0x29 ; ')'
4CF974:  BEQ             locret_4CFA1E
4CF976:  CMP             R1, #0x28 ; '('
4CF978:  IT NE
4CF97A:  CMPNE           R2, #0x28 ; '('
4CF97C:  BEQ             locret_4CFA1E
4CF97E:  CMP             R1, #0x27 ; '''
4CF980:  IT NE
4CF982:  CMPNE           R2, #0x27 ; '''
4CF984:  BEQ             locret_4CFA1E
4CF986:  CMP             R1, #0x26 ; '&'
4CF988:  IT NE
4CF98A:  CMPNE           R2, #0x26 ; '&'
4CF98C:  BEQ             locret_4CFA1E
4CF98E:  CMP             R1, #0x25 ; '%'
4CF990:  IT NE
4CF992:  CMPNE           R2, #0x25 ; '%'
4CF994:  BEQ             locret_4CFA1E
4CF996:  CMP             R1, #0x24 ; '$'
4CF998:  IT NE
4CF99A:  CMPNE           R2, #0x24 ; '$'
4CF99C:  BEQ             locret_4CFA1E
4CF99E:  CMP             R1, #0x23 ; '#'
4CF9A0:  IT NE
4CF9A2:  CMPNE           R2, #0x23 ; '#'
4CF9A4:  BEQ             locret_4CFA1E
4CF9A6:  CMP             R1, #0x22 ; '"'
4CF9A8:  IT NE
4CF9AA:  CMPNE           R2, #0x22 ; '"'
4CF9AC:  BEQ             locret_4CFA1E
4CF9AE:  CMP             R1, #0x21 ; '!'
4CF9B0:  IT NE
4CF9B2:  CMPNE           R2, #0x21 ; '!'
4CF9B4:  BEQ             locret_4CFA1E
4CF9B6:  CMP             R1, #0x20 ; ' '
4CF9B8:  IT NE
4CF9BA:  CMPNE           R2, #0x20 ; ' '
4CF9BC:  BEQ             locret_4CFA1E
4CF9BE:  CMP             R1, #0x1F
4CF9C0:  IT NE
4CF9C2:  CMPNE           R2, #0x1F
4CF9C4:  BEQ             locret_4CFA1E
4CF9C6:  CMP             R1, #0x1E
4CF9C8:  IT NE
4CF9CA:  CMPNE           R2, #0x1E
4CF9CC:  BEQ             locret_4CFA1E
4CF9CE:  CMP             R1, #0x1D
4CF9D0:  IT NE
4CF9D2:  CMPNE           R2, #0x1D
4CF9D4:  BEQ             locret_4CFA1E
4CF9D6:  CMP             R1, #0x1C
4CF9D8:  IT NE
4CF9DA:  CMPNE           R2, #0x1C
4CF9DC:  BEQ             locret_4CFA1E
4CF9DE:  CMP             R1, #0x1B
4CF9E0:  IT NE
4CF9E2:  CMPNE           R2, #0x1B
4CF9E4:  BEQ             locret_4CFA1E
4CF9E6:  CMP             R1, #0x1A
4CF9E8:  IT NE
4CF9EA:  CMPNE           R2, #0x1A
4CF9EC:  BEQ             locret_4CFA1E
4CF9EE:  CMP             R2, #4
4CF9F0:  IT CS
4CF9F2:  CMPCS           R1, #4
4CF9F4:  BCC             locret_4CFA1E
4CF9F6:  SUBS            R3, R2, #4
4CF9F8:  MOVS            R0, #0
4CF9FA:  CMP             R3, #7
4CF9FC:  ITT CS
4CF9FE:  SUBCS           R3, R1, #4
4CFA00:  CMPCS           R3, #7
4CFA02:  BCC             locret_4CFA1E
4CFA04:  CMP             R2, #0x18
4CFA06:  ITTT NE
4CFA08:  CMPNE           R2, #0x12
4CFA0A:  MOVNE           R0, #1
4CFA0C:  BXNE            LR
4CFA0E:  MOV.W           R0, #1
4CFA12:  CMP             R1, #0x12
4CFA14:  IT EQ
4CFA16:  BXEQ            LR
4CFA18:  CMP             R1, #0x18
4CFA1A:  IT NE
4CFA1C:  MOVNE           R0, #0
4CFA1E:  BX              LR
