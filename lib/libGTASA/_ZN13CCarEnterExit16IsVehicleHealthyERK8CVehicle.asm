; =========================================================
; Game Engine Function: _ZN13CCarEnterExit16IsVehicleHealthyERK8CVehicle
; Address            : 0x508790 - 0x5087A2
; =========================================================

508790:  LDRB.W          R0, [R0,#0x3A]
508794:  AND.W           R1, R0, #0xF8
508798:  MOVS            R0, #0
50879A:  CMP             R1, #0x28 ; '('
50879C:  IT NE
50879E:  MOVNE           R0, #1
5087A0:  BX              LR
