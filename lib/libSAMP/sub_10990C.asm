; =========================================================
; Game Engine Function: sub_10990C
; Address            : 0x10990C - 0x1099C6
; =========================================================

10990C:  PUSH            {R4-R7,LR}
10990E:  ADD             R7, SP, #0xC
109910:  PUSH.W          {R8-R10}
109914:  VPUSH           {D8-D11}
109918:  SUB             SP, SP, #0x10
10991A:  MOV             R8, R0
10991C:  LDR             R0, [R0,#0xC]
10991E:  CMP             R0, #0
109920:  BEQ             loc_1099BA
109922:  LDR.W           R0, [R8,#8]
109926:  BL              sub_108354
10992A:  CMP             R0, #0
10992C:  BEQ             loc_1099BA
10992E:  LDR.W           R0, [R8,#0xC]
109932:  LDR             R1, [R0,#0x14]
109934:  LDR.W           R0, [R0,#0x464]
109938:  VLDR            S18, [R1,#0x30]
10993C:  VLDR            S16, [R1,#0x34]
109940:  VLDR            S22, [R1,#0x38]
109944:  CBZ             R0, loc_109972
109946:  BL              sub_10830C
10994A:  VCVT.F64.F32    D10, S18
10994E:  MOV             R1, R0
109950:  LDR             R0, =(unk_B3E22 - 0x109956)
109952:  ADD             R0, PC; unk_B3E22
109954:  VMOV            R2, R3, D10
109958:  VMOV.F32        S0, #2.0
10995C:  VCVT.F64.F32    D8, S16
109960:  VADD.F32        S0, S22, S0
109964:  VCVT.F64.F32    D9, S0
109968:  VSTMEA          SP, {D8-D9}
10996C:  BL              sub_107188
109970:  B               loc_109986
109972:  VMOV.F32        S0, #2.0
109976:  VCVT.F64.F32    D8, S16
10997A:  VCVT.F64.F32    D10, S18
10997E:  VADD.F32        S0, S22, S0
109982:  VCVT.F64.F32    D9, S0
109986:  VMOV            R9, R6, D10
10998A:  LDR             R4, =(unk_B3E22 - 0x109998)
10998C:  MOV.W           R5, #0x11A
109990:  MOVW            R10, #0x121
109994:  ADD             R4, PC; unk_B3E22
109996:  LDR.W           R0, [R8,#0xC]
10999A:  LDR.W           R0, [R0,R5,LSL#2]
10999E:  CBZ             R0, loc_1099B4
1099A0:  BL              sub_10830C
1099A4:  MOV             R1, R0
1099A6:  MOV             R0, R4
1099A8:  MOV             R2, R9
1099AA:  MOV             R3, R6
1099AC:  VSTMEA          SP, {D8-D9}
1099B0:  BL              sub_107188
1099B4:  ADDS            R5, #1
1099B6:  CMP             R5, R10
1099B8:  BNE             loc_109996
1099BA:  ADD             SP, SP, #0x10
1099BC:  VPOP            {D8-D11}
1099C0:  POP.W           {R8-R10}
1099C4:  POP             {R4-R7,PC}
