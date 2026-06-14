; =========================================================
; Game Engine Function: _ZNK11CQuaternion3GetEP5RwV3dPf
; Address            : 0x450478 - 0x4504D6
; =========================================================

450478:  PUSH            {R4-R7,LR}
45047A:  ADD             R7, SP, #0xC
45047C:  PUSH.W          {R8}
450480:  MOV             R6, R0
450482:  MOV             R8, R2
450484:  VLDR            S0, [R6,#0xC]
450488:  MOV             R5, R1
45048A:  VADD.F32        S0, S0, S0
45048E:  VMOV            R0, S0; x
450492:  BLX             acosf
450496:  MOV             R4, R0
450498:  BLX             sinf
45049C:  VMOV.F32        S0, #1.0
4504A0:  STR.W           R4, [R8]
4504A4:  VMOV            S2, R0
4504A8:  VDIV.F32        S0, S0, S2
4504AC:  VLDR            S2, [R6]
4504B0:  VMUL.F32        S2, S2, S0
4504B4:  VSTR            S2, [R5]
4504B8:  VLDR            S2, [R6,#4]
4504BC:  VMUL.F32        S2, S0, S2
4504C0:  VSTR            S2, [R5,#4]
4504C4:  VLDR            S2, [R6,#8]
4504C8:  VMUL.F32        S0, S0, S2
4504CC:  VSTR            S0, [R5,#8]
4504D0:  POP.W           {R8}
4504D4:  POP             {R4-R7,PC}
