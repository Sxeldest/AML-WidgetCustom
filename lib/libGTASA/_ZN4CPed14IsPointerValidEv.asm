; =========================================================
; Game Engine Function: _ZN4CPed14IsPointerValidEv
; Address            : 0x4A7300 - 0x4A733C
; =========================================================

4A7300:  PUSH            {R4,R6,R7,LR}
4A7302:  ADD             R7, SP, #8
4A7304:  MOV             R4, R0
4A7306:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x4A7310)
4A7308:  MOVW            R1, #0x7F3B
4A730C:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
4A730E:  MOVT            R1, #0xBED8
4A7312:  LDR             R0, [R0]; CPools::ms_pPedPool ...
4A7314:  LDR             R0, [R0]; CPools::ms_pPedPool
4A7316:  LDR             R0, [R0]
4A7318:  SUBS            R0, R4, R0
4A731A:  ASRS            R0, R0, #2
4A731C:  MULS            R0, R1
4A731E:  CMP             R0, #0x8B
4A7320:  BLS             loc_4A7326
4A7322:  MOVS            R0, #0
4A7324:  POP             {R4,R6,R7,PC}
4A7326:  LDR.W           R0, [R4,#0xB4]
4A732A:  CBNZ            R0, loc_4A7338
4A732C:  MOV.W           R0, #0xFFFFFFFF; int
4A7330:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4A7334:  CMP             R0, R4
4A7336:  BNE             loc_4A7322
4A7338:  MOVS            R0, #1
4A733A:  POP             {R4,R6,R7,PC}
