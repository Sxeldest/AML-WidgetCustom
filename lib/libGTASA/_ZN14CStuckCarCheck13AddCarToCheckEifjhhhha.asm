; =========================================================
; Game Engine Function: _ZN14CStuckCarCheck13AddCarToCheckEifjhhhha
; Address            : 0x328AB4 - 0x328C68
; =========================================================

328AB4:  PUSH            {R4-R7,LR}
328AB6:  ADD             R7, SP, #0xC
328AB8:  PUSH.W          {R8-R11}
328ABC:  CMP             R1, #0
328ABE:  BLT.W           loc_328C62
328AC2:  LDR             R6, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x328ACE)
328AC4:  MOV.W           LR, R1,LSR#8
328AC8:  UXTB            R4, R1
328ACA:  ADD             R6, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
328ACC:  LDR             R6, [R6]; CPools::ms_pVehiclePool ...
328ACE:  LDR             R6, [R6]; CPools::ms_pVehiclePool
328AD0:  LDR             R5, [R6,#4]
328AD2:  LDRB.W          R5, [R5,LR]
328AD6:  CMP             R5, R4
328AD8:  BNE.W           loc_328C62
328ADC:  MOVW            R5, #0xA2C
328AE0:  LDR.W           R11, [R6]
328AE4:  MLA.W           R6, LR, R5, R11
328AE8:  CMP             R6, #0
328AEA:  BEQ.W           loc_328C62
328AEE:  LDR             R5, [R0]
328AF0:  CMP             R5, #0
328AF2:  BLT             loc_328B88
328AF4:  MOV             R5, R0
328AF6:  LDR.W           R6, [R5,#0x24]!
328AFA:  CMP.W           R6, #0xFFFFFFFF
328AFE:  BLE             loc_328B90
328B00:  MOV             R5, R0
328B02:  LDR.W           R6, [R5,#0x48]!
328B06:  CMP             R6, #0
328B08:  BLT             loc_328B96
328B0A:  MOV             R5, R0
328B0C:  LDR.W           R6, [R5,#0x6C]!
328B10:  CMP             R6, #0
328B12:  BLT             loc_328B9C
328B14:  MOV             R5, R0
328B16:  LDR.W           R6, [R5,#0x90]!
328B1A:  CMP             R6, #0
328B1C:  BLT             loc_328BA2
328B1E:  MOV             R5, R0
328B20:  LDR.W           R6, [R5,#0xB4]!
328B24:  CMP             R6, #0
328B26:  BLT             loc_328BA8
328B28:  MOV             R5, R0
328B2A:  LDR.W           R6, [R5,#0xD8]!
328B2E:  CMP             R6, #0
328B30:  BLT             loc_328BAE
328B32:  MOV             R5, R0
328B34:  LDR.W           R6, [R5,#0xFC]!
328B38:  CMP             R6, #0
328B3A:  BLT             loc_328BB4
328B3C:  LDR.W           R6, [R0,#0x120]
328B40:  CMP             R6, #0
328B42:  BLT             loc_328BBA
328B44:  LDR.W           R6, [R0,#0x144]
328B48:  CMP             R6, #0
328B4A:  BLT             loc_328BC4
328B4C:  LDR.W           R6, [R0,#0x168]
328B50:  CMP             R6, #0
328B52:  BLT             loc_328BCE
328B54:  LDR.W           R6, [R0,#0x18C]
328B58:  CMP             R6, #0
328B5A:  BLT             loc_328BD8
328B5C:  LDR.W           R6, [R0,#0x1B0]
328B60:  CMP             R6, #0
328B62:  BLT             loc_328BE2
328B64:  LDR.W           R6, [R0,#0x1D4]
328B68:  CMP             R6, #0
328B6A:  BLT             loc_328BEC
328B6C:  LDR.W           R6, [R0,#0x1F8]
328B70:  CMP             R6, #0
328B72:  BLT             loc_328BF6
328B74:  LDR.W           R6, [R0,#0x21C]
328B78:  CMP.W           R6, #0xFFFFFFFF
328B7C:  BGT             loc_328C62
328B7E:  ADD.W           R5, R0, #0x21C
328B82:  MOV.W           R8, #0xF
328B86:  B               loc_328BFE
328B88:  MOV.W           R8, #0
328B8C:  MOV             R5, R0
328B8E:  B               loc_328BFE
328B90:  MOV.W           R8, #1
328B94:  B               loc_328BFE
328B96:  MOV.W           R8, #2
328B9A:  B               loc_328BFE
328B9C:  MOV.W           R8, #3
328BA0:  B               loc_328BFE
328BA2:  MOV.W           R8, #4
328BA6:  B               loc_328BFE
328BA8:  MOV.W           R8, #5
328BAC:  B               loc_328BFE
328BAE:  MOV.W           R8, #6
328BB2:  B               loc_328BFE
328BB4:  MOV.W           R8, #7
328BB8:  B               loc_328BFE
328BBA:  ADD.W           R5, R0, #0x120
328BBE:  MOV.W           R8, #8
328BC2:  B               loc_328BFE
328BC4:  ADD.W           R5, R0, #0x144
328BC8:  MOV.W           R8, #9
328BCC:  B               loc_328BFE
328BCE:  ADD.W           R5, R0, #0x168
328BD2:  MOV.W           R8, #0xA
328BD6:  B               loc_328BFE
328BD8:  ADD.W           R5, R0, #0x18C
328BDC:  MOV.W           R8, #0xB
328BE0:  B               loc_328BFE
328BE2:  ADD.W           R5, R0, #0x1B0
328BE6:  MOV.W           R8, #0xC
328BEA:  B               loc_328BFE
328BEC:  ADD.W           R5, R0, #0x1D4
328BF0:  MOV.W           R8, #0xD
328BF4:  B               loc_328BFE
328BF6:  ADD.W           R5, R0, #0x1F8
328BFA:  MOV.W           R8, #0xE
328BFE:  VMOV            S0, R2
328C02:  MOVW            R2, #0xA2C
328C06:  MLA.W           R2, LR, R2, R11
328C0A:  LDRD.W          R6, R10, [R7,#arg_8]
328C0E:  LDRD.W          R12, R4, [R7,#arg_0]
328C12:  STR             R1, [R5]
328C14:  LDR.W           LR, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x328C20)
328C18:  LDR.W           R9, [R7,#arg_10]
328C1C:  ADD             LR, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
328C1E:  LDR             R1, [R2,#0x14]
328C20:  LDR.W           LR, [LR]; CTimer::m_snTimeInMilliseconds ...
328C24:  ADD.W           R5, R1, #0x30 ; '0'
328C28:  CMP             R1, #0
328C2A:  ADD.W           R1, R8, R8,LSL#3
328C2E:  IT EQ
328C30:  ADDEQ           R5, R2, #4
328C32:  VLDR            D16, [R5]
328C36:  ADD.W           R0, R0, R1,LSL#2
328C3A:  LDR             R2, [R5,#8]
328C3C:  STR             R2, [R0,#0xC]
328C3E:  VSTR            D16, [R0,#4]
328C42:  LDR.W           R1, [LR]; CTimer::m_snTimeInMilliseconds
328C46:  VSTR            S0, [R0,#0x14]
328C4A:  STR             R1, [R0,#0x10]
328C4C:  MOVS            R1, #0
328C4E:  STR             R3, [R0,#0x18]
328C50:  STRB            R1, [R0,#0x1C]
328C52:  STRB.W          R12, [R0,#0x1D]
328C56:  STRB            R4, [R0,#0x1E]
328C58:  STRB            R6, [R0,#0x1F]
328C5A:  STRB.W          R10, [R0,#0x20]
328C5E:  STRB.W          R9, [R0,#0x21]
328C62:  POP.W           {R8-R11}
328C66:  POP             {R4-R7,PC}
