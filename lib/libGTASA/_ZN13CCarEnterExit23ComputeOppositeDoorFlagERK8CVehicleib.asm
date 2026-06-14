; =========================================================
; Game Engine Function: _ZN13CCarEnterExit23ComputeOppositeDoorFlagERK8CVehicleib
; Address            : 0x508588 - 0x5085C8
; =========================================================

508588:  CMP             R2, #1
50858A:  BNE             loc_5085A0
50858C:  LDR.W           R2, [R0,#0x5A0]
508590:  CMP             R2, #9
508592:  BEQ             loc_5085B2
508594:  LDR.W           R0, [R0,#0x388]
508598:  LDRB.W          R0, [R0,#0xCD]
50859C:  LSLS            R0, R0, #0x1E
50859E:  BMI             loc_5085B2
5085A0:  SUB.W           R0, R1, #8
5085A4:  CMP             R0, #0xB
5085A6:  ITTT CC
5085A8:  ADRCC           R1, dword_5085C8
5085AA:  LDRCC.W         R0, [R1,R0,LSL#2]
5085AE:  BXCC            LR
5085B0:  B               loc_5085C4
5085B2:  SUB.W           R0, R1, #8
5085B6:  CMP             R0, #0xB
5085B8:  BCS             loc_5085C4
5085BA:  LDR             R1, =(unk_61E700 - 0x5085C0)
5085BC:  ADD             R1, PC; unk_61E700
5085BE:  LDR.W           R0, [R1,R0,LSL#2]
5085C2:  BX              LR
5085C4:  MOVS            R0, #0
5085C6:  BX              LR
