; =========================================================
; Game Engine Function: _ZN15CLoadedCarGroup12RemoveMemberEi
; Address            : 0x4D18AE - 0x4D1A3E
; =========================================================

4D18AE:  PUSH            {R4,R5,R7,LR}
4D18B0:  ADD             R7, SP, #8
4D18B2:  LDRSH.W         R2, [R0]
4D18B6:  CMP             R2, R1
4D18B8:  BNE             loc_4D18C0
4D18BA:  MOV.W           R12, #0
4D18BE:  B               loc_4D19E4
4D18C0:  LDRSH.W         R2, [R0,#2]
4D18C4:  CMP             R2, R1
4D18C6:  BNE             loc_4D18CE
4D18C8:  MOV.W           R12, #1
4D18CC:  B               loc_4D19E4
4D18CE:  LDRSH.W         R2, [R0,#4]
4D18D2:  CMP             R2, R1
4D18D4:  BNE             loc_4D18DC
4D18D6:  MOV.W           R12, #2
4D18DA:  B               loc_4D19E4
4D18DC:  LDRSH.W         R2, [R0,#6]
4D18E0:  CMP             R2, R1
4D18E2:  BNE             loc_4D18EA
4D18E4:  MOV.W           R12, #3
4D18E8:  B               loc_4D19E4
4D18EA:  LDRSH.W         R2, [R0,#8]
4D18EE:  CMP             R2, R1
4D18F0:  BNE             loc_4D18F8
4D18F2:  MOV.W           R12, #4
4D18F6:  B               loc_4D19E4
4D18F8:  LDRSH.W         R2, [R0,#0xA]
4D18FC:  CMP             R2, R1
4D18FE:  BNE             loc_4D1906
4D1900:  MOV.W           R12, #5
4D1904:  B               loc_4D19E4
4D1906:  LDRSH.W         R2, [R0,#0xC]
4D190A:  CMP             R2, R1
4D190C:  BNE             loc_4D1914
4D190E:  MOV.W           R12, #6
4D1912:  B               loc_4D19E4
4D1914:  LDRSH.W         R2, [R0,#0xE]
4D1918:  CMP             R2, R1
4D191A:  BNE             loc_4D1922
4D191C:  MOV.W           R12, #7
4D1920:  B               loc_4D19E4
4D1922:  LDRSH.W         R2, [R0,#0x10]
4D1926:  CMP             R2, R1
4D1928:  BNE             loc_4D1930
4D192A:  MOV.W           R12, #8
4D192E:  B               loc_4D19E4
4D1930:  LDRSH.W         R2, [R0,#0x12]
4D1934:  CMP             R2, R1
4D1936:  BNE             loc_4D193E
4D1938:  MOV.W           R12, #9
4D193C:  B               loc_4D19E4
4D193E:  LDRSH.W         R2, [R0,#0x14]
4D1942:  CMP             R2, R1
4D1944:  BNE             loc_4D194C
4D1946:  MOV.W           R12, #0xA
4D194A:  B               loc_4D19E4
4D194C:  LDRSH.W         R2, [R0,#0x16]
4D1950:  CMP             R2, R1
4D1952:  BNE             loc_4D195A
4D1954:  MOV.W           R12, #0xB
4D1958:  B               loc_4D19E4
4D195A:  LDRSH.W         R2, [R0,#0x18]
4D195E:  CMP             R2, R1
4D1960:  BNE             loc_4D1968
4D1962:  MOV.W           R12, #0xC
4D1966:  B               loc_4D19E4
4D1968:  LDRSH.W         R2, [R0,#0x1A]
4D196C:  CMP             R2, R1
4D196E:  BNE             loc_4D1976
4D1970:  MOV.W           R12, #0xD
4D1974:  B               loc_4D19E4
4D1976:  LDRSH.W         R2, [R0,#0x1C]
4D197A:  CMP             R2, R1
4D197C:  BNE             loc_4D1984
4D197E:  MOV.W           R12, #0xE
4D1982:  B               loc_4D19E4
4D1984:  LDRSH.W         R2, [R0,#0x1E]
4D1988:  CMP             R2, R1
4D198A:  BNE             loc_4D1992
4D198C:  MOV.W           R12, #0xF
4D1990:  B               loc_4D19E4
4D1992:  LDRSH.W         R2, [R0,#0x20]
4D1996:  CMP             R2, R1
4D1998:  BNE             loc_4D19A0
4D199A:  MOV.W           R12, #0x10
4D199E:  B               loc_4D19E4
4D19A0:  LDRSH.W         R2, [R0,#0x22]
4D19A4:  CMP             R2, R1
4D19A6:  BNE             loc_4D19AE
4D19A8:  MOV.W           R12, #0x11
4D19AC:  B               loc_4D19E4
4D19AE:  LDRSH.W         R2, [R0,#0x24]
4D19B2:  CMP             R2, R1
4D19B4:  BNE             loc_4D19BC
4D19B6:  MOV.W           R12, #0x12
4D19BA:  B               loc_4D19E4
4D19BC:  LDRSH.W         R2, [R0,#0x26]
4D19C0:  CMP             R2, R1
4D19C2:  BNE             loc_4D19CA
4D19C4:  MOV.W           R12, #0x13
4D19C8:  B               loc_4D19E4
4D19CA:  LDRSH.W         R2, [R0,#0x28]
4D19CE:  CMP             R2, R1
4D19D0:  BNE             loc_4D19D8
4D19D2:  MOV.W           R12, #0x14
4D19D6:  B               loc_4D19E4
4D19D8:  LDRSH.W         R2, [R0,#0x2A]
4D19DC:  CMP             R2, R1
4D19DE:  BNE             loc_4D1A32
4D19E0:  MOV.W           R12, #0x15
4D19E4:  RSB.W           R5, R12, #0x16
4D19E8:  CMP             R5, #7
4D19EA:  BLS             loc_4D1A14
4D19EC:  BIC.W           LR, R5, #7
4D19F0:  CMP.W           LR, #0
4D19F4:  BEQ             loc_4D1A14
4D19F6:  ADD.W           R2, R12, LR
4D19FA:  ADD.W           R1, R0, R12,LSL#1
4D19FE:  MOV             R3, LR
4D1A00:  ADDS            R4, R1, #2
4D1A02:  SUBS            R3, #8
4D1A04:  VLD1.16         {D16-D17}, [R4]
4D1A08:  VST1.16         {D16-D17}, [R1]!
4D1A0C:  BNE             loc_4D1A00
4D1A0E:  CMP             R5, LR
4D1A10:  BNE             loc_4D1A16
4D1A12:  B               loc_4D1A2A
4D1A14:  MOV             R2, R12
4D1A16:  ADD.W           R1, R0, R2,LSL#1
4D1A1A:  CMP             R2, #0x15
4D1A1C:  LDRH            R1, [R1,#2]
4D1A1E:  STRH.W          R1, [R0,R2,LSL#1]
4D1A22:  ADD.W           R1, R2, #1
4D1A26:  MOV             R2, R1
4D1A28:  BLT             loc_4D1A16
4D1A2A:  MOVW            R1, #0xFFFF
4D1A2E:  STRH            R1, [R0,#0x2C]
4D1A30:  POP             {R4,R5,R7,PC}
4D1A32:  LDRSH.W         R2, [R0,#0x2C]
4D1A36:  CMP             R2, R1
4D1A38:  IT NE
4D1A3A:  POPNE           {R4,R5,R7,PC}
4D1A3C:  B               loc_4D1A2A
