; =========================================================
; Game Engine Function: _ZN10CGameLogic16StorePedsWeaponsEP4CPed
; Address            : 0x30A310 - 0x30A4B4
; =========================================================

30A310:  LDR             R1, =(_ZN10CGameLogic16SavedWeaponSlotsE_ptr - 0x30A322)
30A312:  ADDW            R2, R0, #0x5A4
30A316:  VLD1.32         {D16-D17}, [R2]
30A31A:  ADD.W           R2, R0, #0x5B0
30A31E:  ADD             R1, PC; _ZN10CGameLogic16SavedWeaponSlotsE_ptr
30A320:  VLD1.32         {D18-D19}, [R2]
30A324:  LDR             R1, [R1]; CGameLogic::SavedWeaponSlots ...
30A326:  ADD.W           R2, R1, #0xC
30A32A:  VST1.32         {D16-D17}, [R1]
30A32E:  VST1.32         {D18-D19}, [R2]
30A332:  ADD.W           R2, R0, #0x5C0
30A336:  VLD1.32         {D16-D17}, [R2]
30A33A:  ADDW            R2, R0, #0x5CC
30A33E:  VLD1.32         {D18-D19}, [R2]
30A342:  ADD.W           R2, R1, #0x28 ; '('
30A346:  VST1.32         {D18-D19}, [R2]
30A34A:  ADD.W           R2, R1, #0x1C
30A34E:  VST1.32         {D16-D17}, [R2]
30A352:  ADDW            R2, R0, #0x5DC
30A356:  VLD1.32         {D16-D17}, [R2]
30A35A:  ADD.W           R2, R0, #0x5E8
30A35E:  VLD1.32         {D18-D19}, [R2]
30A362:  ADD.W           R2, R1, #0x44 ; 'D'
30A366:  VST1.32         {D18-D19}, [R2]
30A36A:  ADD.W           R2, R1, #0x38 ; '8'
30A36E:  VST1.32         {D16-D17}, [R2]
30A372:  ADD.W           R2, R0, #0x5F8
30A376:  VLD1.32         {D16-D17}, [R2]
30A37A:  ADDW            R2, R0, #0x604
30A37E:  VLD1.32         {D18-D19}, [R2]
30A382:  ADD.W           R2, R1, #0x60 ; '`'
30A386:  VST1.32         {D18-D19}, [R2]
30A38A:  ADD.W           R2, R1, #0x54 ; 'T'
30A38E:  VST1.32         {D16-D17}, [R2]
30A392:  ADDW            R2, R0, #0x614
30A396:  VLD1.32         {D16-D17}, [R2]
30A39A:  ADD.W           R2, R0, #0x620
30A39E:  VLD1.32         {D18-D19}, [R2]
30A3A2:  ADD.W           R2, R1, #0x7C ; '|'
30A3A6:  VST1.32         {D18-D19}, [R2]
30A3AA:  ADD.W           R2, R1, #0x70 ; 'p'
30A3AE:  VST1.32         {D16-D17}, [R2]
30A3B2:  ADD.W           R2, R0, #0x630
30A3B6:  VLD1.32         {D16-D17}, [R2]
30A3BA:  ADDW            R2, R0, #0x63C
30A3BE:  VLD1.32         {D18-D19}, [R2]
30A3C2:  ADD.W           R2, R1, #0x98
30A3C6:  VST1.32         {D18-D19}, [R2]
30A3CA:  ADD.W           R2, R1, #0x8C
30A3CE:  VST1.32         {D16-D17}, [R2]
30A3D2:  ADDW            R2, R0, #0x64C
30A3D6:  VLD1.32         {D16-D17}, [R2]
30A3DA:  ADD.W           R2, R0, #0x658
30A3DE:  VLD1.32         {D18-D19}, [R2]
30A3E2:  ADD.W           R2, R1, #0xB4
30A3E6:  VST1.32         {D18-D19}, [R2]
30A3EA:  ADD.W           R2, R1, #0xA8
30A3EE:  VST1.32         {D16-D17}, [R2]
30A3F2:  ADD.W           R2, R0, #0x668
30A3F6:  VLD1.32         {D16-D17}, [R2]
30A3FA:  ADDW            R2, R0, #0x674
30A3FE:  VLD1.32         {D18-D19}, [R2]
30A402:  ADD.W           R2, R1, #0xD0
30A406:  VST1.32         {D18-D19}, [R2]
30A40A:  ADD.W           R2, R1, #0xC4
30A40E:  VST1.32         {D16-D17}, [R2]
30A412:  ADDW            R2, R0, #0x684
30A416:  VLD1.32         {D16-D17}, [R2]
30A41A:  ADD.W           R2, R0, #0x690
30A41E:  VLD1.32         {D18-D19}, [R2]
30A422:  ADD.W           R2, R1, #0xEC
30A426:  VST1.32         {D18-D19}, [R2]
30A42A:  ADD.W           R2, R1, #0xE0
30A42E:  VST1.32         {D16-D17}, [R2]
30A432:  ADD.W           R2, R0, #0x6A0
30A436:  VLD1.32         {D16-D17}, [R2]
30A43A:  ADDW            R2, R0, #0x6AC
30A43E:  VLD1.32         {D18-D19}, [R2]
30A442:  ADD.W           R2, R1, #0x108
30A446:  VST1.32         {D18-D19}, [R2]
30A44A:  ADD.W           R2, R1, #0xFC
30A44E:  VST1.32         {D16-D17}, [R2]
30A452:  ADDW            R2, R0, #0x6BC
30A456:  VLD1.32         {D16-D17}, [R2]
30A45A:  ADD.W           R2, R0, #0x6C8
30A45E:  VLD1.32         {D18-D19}, [R2]
30A462:  ADD.W           R2, R1, #0x124
30A466:  VST1.32         {D18-D19}, [R2]
30A46A:  ADD.W           R2, R1, #0x118
30A46E:  VST1.32         {D16-D17}, [R2]
30A472:  ADD.W           R2, R0, #0x6D8
30A476:  VLD1.32         {D16-D17}, [R2]
30A47A:  ADDW            R2, R0, #0x6E4
30A47E:  VLD1.32         {D18-D19}, [R2]
30A482:  ADD.W           R2, R1, #0x140
30A486:  VST1.32         {D18-D19}, [R2]
30A48A:  ADD.W           R2, R1, #0x134
30A48E:  VST1.32         {D16-D17}, [R2]
30A492:  ADDW            R2, R0, #0x6F4
30A496:  ADD.W           R0, R0, #0x700
30A49A:  VLD1.32         {D18-D19}, [R0]
30A49E:  ADD.W           R0, R1, #0x15C
30A4A2:  VLD1.32         {D16-D17}, [R2]
30A4A6:  VST1.32         {D18-D19}, [R0]
30A4AA:  ADD.W           R0, R1, #0x150
30A4AE:  VST1.32         {D16-D17}, [R0]
30A4B2:  BX              LR
