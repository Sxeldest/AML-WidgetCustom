; =========================================================
; Game Engine Function: _ZN13CCarEnterExit32ComputePassengerIndexFromCarDoorERK8CVehiclei
; Address            : 0x508BEC - 0x508C24
; =========================================================

508BEC:  LDR.W           R2, [R0,#0x5A0]
508BF0:  CMP             R2, #9
508BF2:  BEQ             loc_508C12
508BF4:  LDR.W           R0, [R0,#0x388]
508BF8:  LDRB.W          R0, [R0,#0xCD]
508BFC:  LSLS            R0, R0, #0x1E
508BFE:  BMI             loc_508C12
508C00:  SUB.W           R0, R1, #8
508C04:  CMP             R0, #4
508C06:  BCS             loc_508C1E
508C08:  LDR             R1, =(unk_61E72C - 0x508C0E)
508C0A:  ADD             R1, PC; unk_61E72C
508C0C:  LDR.W           R0, [R1,R0,LSL#2]
508C10:  BX              LR
508C12:  ORR.W           R0, R1, #2
508C16:  CMP             R0, #0xB
508C18:  ITT EQ
508C1A:  MOVEQ           R0, #0
508C1C:  BXEQ            LR
508C1E:  MOV.W           R0, #0xFFFFFFFF
508C22:  BX              LR
