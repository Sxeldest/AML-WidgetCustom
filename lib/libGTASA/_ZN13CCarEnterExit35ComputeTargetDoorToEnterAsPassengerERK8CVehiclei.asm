; =========================================================
; Game Engine Function: _ZN13CCarEnterExit35ComputeTargetDoorToEnterAsPassengerERK8CVehiclei
; Address            : 0x508BA6 - 0x508BEA
; =========================================================

508BA6:  LDRB.W          R2, [R0,#0x42D]
508BAA:  LSLS            R2, R2, #0x1E
508BAC:  ITT MI
508BAE:  MOVMI           R0, #8
508BB0:  BXMI            LR
508BB2:  CMP             R1, #2
508BB4:  BEQ             loc_508BE6
508BB6:  CMP             R1, #1
508BB8:  ITT EQ
508BBA:  MOVEQ           R0, #0xB
508BBC:  BXEQ            LR
508BBE:  CBNZ            R1, loc_508BE0
508BC0:  LDR.W           R1, [R0,#0x5A0]
508BC4:  CMP             R1, #9
508BC6:  ITT EQ
508BC8:  MOVEQ           R0, #0xB
508BCA:  BXEQ            LR
508BCC:  LDR.W           R0, [R0,#0x388]
508BD0:  LDRB.W          R0, [R0,#0xCD]
508BD4:  LSLS            R0, R0, #0x1E
508BD6:  MOV.W           R0, #8
508BDA:  IT MI
508BDC:  MOVMI           R0, #0xB
508BDE:  BX              LR
508BE0:  MOV.W           R0, #0xFFFFFFFF
508BE4:  BX              LR
508BE6:  MOVS            R0, #9
508BE8:  BX              LR
