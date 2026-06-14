; =========================================================
; Game Engine Function: _ZN7CCamera25CameraPedModeSpecialCasesEP4CPed
; Address            : 0x3D2F8C - 0x3D2FA8
; =========================================================

3D2F8C:  LDR             R0, =(_ZN10CCollision22bCamCollideWithObjectsE_ptr - 0x3D2F98)
3D2F8E:  MOVS            R3, #1
3D2F90:  LDR             R1, =(_ZN10CCollision23bCamCollideWithVehiclesE_ptr - 0x3D2F9A)
3D2F92:  LDR             R2, =(_ZN10CCollision19bCamCollideWithPedsE_ptr - 0x3D2F9C)
3D2F94:  ADD             R0, PC; _ZN10CCollision22bCamCollideWithObjectsE_ptr
3D2F96:  ADD             R1, PC; _ZN10CCollision23bCamCollideWithVehiclesE_ptr
3D2F98:  ADD             R2, PC; _ZN10CCollision19bCamCollideWithPedsE_ptr
3D2F9A:  LDR             R0, [R0]; CCollision::bCamCollideWithObjects ...
3D2F9C:  LDR             R1, [R1]; CCollision::bCamCollideWithVehicles ...
3D2F9E:  LDR             R2, [R2]; CCollision::bCamCollideWithPeds ...
3D2FA0:  STRB            R3, [R0]; CCollision::bCamCollideWithObjects
3D2FA2:  STRB            R3, [R1]; CCollision::bCamCollideWithVehicles
3D2FA4:  STRB            R3, [R2]; CCollision::bCamCollideWithPeds
3D2FA6:  BX              LR
