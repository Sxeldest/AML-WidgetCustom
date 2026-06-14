; =========================================================
; Game Engine Function: _ZN7CCamera23InitCameraVehicleTweaksEv
; Address            : 0x3D4758 - 0x3D47EA
; =========================================================

3D4758:  LDRB.W          R2, [R0,#0xCCC]
3D475C:  MOV.W           R1, #0x3F800000
3D4760:  MOV.W           R12, #0
3D4764:  MOV.W           R3, #0xFFFFFFFF
3D4768:  CMP             R2, #0
3D476A:  STR.W           R1, [R0,#0xCD0]
3D476E:  STR.W           R1, [R0,#0xCD4]
3D4772:  STR.W           R12, [R0,#0xCD8]
3D4776:  STR.W           R3, [R0,#0xCDC]
3D477A:  IT NE
3D477C:  BXNE            LR
3D477E:  PUSH            {R7,LR}
3D4780:  MOV             R7, SP
3D4782:  MOVW            R2, #0x4AFD
3D4786:  MOVW            LR, #0x1F5
3D478A:  MOVT            R2, #0x3E37
3D478E:  STR.W           R3, [R0,#0xC9C]
3D4792:  STR.W           R1, [R0,#0xCA0]
3D4796:  STR.W           R1, [R0,#0xCA4]
3D479A:  STR.W           R12, [R0,#0xCA8]
3D479E:  STR.W           R3, [R0,#0xCAC]
3D47A2:  STR.W           R1, [R0,#0xCB0]
3D47A6:  STR.W           R1, [R0,#0xCB4]
3D47AA:  STR.W           R12, [R0,#0xCB8]
3D47AE:  STR.W           R3, [R0,#0xCBC]
3D47B2:  STR.W           R1, [R0,#0xCC0]
3D47B6:  STR.W           R1, [R0,#0xCC4]
3D47BA:  STR.W           R12, [R0,#0xCC8]
3D47BE:  STR.W           LR, [R0,#0xC7C]
3D47C2:  STR.W           R1, [R0,#0xC80]
3D47C6:  STR.W           R1, [R0,#0xC84]
3D47CA:  STR.W           R2, [R0,#0xC88]
3D47CE:  STR.W           R3, [R0,#0xC8C]
3D47D2:  STR.W           R1, [R0,#0xC90]
3D47D6:  STR.W           R1, [R0,#0xC94]
3D47DA:  MOVS            R1, #1
3D47DC:  STR.W           R12, [R0,#0xC98]
3D47E0:  STRB.W          R1, [R0,#0xCCC]
3D47E4:  POP.W           {R7,LR}
3D47E8:  BX              LR
