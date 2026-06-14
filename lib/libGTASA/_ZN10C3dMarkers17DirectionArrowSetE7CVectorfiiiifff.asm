; =========================================================
; Game Engine Function: _ZN10C3dMarkers17DirectionArrowSetE7CVectorfiiiifff
; Address            : 0x5BF3CC - 0x5BF4B8
; =========================================================

5BF3CC:  LDR.W           R12, =(_ZN10C3dMarkers18ms_directionArrowsE_ptr - 0x5BF3D4)
5BF3D0:  ADD             R12, PC; _ZN10C3dMarkers18ms_directionArrowsE_ptr
5BF3D2:  LDR.W           R12, [R12]; C3dMarkers::ms_directionArrows ...
5BF3D6:  LDRB.W          R12, [R12]; C3dMarkers::ms_directionArrows
5BF3DA:  CMP.W           R12, #0
5BF3DE:  BEQ             loc_5BF438
5BF3E0:  LDR.W           R12, =(_ZN10C3dMarkers18ms_directionArrowsE_ptr - 0x5BF3E8)
5BF3E4:  ADD             R12, PC; _ZN10C3dMarkers18ms_directionArrowsE_ptr
5BF3E6:  LDR.W           R12, [R12]; C3dMarkers::ms_directionArrows ...
5BF3EA:  LDRB.W          R12, [R12,#(byte_A59FF0 - 0xA59FC0)]
5BF3EE:  CMP.W           R12, #0
5BF3F2:  BEQ             loc_5BF43E
5BF3F4:  LDR.W           R12, =(_ZN10C3dMarkers18ms_directionArrowsE_ptr - 0x5BF3FC)
5BF3F8:  ADD             R12, PC; _ZN10C3dMarkers18ms_directionArrowsE_ptr
5BF3FA:  LDR.W           R12, [R12]; C3dMarkers::ms_directionArrows ...
5BF3FE:  LDRB.W          R12, [R12,#(byte_A5A020 - 0xA59FC0)]
5BF402:  CMP.W           R12, #0
5BF406:  BEQ             loc_5BF444
5BF408:  LDR.W           R12, =(_ZN10C3dMarkers18ms_directionArrowsE_ptr - 0x5BF410)
5BF40C:  ADD             R12, PC; _ZN10C3dMarkers18ms_directionArrowsE_ptr
5BF40E:  LDR.W           R12, [R12]; C3dMarkers::ms_directionArrows ...
5BF412:  LDRB.W          R12, [R12,#(byte_A5A050 - 0xA59FC0)]
5BF416:  CMP.W           R12, #0
5BF41A:  BEQ             loc_5BF44A
5BF41C:  LDR.W           R12, =(_ZN10C3dMarkers18ms_directionArrowsE_ptr - 0x5BF424)
5BF420:  ADD             R12, PC; _ZN10C3dMarkers18ms_directionArrowsE_ptr
5BF422:  LDR.W           R12, [R12]; C3dMarkers::ms_directionArrows ...
5BF426:  LDRB.W          R12, [R12,#(dword_A5A080 - 0xA59FC0)]
5BF42A:  CMP.W           R12, #0
5BF42E:  IT NE
5BF430:  BXNE            LR
5BF432:  MOV.W           R12, #4
5BF436:  B               loc_5BF44E
5BF438:  MOV.W           R12, #0
5BF43C:  B               loc_5BF44E
5BF43E:  MOV.W           R12, #1
5BF442:  B               loc_5BF44E
5BF444:  MOV.W           R12, #2
5BF448:  B               loc_5BF44E
5BF44A:  MOV.W           R12, #3
5BF44E:  PUSH            {R4-R7,LR}
5BF450:  ADD             R7, SP, #0x14+var_8
5BF452:  PUSH.W          {R8,R9,R11}
5BF456:  VMOV.F32        S8, #3.0
5BF45A:  ADD.W           R4, R12, R12,LSL#1
5BF45E:  VMOV            S10, R2
5BF462:  MOVS            R5, #1
5BF464:  VMOV            S6, R3
5BF468:  LDR             R3, =(_ZN10C3dMarkers18ms_directionArrowsE_ptr - 0x5BF474)
5BF46A:  LSLS            R2, R4, #4
5BF46C:  LDRD.W          R8, LR, [R7,#0x10]
5BF470:  ADD             R3, PC; _ZN10C3dMarkers18ms_directionArrowsE_ptr
5BF472:  VLDR            S0, [R7,#0x20]
5BF476:  VLDR            S2, [R7,#0x1C]
5BF47A:  LDR             R3, [R3]; C3dMarkers::ms_directionArrows ...
5BF47C:  VADD.F32        S8, S10, S8
5BF480:  LDRD.W          R6, R9, [R7,#8]
5BF484:  VLDR            S4, [R7,#0x18]
5BF488:  STRB            R5, [R3,R2]
5BF48A:  ADD.W           R2, R3, R4,LSL#4
5BF48E:  STRD.W          R0, R1, [R2,#4]
5BF492:  STRD.W          R6, R9, [R2,#0x20]
5BF496:  STRD.W          R8, LR, [R2,#0x28]
5BF49A:  VSTR            S8, [R2,#0xC]
5BF49E:  VSTR            S6, [R2,#0x10]
5BF4A2:  VSTR            S4, [R2,#0x14]
5BF4A6:  VSTR            S2, [R2,#0x18]
5BF4AA:  VSTR            S0, [R2,#0x1C]
5BF4AE:  POP.W           {R8,R9,R11}
5BF4B2:  POP.W           {R4-R7,LR}
5BF4B6:  BX              LR
