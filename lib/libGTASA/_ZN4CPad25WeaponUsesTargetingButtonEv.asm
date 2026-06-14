; =========================================================
; Game Engine Function: _ZN4CPad25WeaponUsesTargetingButtonEv
; Address            : 0x3FAE20 - 0x3FAE62
; =========================================================

3FAE20:  PUSH            {R7,LR}
3FAE22:  MOV             R7, SP
3FAE24:  MOV.W           R0, #0xFFFFFFFF; int
3FAE28:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FAE2C:  CBZ             R0, loc_3FAE5E
3FAE2E:  MOV.W           R0, #0xFFFFFFFF; int
3FAE32:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FAE36:  LDRSB.W         R1, [R0,#0x71C]
3FAE3A:  RSB.W           R1, R1, R1,LSL#3
3FAE3E:  ADD.W           R0, R0, R1,LSL#2
3FAE42:  LDR.W           R0, [R0,#0x5A4]
3FAE46:  SUBS            R0, #0x21 ; '!'
3FAE48:  CMP             R0, #0xC
3FAE4A:  BHI             loc_3FAE5E
3FAE4C:  BFC.W           R0, #0xD, #0x13
3FAE50:  MOVW            R1, #0x1C0F
3FAE54:  LSR.W           R0, R1, R0
3FAE58:  AND.W           R0, R0, #1
3FAE5C:  POP             {R7,PC}
3FAE5E:  MOVS            R0, #0
3FAE60:  POP             {R7,PC}
