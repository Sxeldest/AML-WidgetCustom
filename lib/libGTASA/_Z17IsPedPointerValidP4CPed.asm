; =========================================================
; Game Engine Function: _Z17IsPedPointerValidP4CPed
; Address            : 0x4A7254 - 0x4A72C0
; =========================================================

4A7254:  PUSH            {R4,R6,R7,LR}
4A7256:  ADD             R7, SP, #8
4A7258:  MOV             R4, R0
4A725A:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x4A7260)
4A725C:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
4A725E:  LDR             R0, [R0]; CPools::ms_pPedPool ...
4A7260:  LDR             R0, [R0]; CPools::ms_pPedPool
4A7262:  LDR             R1, [R0]
4A7264:  SUBS            R1, R4, R1
4A7266:  CMP             R1, #0
4A7268:  BLT             loc_4A72B4
4A726A:  MOVW            R2, #0x7F3B
4A726E:  ASRS            R1, R1, #2
4A7270:  MOVT            R2, #0xBED8
4A7274:  MULS            R1, R2
4A7276:  LDR             R2, [R0,#8]
4A7278:  CMP             R1, R2
4A727A:  BGE             loc_4A72B4
4A727C:  LDR             R0, [R0,#4]
4A727E:  LDRSB           R0, [R0,R1]
4A7280:  CMP             R0, #0
4A7282:  BLT             loc_4A72B4
4A7284:  LDRB.W          R0, [R4,#0x485]
4A7288:  LSLS            R0, R0, #0x1F
4A728A:  ITT NE
4A728C:  LDRNE.W         R0, [R4,#0x590]; CEntity *
4A7290:  CMPNE           R0, #0
4A7292:  BNE             loc_4A72B8
4A7294:  LDR.W           R0, [R4,#0xB4]
4A7298:  CMP             R0, #0
4A729A:  ITT NE
4A729C:  MOVNE           R0, #1
4A729E:  POPNE           {R4,R6,R7,PC}
4A72A0:  MOV.W           R0, #0xFFFFFFFF; int
4A72A4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4A72A8:  MOV             R1, R0
4A72AA:  MOVS            R0, #0
4A72AC:  CMP             R1, R4
4A72AE:  IT EQ
4A72B0:  MOVEQ           R0, #1
4A72B2:  POP             {R4,R6,R7,PC}
4A72B4:  MOVS            R0, #0
4A72B6:  POP             {R4,R6,R7,PC}
4A72B8:  POP.W           {R4,R6,R7,LR}
4A72BC:  B.W             sub_1986D4
