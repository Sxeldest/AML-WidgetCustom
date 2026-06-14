; =========================================================
; Game Engine Function: _ZN6CGlass29WindowRespondsToSoftCollisionEP7CEntityf
; Address            : 0x5AC904 - 0x5AC954
; =========================================================

5AC904:  PUSH            {R4,R6,R7,LR}
5AC906:  ADD             R7, SP, #8
5AC908:  VLDR            S0, =50.0
5AC90C:  VMOV            S2, R1
5AC910:  MOV             R4, R0
5AC912:  VCMPE.F32       S2, S0
5AC916:  VMRS            APSR_nzcv, FPSCR
5AC91A:  BLE             locret_5AC952
5AC91C:  LDR             R0, [R4,#0x1C]
5AC91E:  ANDS.W          R0, R0, #1
5AC922:  BEQ             locret_5AC952
5AC924:  LDRB.W          R0, [R4,#0x144]
5AC928:  LSLS            R0, R0, #0x1B
5AC92A:  IT MI
5AC92C:  POPMI           {R4,R6,R7,PC}
5AC92E:  LDR             R0, =(AudioEngine_ptr - 0x5AC936)
5AC930:  LDR             R1, [R4,#0x14]
5AC932:  ADD             R0, PC; AudioEngine_ptr
5AC934:  ADD.W           R2, R1, #0x30 ; '0'
5AC938:  CMP             R1, #0
5AC93A:  LDR             R0, [R0]; AudioEngine ; this
5AC93C:  IT EQ
5AC93E:  ADDEQ           R2, R4, #4; CVector *
5AC940:  MOVS            R1, #0x7B ; '{'; int
5AC942:  BLX.W           j__ZN12CAudioEngine25ReportGlassCollisionEventEiR7CVector; CAudioEngine::ReportGlassCollisionEvent(int,CVector &)
5AC946:  LDR.W           R0, [R4,#0x144]
5AC94A:  ORR.W           R0, R0, #0x10
5AC94E:  STR.W           R0, [R4,#0x144]
5AC952:  POP             {R4,R6,R7,PC}
