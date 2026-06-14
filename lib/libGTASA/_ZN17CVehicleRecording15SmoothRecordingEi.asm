; =========================================================
; Game Engine Function: _ZN17CVehicleRecording15SmoothRecordingEi
; Address            : 0x3243AC - 0x32440A
; =========================================================

3243AC:  PUSH            {R7,LR}
3243AE:  MOV             R7, SP
3243B0:  LDR             R1, =(_ZN17CVehicleRecording14StreamingArrayE_ptr - 0x3243B6)
3243B2:  ADD             R1, PC; _ZN17CVehicleRecording14StreamingArrayE_ptr
3243B4:  LDR             R1, [R1]; CVehicleRecording::StreamingArray ...
3243B6:  ADD.W           LR, R1, R0,LSL#4
3243BA:  LDR.W           R1, [LR,#8]!
3243BE:  SUBS            R1, #0x20 ; ' '
3243C0:  CMP             R1, #0x21 ; '!'
3243C2:  IT CC
3243C4:  POPCC           {R7,PC}
3243C6:  VMOV.F32        S0, #0.5
3243CA:  LDR.W           R12, [LR,#-4]
3243CE:  MOVS            R2, #0
3243D0:  LDR.W           R3, [R12]
3243D4:  ADD.W           R1, R12, R2
3243D8:  LDR             R0, [R1,#0x40]
3243DA:  ADD             R0, R3
3243DC:  VMOV            S2, R0
3243E0:  VCVT.F32.U32    S2, S2
3243E4:  VMUL.F32        S2, S2, S0
3243E8:  VCVT.U32.F32    S4, S2
3243EC:  VCVT.U32.F32    S2, S2
3243F0:  VSTR            S4, [R1,#0x20]
3243F4:  ADD.W           R1, R2, #0x40 ; '@'
3243F8:  VMOV            R3, S2
3243FC:  LDR.W           R0, [LR]
324400:  ADDS            R2, #0x20 ; ' '
324402:  SUBS            R0, #0x20 ; ' '
324404:  CMP             R1, R0
324406:  BCC             loc_3243D4
324408:  POP             {R7,PC}
