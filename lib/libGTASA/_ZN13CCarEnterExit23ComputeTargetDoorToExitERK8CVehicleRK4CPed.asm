; =========================================================
; Game Engine Function: _ZN13CCarEnterExit23ComputeTargetDoorToExitERK8CVehicleRK4CPed
; Address            : 0x508B4C - 0x508BA6
; =========================================================

508B4C:  LDR.W           R2, [R0,#0x464]
508B50:  CMP             R2, R1
508B52:  ITT EQ
508B54:  MOVEQ           R0, #0xA
508B56:  BXEQ            LR
508B58:  LDR.W           R2, [R0,#0x388]
508B5C:  LDRB.W          R3, [R2,#0xDE]
508B60:  SUBS            R3, #0xF
508B62:  CMP             R3, #2
508B64:  ITT CC
508B66:  MOVCC           R0, #8
508B68:  BXCC            LR
508B6A:  LDR.W           R3, [R0,#0x468]
508B6E:  CMP             R3, R1
508B70:  BEQ             loc_508B8A
508B72:  LDR.W           R2, [R0,#0x46C]
508B76:  CMP             R2, R1
508B78:  BEQ             loc_508B92
508B7A:  LDR.W           R2, [R0,#0x470]
508B7E:  MOV.W           R0, #0xFFFFFFFF
508B82:  CMP             R2, R1
508B84:  IT EQ
508B86:  MOVEQ           R0, #9
508B88:  BX              LR
508B8A:  LDR.W           R0, [R0,#0x5A0]
508B8E:  CMP             R0, #9
508B90:  BNE             loc_508B96
508B92:  MOVS            R0, #0xB
508B94:  BX              LR
508B96:  LDRB.W          R0, [R2,#0xCD]
508B9A:  LSLS            R0, R0, #0x1E
508B9C:  MOV.W           R0, #8
508BA0:  IT MI
508BA2:  MOVMI           R0, #0xB
508BA4:  BX              LR
