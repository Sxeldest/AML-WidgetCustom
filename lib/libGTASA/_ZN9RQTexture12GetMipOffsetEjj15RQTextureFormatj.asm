; =========================================================
; Game Engine Function: _ZN9RQTexture12GetMipOffsetEjj15RQTextureFormatj
; Address            : 0x1D392C - 0x1D3A42
; =========================================================

1D392C:  PUSH            {R4-R7,LR}
1D392E:  ADD             R7, SP, #0xC
1D3930:  PUSH.W          {R8-R11}
1D3934:  MOV             R12, R0
1D3936:  MOVS            R0, #0
1D3938:  CMP             R3, #0
1D393A:  BEQ.W           loc_1D3A3C
1D393E:  MUL.W           R6, R1, R12
1D3942:  CMP             R6, #2
1D3944:  BLT.W           loc_1D3A3C
1D3948:  MOVS            R0, #0
1D394A:  MOV.W           LR, #8
1D394E:  MOV.W           R11, #0
1D3952:  B               loc_1D3964
1D3954:  MUL.W           R4, R9, R10
1D3958:  CMP             R4, #1
1D395A:  BHI             loc_1D3964
1D395C:  B               loc_1D3A3C
1D395E:  MOV.W           R8, #0; jumptable 001D3984 default case
1D3962:  B               loc_1D3A30
1D3964:  LSR.W           R5, R1, R11
1D3968:  CMP             R5, #1
1D396A:  MOV.W           R9, #1
1D396E:  LSR.W           R6, R12, R11
1D3972:  IT GT
1D3974:  MOVGT           R9, R5
1D3976:  CMP             R6, #1
1D3978:  MOV.W           R10, #1
1D397C:  IT GT
1D397E:  MOVGT           R10, R6
1D3980:  CMP             R2, #0x12; switch 19 cases
1D3982:  BHI             def_1D3984; jumptable 001D3984 default case
1D3984:  TBB.W           [PC,R2]; switch jump
1D3988:  DCB 0x12; jump table for switch statement
1D3989:  DCB 0xD
1D398A:  DCB 0x17
1D398B:  DCB 0x17
1D398C:  DCB 0x17
1D398D:  DCB 0xA
1D398E:  DCB 0x17
1D398F:  DCB 0x1C
1D3990:  DCB 0x1C
1D3991:  DCB 0x2C
1D3992:  DCB 0x2C
1D3993:  DCB 0x1C
1D3994:  DCB 0x2C
1D3995:  DCB 0x2C
1D3996:  DCB 0x3B
1D3997:  DCB 0x3B
1D3998:  DCB 0x46
1D3999:  DCB 0x46
1D399A:  DCB 0x1C
1D399B:  ALIGN 2
1D399C:  MUL.W           R8, R9, R10; jumptable 001D3984 case 5
1D39A0:  B               loc_1D3A30
1D39A2:  MUL.W           R4, R10, R9; jumptable 001D3984 case 1
1D39A6:  ADD.W           R8, R4, R4,LSL#1
1D39AA:  B               loc_1D3A30
1D39AC:  MUL.W           R4, R10, R9; jumptable 001D3984 case 0
1D39B0:  MOV.W           R8, R4,LSL#2
1D39B4:  B               loc_1D3A30
1D39B6:  MUL.W           R4, R10, R9; jumptable 001D3984 cases 2-4,6
1D39BA:  MOV.W           R8, R4,LSL#1
1D39BE:  B               loc_1D3A30
1D39C0:  CMP.W           R10, #4; jumptable 001D3984 cases 7,8,11,18
1D39C4:  MOV.W           R4, #4
1D39C8:  IT HI
1D39CA:  MOVHI           R4, R10
1D39CC:  CMP.W           R9, #4
1D39D0:  MOV.W           R5, #4
1D39D4:  IT HI
1D39D6:  MOVHI           R5, R9
1D39D8:  MULS            R4, R5
1D39DA:  MOV.W           R8, R4,LSR#1
1D39DE:  B               loc_1D3A30
1D39E0:  CMP.W           R10, #4; jumptable 001D3984 cases 9,10,12,13
1D39E4:  MOV.W           R4, #4
1D39E8:  IT HI
1D39EA:  MOVHI           R4, R10
1D39EC:  CMP.W           R9, #4
1D39F0:  MOV.W           R5, #4
1D39F4:  IT HI
1D39F6:  MOVHI           R5, R9
1D39F8:  MUL.W           R8, R5, R4
1D39FC:  B               loc_1D3A30
1D39FE:  CMP.W           R9, #8; jumptable 001D3984 cases 14,15
1D3A02:  MOV.W           R4, #0x10
1D3A06:  IT LE
1D3A08:  MOVLE           R5, LR
1D3A0A:  CMP.W           R10, #8
1D3A0E:  IT GT
1D3A10:  LSLGT           R4, R6, #1
1D3A12:  B               loc_1D3A28
1D3A14:  CMP.W           R9, #8; jumptable 001D3984 cases 16,17
1D3A18:  MOV.W           R4, #0x20 ; ' '
1D3A1C:  IT LE
1D3A1E:  MOVLE           R5, LR
1D3A20:  CMP.W           R10, #8
1D3A24:  IT GT
1D3A26:  LSLGT           R4, R6, #2
1D3A28:  MULS            R4, R5
1D3A2A:  ADDS            R4, #7
1D3A2C:  MOV.W           R8, R4,LSR#3
1D3A30:  ADD.W           R11, R11, #1
1D3A34:  ADD             R0, R8
1D3A36:  CMP             R11, R3
1D3A38:  BCC.W           loc_1D3954
1D3A3C:  POP.W           {R8-R11}
1D3A40:  POP             {R4-R7,PC}
