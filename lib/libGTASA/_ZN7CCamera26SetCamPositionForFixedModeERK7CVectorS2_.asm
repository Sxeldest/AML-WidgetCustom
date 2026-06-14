; =========================================================
; Game Engine Function: _ZN7CCamera26SetCamPositionForFixedModeERK7CVectorS2_
; Address            : 0x3D9E82 - 0x3D9EAE
; =========================================================

3D9E82:  VLDR            D16, [R1]
3D9E86:  LDR             R1, [R1,#8]
3D9E88:  STR.W           R1, [R0,#0x7F8]
3D9E8C:  ADD.W           R1, R0, #0x7F0
3D9E90:  VSTR            D16, [R1]
3D9E94:  LDR             R1, [R2,#8]
3D9E96:  VLDR            D16, [R2]
3D9E9A:  STR.W           R1, [R0,#0x804]
3D9E9E:  MOVS            R1, #0
3D9EA0:  STRB.W          R1, [R0,#0x4C]
3D9EA4:  ADDW            R0, R0, #0x7FC
3D9EA8:  VSTR            D16, [R0]
3D9EAC:  BX              LR
