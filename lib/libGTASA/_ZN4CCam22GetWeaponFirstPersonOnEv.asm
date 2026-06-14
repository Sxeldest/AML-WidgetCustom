; =========================================================
; Game Engine Function: _ZN4CCam22GetWeaponFirstPersonOnEv
; Address            : 0x3D21F0 - 0x3D221E
; =========================================================

3D21F0:  LDR.W           R0, [R0,#0x1F4]
3D21F4:  CBZ             R0, loc_3D221A
3D21F6:  LDRB.W          R1, [R0,#0x3A]
3D21FA:  AND.W           R1, R1, #7
3D21FE:  CMP             R1, #3
3D2200:  BNE             loc_3D221A
3D2202:  LDRSB.W         R1, [R0,#0x71C]
3D2206:  RSB.W           R1, R1, R1,LSL#3
3D220A:  ADD.W           R0, R0, R1,LSL#2
3D220E:  LDRB.W          R0, [R0,#0x5B8]
3D2212:  CMP             R0, #0
3D2214:  IT NE
3D2216:  MOVNE           R0, #1
3D2218:  BX              LR
3D221A:  MOVS            R0, #0
3D221C:  BX              LR
