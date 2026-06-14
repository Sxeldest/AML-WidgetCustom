; =========================================================
; Game Engine Function: _ZN24CTaskComplexShuffleSeats33CreateTaskUtilityLineUpPedWithCarEP4CPed
; Address            : 0x4FCDDC - 0x4FCE6E
; =========================================================

4FCDDC:  PUSH            {R4,R5,R7,LR}
4FCDDE:  ADD             R7, SP, #8
4FCDE0:  SUB             SP, SP, #0x20
4FCDE2:  MOV             R4, R0
4FCDE4:  MOV             R5, R1
4FCDE6:  LDR             R1, [R4,#0xC]; CVehicle *
4FCDE8:  LDR.W           R0, [R1,#0x464]
4FCDEC:  CMP             R0, R5
4FCDEE:  BEQ             loc_4FCE06
4FCDF0:  LDR.W           R0, [R1,#0x468]
4FCDF4:  CMP             R0, R5
4FCDF6:  BEQ             loc_4FCE0A
4FCDF8:  LDR.W           R0, [R1,#0x46C]
4FCDFC:  MOVS            R2, #9
4FCDFE:  CMP             R0, R5
4FCE00:  IT EQ
4FCE02:  MOVEQ           R2, #0xB
4FCE04:  B               loc_4FCE0C
4FCE06:  MOVS            R2, #0xA
4FCE08:  B               loc_4FCE0C
4FCE0A:  MOVS            R2, #8; int
4FCE0C:  ADD             R0, SP, #0x28+var_20; this
4FCE0E:  STR             R2, [R4,#0x10]
4FCE10:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
4FCE14:  LDR             R0, [R5,#0x14]
4FCE16:  VLDR            S0, [SP,#0x28+var_20]
4FCE1A:  ADD.W           R1, R0, #0x30 ; '0'
4FCE1E:  CMP             R0, #0
4FCE20:  VLDR            S2, [SP,#0x28+var_1C]
4FCE24:  MOV.W           R0, #0x1C; unsigned int
4FCE28:  VLDR            S4, [SP,#0x28+var_18]
4FCE2C:  IT EQ
4FCE2E:  ADDEQ           R1, R5, #4
4FCE30:  VLDR            S6, [R1]
4FCE34:  VLDR            S8, [R1,#4]
4FCE38:  VSUB.F32        S0, S0, S6
4FCE3C:  VLDR            S10, [R1,#8]
4FCE40:  VSTR            S0, [SP,#0x28+var_14]
4FCE44:  VSUB.F32        S0, S2, S8
4FCE48:  VSTR            S0, [SP,#0x28+var_10]
4FCE4C:  VSUB.F32        S0, S4, S10
4FCE50:  VSTR            S0, [SP,#0x28+var_C]
4FCE54:  BLX             _Znwj; operator new(uint)
4FCE58:  LDR             R1, [R4,#0x10]
4FCE5A:  MOV.W           R2, #0x258; int
4FCE5E:  STR             R1, [SP,#0x28+var_28]; int
4FCE60:  ADD             R1, SP, #0x28+var_14; CVector *
4FCE62:  MOVS            R3, #0; int
4FCE64:  BLX             j__ZN28CTaskUtilityLineUpPedWithCarC2ERK7CVectoriii; CTaskUtilityLineUpPedWithCar::CTaskUtilityLineUpPedWithCar(CVector const&,int,int,int)
4FCE68:  STR             R0, [R4,#0x24]
4FCE6A:  ADD             SP, SP, #0x20 ; ' '
4FCE6C:  POP             {R4,R5,R7,PC}
