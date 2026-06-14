; =========================================================
; Game Engine Function: _ZN9CShopping16StoreVehicleModsEv
; Address            : 0x3610B4 - 0x361180
; =========================================================

3610B4:  PUSH            {R4-R7,LR}
3610B6:  ADD             R7, SP, #0xC
3610B8:  PUSH.W          {R8,R9,R11}
3610BC:  MOV.W           R0, #0xFFFFFFFF; int
3610C0:  MOVS            R1, #0; bool
3610C2:  MOV.W           R8, #0
3610C6:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3610CA:  LDR             R1, =(word_81FFC0 - 0x3610DC)
3610CC:  ADDW            R2, R0, #0x43E
3610D0:  VLD1.16         {D16-D17}, [R2]
3610D4:  ADDW            R2, R0, #0x44C
3610D8:  ADD             R1, PC; word_81FFC0
3610DA:  VLD1.16         {D18-D19}, [R2]
3610DE:  ADD.W           R2, R1, #0xE
3610E2:  VST1.16         {D18-D19}, [R2]
3610E6:  VST1.64         {D16-D17}, [R1]
3610EA:  LDR.W           R1, [R0,#0x5A0]
3610EE:  CMP             R1, #0
3610F0:  BNE             loc_36117A
3610F2:  LDR.W           R9, =(unk_81FFDE - 0x361102)
3610F6:  ADDW            R4, R0, #0x5B4
3610FA:  LDR             R5, =(unk_81FFDE - 0x361104)
3610FC:  MOVS            R6, #0
3610FE:  ADD             R9, PC; unk_81FFDE
361100:  ADD             R5, PC; unk_81FFDE
361102:  B               loc_361108
361104:  STRB            R0, [R5,R6]
361106:  ADDS            R6, #1
361108:  SUBS            R0, R6, #2; switch 16 cases
36110A:  CMP             R0, #0xF
36110C:  BHI             def_36110E; jumptable 0036110E default case, cases 3,6,8-11,14,15
36110E:  TBB.W           [PC,R0]; switch jump
361112:  DCB 8; jump table for switch statement
361113:  DCB 0xD
361114:  DCB 0x13
361115:  DCB 0x18
361116:  DCB 0xD
361117:  DCB 0x1D
361118:  DCB 0xD
361119:  DCB 0xD
36111A:  DCB 0xD
36111B:  DCB 0xD
36111C:  DCB 0x22
36111D:  DCB 0x27
36111E:  DCB 0xD
36111F:  DCB 0xD
361120:  DCB 0x2C
361121:  DCB 0x2F
361122:  MOV             R0, R4; jumptable 0036110E case 2
361124:  MOVS            R1, #2; int
361126:  BLX             j__ZNK14CDamageManager14GetWheelStatusEi; CDamageManager::GetWheelStatus(int)
36112A:  B               loc_361104
36112C:  STRB.W          R8, [R9,R6]; jumptable 0036110E default case, cases 3,6,8-11,14,15
361130:  ADDS            R6, #1
361132:  CMP             R6, #0x19
361134:  BNE             loc_361108
361136:  B               loc_36117A
361138:  MOV             R0, R4; jumptable 0036110E case 4
36113A:  MOVS            R1, #3; int
36113C:  BLX             j__ZNK14CDamageManager14GetWheelStatusEi; CDamageManager::GetWheelStatus(int)
361140:  B               loc_361104
361142:  MOV             R0, R4; jumptable 0036110E case 5
361144:  MOVS            R1, #0; int
361146:  BLX             j__ZNK14CDamageManager14GetWheelStatusEi; CDamageManager::GetWheelStatus(int)
36114A:  B               loc_361104
36114C:  MOV             R0, R4; jumptable 0036110E case 7
36114E:  MOVS            R1, #1; int
361150:  BLX             j__ZNK14CDamageManager14GetWheelStatusEi; CDamageManager::GetWheelStatus(int)
361154:  B               loc_361104
361156:  MOV             R0, R4; jumptable 0036110E case 12
361158:  MOVS            R1, #5; int
36115A:  BLX             j__ZNK14CDamageManager14GetPanelStatusEi; CDamageManager::GetPanelStatus(int)
36115E:  B               loc_361104
361160:  MOV             R0, R4; jumptable 0036110E case 13
361162:  MOVS            R1, #6; int
361164:  BLX             j__ZNK14CDamageManager14GetPanelStatusEi; CDamageManager::GetPanelStatus(int)
361168:  B               loc_361104
36116A:  MOV             R0, R4; jumptable 0036110E case 16
36116C:  MOVS            R1, #0
36116E:  B               loc_361174
361170:  MOV             R0, R4; jumptable 0036110E case 17
361172:  MOVS            R1, #1
361174:  BLX             j__ZNK14CDamageManager13GetDoorStatusE6eDoors; CDamageManager::GetDoorStatus(eDoors)
361178:  B               loc_361104
36117A:  POP.W           {R8,R9,R11}
36117E:  POP             {R4-R7,PC}
