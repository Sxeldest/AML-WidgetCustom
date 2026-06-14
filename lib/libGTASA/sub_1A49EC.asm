; =========================================================
; Game Engine Function: sub_1A49EC
; Address            : 0x1A49EC - 0x1A4AA6
; =========================================================

1A49EC:  PUSH            {R4,R5,R7,LR}
1A49EE:  ADD             R7, SP, #8
1A49F0:  LDR             R1, =(gFireManager_ptr - 0x1A4A00)
1A49F2:  VMOV.I32        Q8, #0
1A49F6:  LDR             R0, =(gFireManager_ptr - 0x1A4A06)
1A49F8:  MOV.W           R12, #1
1A49FC:  ADD             R1, PC; gFireManager_ptr
1A49FE:  MOV.W           LR, #0x3F800000
1A4A02:  ADD             R0, PC; gFireManager_ptr
1A4A04:  MOVS            R3, #0
1A4A06:  LDR             R2, [R1]; gFireManager
1A4A08:  MOVW            R1, #0x3C64
1A4A0C:  LDR             R0, [R0]; gFireManager
1A4A0E:  ADD.W           R2, R2, #0x960
1A4A12:  STRH.W          R12, [R0,#2]
1A4A16:  ADDS            R5, R0, #4
1A4A18:  LDRB            R4, [R0]
1A4A1A:  VST1.32         {D16-D17}, [R5]!
1A4A1E:  AND.W           R4, R4, #0xE0
1A4A22:  STR.W           LR, [R0,#0x1C]
1A4A26:  ORR.W           R4, R4, #0x14
1A4A2A:  STRB            R4, [R0]
1A4A2C:  STR             R3, [R0,#0x24]
1A4A2E:  STRH            R1, [R0,#0x20]
1A4A30:  ADDS            R0, #0x28 ; '('
1A4A32:  CMP             R0, R2
1A4A34:  STRD.W          R3, R3, [R5]
1A4A38:  BNE             loc_1A4A12
1A4A3A:  LDR             R1, =(gFireManager_ptr - 0x1A4A4A)
1A4A3C:  VMOV.I32        Q8, #0
1A4A40:  MOVS            R0, #0
1A4A42:  MOV.W           R12, #1
1A4A46:  ADD             R1, PC; gFireManager_ptr
1A4A48:  MOV.W           LR, #0x3F800000
1A4A4C:  MOVW            R2, #0x3C64
1A4A50:  MOVS            R3, #0
1A4A52:  LDR             R1, [R1]; gFireManager
1A4A54:  LDRB            R4, [R1,R3]
1A4A56:  AND.W           R4, R4, #0xE0
1A4A5A:  ORR.W           R4, R4, #0x14
1A4A5E:  STRB            R4, [R1,R3]
1A4A60:  ADDS            R4, R1, R3
1A4A62:  ADDS            R3, #0x28 ; '('
1A4A64:  STRH.W          R12, [R4,#2]
1A4A68:  CMP.W           R3, #0x960
1A4A6C:  STRD.W          R0, R0, [R4,#0x14]
1A4A70:  STR.W           LR, [R4,#0x1C]
1A4A74:  STR             R0, [R4,#0x24]
1A4A76:  STRH            R2, [R4,#0x20]
1A4A78:  ADD.W           R4, R4, #4
1A4A7C:  VST1.32         {D16-D17}, [R4]
1A4A80:  BNE             loc_1A4A54
1A4A82:  LDR             R0, =(gFireManager_ptr - 0x1A4A8A)
1A4A84:  LDR             R3, =(_ZN12CFireManagerD2Ev_ptr - 0x1A4A8E)
1A4A86:  ADD             R0, PC; gFireManager_ptr
1A4A88:  LDR             R2, =(unk_67A000 - 0x1A4A92)
1A4A8A:  ADD             R3, PC; _ZN12CFireManagerD2Ev_ptr
1A4A8C:  LDR             R1, [R0]; gFireManager ; obj
1A4A8E:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A4A90:  LDR             R0, [R3]; CFireManager::~CFireManager() ; lpfunc
1A4A92:  MOV             R3, #0xF423F
1A4A9A:  STR.W           R3, [R1,#(dword_959160 - 0x958800)]
1A4A9E:  POP.W           {R4,R5,R7,LR}
1A4AA2:  B.W             j___cxa_atexit
