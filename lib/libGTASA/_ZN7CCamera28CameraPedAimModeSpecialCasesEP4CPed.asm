; =========================================================
; Game Engine Function: _ZN7CCamera28CameraPedAimModeSpecialCasesEP4CPed
; Address            : 0x3D33D4 - 0x3D3424
; =========================================================

3D33D4:  PUSH            {R7,LR}
3D33D6:  MOV             R7, SP
3D33D8:  LDR             R2, =(_ZN10CCollision22bCamCollideWithObjectsE_ptr - 0x3D33E4)
3D33DA:  LDR             R3, =(_ZN10CCollision23bCamCollideWithVehiclesE_ptr - 0x3D33E6)
3D33DC:  LDR.W           R12, =(_ZN10CCollision19bCamCollideWithPedsE_ptr - 0x3D33E8)
3D33E0:  ADD             R2, PC; _ZN10CCollision22bCamCollideWithObjectsE_ptr
3D33E2:  ADD             R3, PC; _ZN10CCollision23bCamCollideWithVehiclesE_ptr
3D33E4:  ADD             R12, PC; _ZN10CCollision19bCamCollideWithPedsE_ptr
3D33E6:  LDR.W           LR, [R2]; CCollision::bCamCollideWithObjects ...
3D33EA:  LDR             R3, [R3]; CCollision::bCamCollideWithVehicles ...
3D33EC:  MOVS            R2, #1
3D33EE:  LDR.W           R12, [R12]; CCollision::bCamCollideWithPeds ...
3D33F2:  STRB.W          R2, [LR]; CCollision::bCamCollideWithObjects
3D33F6:  STRB            R2, [R3]; CCollision::bCamCollideWithVehicles
3D33F8:  STRB.W          R2, [R12]; CCollision::bCamCollideWithPeds
3D33FC:  LDRB.W          R2, [R1,#0x485]
3D3400:  LSLS            R2, R2, #0x1F
3D3402:  IT EQ
3D3404:  POPEQ           {R7,PC}
3D3406:  LDR.W           R1, [R1,#0x590]
3D340A:  CMP             R1, #0
3D340C:  ITTTT NE
3D340E:  LDRNE.W         R2, [R0,#0xBD0]
3D3412:  ADDNE           R3, R2, #1
3D3414:  STRNE.W         R3, [R0,#0xBD0]
3D3418:  ADDNE.W         R0, R0, R2,LSL#2
3D341C:  IT NE
3D341E:  STRNE.W         R1, [R0,#0xBD4]
3D3422:  POP             {R7,PC}
