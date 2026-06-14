; =========================================================
; Game Engine Function: _ZN8CIdleCam15SetTargetPlayerEv
; Address            : 0x3D369C - 0x3D36BA
; =========================================================

3D369C:  PUSH            {R4,R6,R7,LR}
3D369E:  ADD             R7, SP, #8
3D36A0:  MOV             R4, R0
3D36A2:  MOV.W           R0, #0xFFFFFFFF; int
3D36A6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3D36AA:  MOV             R1, R0; CEntity *
3D36AC:  MOV             R0, R4; this
3D36AE:  BLX             j__ZN8CIdleCam9SetTargetEP7CEntity; CIdleCam::SetTarget(CEntity *)
3D36B2:  MOVS            R0, #1
3D36B4:  STRB.W          R0, [R4,#0x78]
3D36B8:  POP             {R4,R6,R7,PC}
