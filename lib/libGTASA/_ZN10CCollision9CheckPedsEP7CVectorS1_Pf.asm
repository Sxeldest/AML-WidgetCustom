; =========================================================
; Game Engine Function: _ZN10CCollision9CheckPedsEP7CVectorS1_Pf
; Address            : 0x2DFAA0 - 0x2DFB1A
; =========================================================

2DFAA0:  PUSH            {R4-R7,LR}
2DFAA2:  ADD             R7, SP, #0xC
2DFAA4:  PUSH.W          {R8-R11}
2DFAA8:  SUB             SP, SP, #0xC; CVector *
2DFAAA:  MOV             R10, R0
2DFAAC:  LDR             R0, =(_ZN10CCollision19bCamCollideWithPedsE_ptr - 0x2DFAB4)
2DFAAE:  MOV             R8, R1
2DFAB0:  ADD             R0, PC; _ZN10CCollision19bCamCollideWithPedsE_ptr
2DFAB2:  LDR             R0, [R0]; CCollision::bCamCollideWithPeds ...
2DFAB4:  LDRB            R0, [R0]; CCollision::bCamCollideWithPeds
2DFAB6:  CBZ             R0, loc_2DFACE
2DFAB8:  LDR             R0, =(gnTop_ptr - 0x2DFAC0)
2DFABA:  LDR             R1, =(gnBottom_ptr - 0x2DFAC2)
2DFABC:  ADD             R0, PC; gnTop_ptr
2DFABE:  ADD             R1, PC; gnBottom_ptr
2DFAC0:  LDR             R0, [R0]; gnTop
2DFAC2:  LDR             R1, [R1]; gnBottom
2DFAC4:  LDR             R0, [R0]
2DFAC6:  LDR             R6, [R1]
2DFAC8:  STR             R0, [SP,#0x28+var_20]
2DFACA:  CMP             R6, R0
2DFACC:  BLE             loc_2DFAD2
2DFACE:  MOVS            R5, #0
2DFAD0:  B               loc_2DFB0E
2DFAD2:  LDR             R0, =(gnRight_ptr - 0x2DFADC)
2DFAD4:  MOVS            R5, #0
2DFAD6:  LDR             R1, =(gnLeft_ptr - 0x2DFADE)
2DFAD8:  ADD             R0, PC; gnRight_ptr
2DFADA:  ADD             R1, PC; gnLeft_ptr
2DFADC:  LDR             R0, [R0]; gnRight
2DFADE:  LDR             R1, [R1]; gnLeft
2DFAE0:  LDR.W           R11, [R0]
2DFAE4:  LDR.W           R9, [R1]
2DFAE8:  CMP             R9, R11
2DFAEA:  MOV             R4, R9
2DFAEC:  BGT             loc_2DFB04
2DFAEE:  MOV             R0, R4; this
2DFAF0:  MOV             R1, R6; int
2DFAF2:  MOV             R2, R10; int
2DFAF4:  MOV             R3, R8; CVector *
2DFAF6:  BLX             j__ZN10CCollision24CheckCameraCollisionPedsEiiP7CVectorS1_Pf; CCollision::CheckCameraCollisionPeds(int,int,CVector *,CVector *,float *)
2DFAFA:  ORRS            R5, R0
2DFAFC:  ADDS            R0, R4, #1
2DFAFE:  CMP             R4, R11
2DFB00:  MOV             R4, R0
2DFB02:  BLT             loc_2DFAEE
2DFB04:  LDR             R1, [SP,#0x28+var_20]
2DFB06:  ADDS            R0, R6, #1
2DFB08:  CMP             R6, R1
2DFB0A:  MOV             R6, R0
2DFB0C:  BLT             loc_2DFAE8
2DFB0E:  AND.W           R0, R5, #1
2DFB12:  ADD             SP, SP, #0xC
2DFB14:  POP.W           {R8-R11}
2DFB18:  POP             {R4-R7,PC}
