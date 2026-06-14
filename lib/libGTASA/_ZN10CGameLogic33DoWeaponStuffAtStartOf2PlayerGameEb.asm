; =========================================================
; Game Engine Function: _ZN10CGameLogic33DoWeaponStuffAtStartOf2PlayerGameEb
; Address            : 0x30A0F0 - 0x30A30C
; =========================================================

30A0F0:  PUSH            {R4-R7,LR}
30A0F2:  ADD             R7, SP, #0xC
30A0F4:  PUSH.W          {R11}
30A0F8:  MOV             R4, R0
30A0FA:  MOVS            R0, #0; int
30A0FC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30A100:  LDR             R1, =(_ZN10CGameLogic16SavedWeaponSlotsE_ptr - 0x30A112)
30A102:  ADDW            R2, R0, #0x5A4
30A106:  VLD1.32         {D16-D17}, [R2]
30A10A:  ADD.W           R2, R0, #0x5B0
30A10E:  ADD             R1, PC; _ZN10CGameLogic16SavedWeaponSlotsE_ptr
30A110:  CMP             R4, #1
30A112:  VLD1.32         {D18-D19}, [R2]
30A116:  LDR             R1, [R1]; CGameLogic::SavedWeaponSlots ...
30A118:  ADD.W           R2, R1, #0xC
30A11C:  VST1.32         {D16-D17}, [R1]
30A120:  VST1.32         {D18-D19}, [R2]
30A124:  ADD.W           R2, R0, #0x5C0
30A128:  VLD1.32         {D16-D17}, [R2]
30A12C:  ADDW            R2, R0, #0x5CC
30A130:  VLD1.32         {D18-D19}, [R2]
30A134:  ADD.W           R2, R1, #0x28 ; '('
30A138:  VST1.32         {D18-D19}, [R2]
30A13C:  ADD.W           R2, R1, #0x1C
30A140:  VST1.32         {D16-D17}, [R2]
30A144:  ADDW            R2, R0, #0x5DC
30A148:  VLD1.32         {D16-D17}, [R2]
30A14C:  ADD.W           R2, R0, #0x5E8
30A150:  VLD1.32         {D18-D19}, [R2]
30A154:  ADD.W           R2, R1, #0x44 ; 'D'
30A158:  VST1.32         {D18-D19}, [R2]
30A15C:  ADD.W           R2, R1, #0x38 ; '8'
30A160:  VST1.32         {D16-D17}, [R2]
30A164:  ADD.W           R2, R0, #0x5F8
30A168:  VLD1.32         {D16-D17}, [R2]
30A16C:  ADDW            R2, R0, #0x604
30A170:  VLD1.32         {D18-D19}, [R2]
30A174:  ADD.W           R2, R1, #0x60 ; '`'
30A178:  VST1.32         {D18-D19}, [R2]
30A17C:  ADD.W           R2, R1, #0x54 ; 'T'
30A180:  VST1.32         {D16-D17}, [R2]
30A184:  ADDW            R2, R0, #0x614
30A188:  VLD1.32         {D16-D17}, [R2]
30A18C:  ADD.W           R2, R0, #0x620
30A190:  VLD1.32         {D18-D19}, [R2]
30A194:  ADD.W           R2, R1, #0x7C ; '|'
30A198:  VST1.32         {D18-D19}, [R2]
30A19C:  ADD.W           R2, R1, #0x70 ; 'p'
30A1A0:  VST1.32         {D16-D17}, [R2]
30A1A4:  ADD.W           R2, R0, #0x630
30A1A8:  VLD1.32         {D16-D17}, [R2]
30A1AC:  ADDW            R2, R0, #0x63C
30A1B0:  VLD1.32         {D18-D19}, [R2]
30A1B4:  ADD.W           R2, R1, #0x98
30A1B8:  VST1.32         {D18-D19}, [R2]
30A1BC:  ADD.W           R2, R1, #0x8C
30A1C0:  VST1.32         {D16-D17}, [R2]
30A1C4:  ADDW            R2, R0, #0x64C
30A1C8:  VLD1.32         {D16-D17}, [R2]
30A1CC:  ADD.W           R2, R0, #0x658
30A1D0:  VLD1.32         {D18-D19}, [R2]
30A1D4:  ADD.W           R2, R1, #0xB4
30A1D8:  VST1.32         {D18-D19}, [R2]
30A1DC:  ADD.W           R2, R1, #0xA8
30A1E0:  VST1.32         {D16-D17}, [R2]
30A1E4:  ADD.W           R2, R0, #0x668
30A1E8:  VLD1.32         {D16-D17}, [R2]
30A1EC:  ADDW            R2, R0, #0x674
30A1F0:  VLD1.32         {D18-D19}, [R2]
30A1F4:  ADD.W           R2, R1, #0xD0
30A1F8:  VST1.32         {D18-D19}, [R2]
30A1FC:  ADD.W           R2, R1, #0xC4
30A200:  VST1.32         {D16-D17}, [R2]
30A204:  ADDW            R2, R0, #0x684
30A208:  VLD1.32         {D16-D17}, [R2]
30A20C:  ADD.W           R2, R0, #0x690
30A210:  VLD1.32         {D18-D19}, [R2]
30A214:  ADD.W           R2, R1, #0xEC
30A218:  VST1.32         {D18-D19}, [R2]
30A21C:  ADD.W           R2, R1, #0xE0
30A220:  VST1.32         {D16-D17}, [R2]
30A224:  ADD.W           R2, R0, #0x6A0
30A228:  VLD1.32         {D16-D17}, [R2]
30A22C:  ADDW            R2, R0, #0x6AC
30A230:  VLD1.32         {D18-D19}, [R2]
30A234:  ADD.W           R2, R1, #0x108
30A238:  VST1.32         {D18-D19}, [R2]
30A23C:  ADD.W           R2, R1, #0xFC
30A240:  VST1.32         {D16-D17}, [R2]
30A244:  ADDW            R2, R0, #0x6BC
30A248:  VLD1.32         {D16-D17}, [R2]
30A24C:  ADD.W           R2, R0, #0x6C8
30A250:  VLD1.32         {D18-D19}, [R2]
30A254:  ADD.W           R2, R1, #0x124
30A258:  VST1.32         {D18-D19}, [R2]
30A25C:  ADD.W           R2, R1, #0x118
30A260:  VST1.32         {D16-D17}, [R2]
30A264:  ADD.W           R2, R0, #0x6D8
30A268:  VLD1.32         {D16-D17}, [R2]
30A26C:  ADDW            R2, R0, #0x6E4
30A270:  VLD1.32         {D18-D19}, [R2]
30A274:  ADD.W           R2, R1, #0x140
30A278:  VST1.32         {D18-D19}, [R2]
30A27C:  ADD.W           R2, R1, #0x134
30A280:  VST1.32         {D16-D17}, [R2]
30A284:  ADDW            R2, R0, #0x6F4
30A288:  ADD.W           R0, R0, #0x700
30A28C:  VLD1.32         {D18-D19}, [R0]
30A290:  ADD.W           R0, R1, #0x15C
30A294:  VLD1.32         {D16-D17}, [R2]
30A298:  VST1.32         {D18-D19}, [R0]
30A29C:  ADD.W           R0, R1, #0x150
30A2A0:  VST1.32         {D16-D17}, [R0]
30A2A4:  BNE             loc_30A306
30A2A6:  MOVS            R0, #0; int
30A2A8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30A2AC:  MOVW            R6, #0x5A4
30A2B0:  LDR             R0, [R0,R6]
30A2B2:  CBZ             R0, loc_30A2D8
30A2B4:  MOVS            R0, #1; int
30A2B6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30A2BA:  MOV             R4, R0
30A2BC:  MOVS            R0, #0; int
30A2BE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30A2C2:  LDR             R5, [R0,R6]
30A2C4:  MOVS            R0, #0; int
30A2C6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30A2CA:  ADD             R0, R6
30A2CC:  MOV             R1, R5
30A2CE:  MOVS            R3, #1
30A2D0:  LDR             R2, [R0,#0xC]
30A2D2:  MOV             R0, R4
30A2D4:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
30A2D8:  MOVS            R0, #0; int
30A2DA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30A2DE:  ADDS            R6, #0x1C
30A2E0:  CMP.W           R6, #0x710
30A2E4:  BNE             loc_30A2B0
30A2E6:  BLX             j__ZN10CPlayerPed27PickWeaponAllowedFor2PlayerEv; CPlayerPed::PickWeaponAllowedFor2Player(void)
30A2EA:  MOVS            R0, #0; int
30A2EC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30A2F0:  LDR.W           R0, [R0,#0x444]
30A2F4:  LDRB.W          R4, [R0,#0x20]
30A2F8:  MOVS            R0, #1; int
30A2FA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30A2FE:  LDR.W           R0, [R0,#0x444]
30A302:  STRB.W          R4, [R0,#0x20]
30A306:  POP.W           {R11}
30A30A:  POP             {R4-R7,PC}
