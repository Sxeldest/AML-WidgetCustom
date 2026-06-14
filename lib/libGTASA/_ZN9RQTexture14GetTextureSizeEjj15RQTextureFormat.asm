; =========================================================
; Game Engine Function: _ZN9RQTexture14GetTextureSizeEjj15RQTextureFormat
; Address            : 0x1D3894 - 0x1D392A
; =========================================================

1D3894:  CMP             R2, #0x12
1D3896:  ITT HI
1D3898:  MOVHI           R0, #0
1D389A:  BXHI            LR
1D389C:  TBB.W           [PC,R2]; switch 19 cases
1D38A0:  DCB 0x3C; jump table for switch statement
1D38A1:  DCB 0x3F
1D38A2:  DCB 0xA
1D38A3:  DCB 0xA
1D38A4:  DCB 0xA
1D38A5:  DCB 0x43
1D38A6:  DCB 0xA
1D38A7:  DCB 0xD
1D38A8:  DCB 0xD
1D38A9:  DCB 0x17
1D38AA:  DCB 0x17
1D38AB:  DCB 0xD
1D38AC:  DCB 0x17
1D38AD:  DCB 0x17
1D38AE:  DCB 0x20
1D38AF:  DCB 0x20
1D38B0:  DCB 0x2E
1D38B1:  DCB 0x2E
1D38B2:  DCB 0xD
1D38B3:  ALIGN 2
1D38B4:  MULS            R0, R1; jumptable 001D389C cases 2-4,6
1D38B6:  LSLS            R0, R0, #1
1D38B8:  BX              LR
1D38BA:  MOVS            R2, #4; jumptable 001D389C cases 7,8,11,18
1D38BC:  CMP             R0, #4
1D38BE:  IT LS
1D38C0:  MOVLS           R0, R2
1D38C2:  CMP             R1, #4
1D38C4:  IT HI
1D38C6:  MOVHI           R2, R1
1D38C8:  MULS            R0, R2
1D38CA:  LSRS            R0, R0, #1
1D38CC:  BX              LR
1D38CE:  MOVS            R2, #4; jumptable 001D389C cases 9,10,12,13
1D38D0:  CMP             R0, #4
1D38D2:  IT LS
1D38D4:  MOVLS           R0, R2
1D38D6:  CMP             R1, #4
1D38D8:  IT HI
1D38DA:  MOVHI           R2, R1
1D38DC:  MULS            R0, R2
1D38DE:  BX              LR
1D38E0:  MOVS            R2, #8; jumptable 001D389C cases 14,15
1D38E2:  CMP             R1, #8
1D38E4:  IT LE
1D38E6:  MOVLE           R1, R2
1D38E8:  CMP             R0, #8
1D38EA:  IT GT
1D38EC:  MOVGT           R2, R0
1D38EE:  MUL.W           R0, R2, R1
1D38F2:  MOVS            R1, #7
1D38F4:  ADD.W           R0, R1, R0,LSL#1
1D38F8:  LSRS            R0, R0, #3
1D38FA:  BX              LR
1D38FC:  MOVS            R2, #8; jumptable 001D389C cases 16,17
1D38FE:  CMP             R1, #8
1D3900:  IT LE
1D3902:  MOVLE           R1, R2
1D3904:  CMP             R0, #8
1D3906:  IT GT
1D3908:  MOVGT           R2, R0
1D390A:  MUL.W           R0, R2, R1
1D390E:  MOVS            R1, #7
1D3910:  ADD.W           R0, R1, R0,LSL#2
1D3914:  LSRS            R0, R0, #3
1D3916:  BX              LR
1D3918:  MULS            R0, R1; jumptable 001D389C case 0
1D391A:  LSLS            R0, R0, #2
1D391C:  BX              LR
1D391E:  MULS            R0, R1; jumptable 001D389C case 1
1D3920:  ADD.W           R0, R0, R0,LSL#1
1D3924:  BX              LR
1D3926:  MULS            R0, R1; jumptable 001D389C case 5
1D3928:  BX              LR
