; =========================================================
; Game Engine Function: _ZN16CAEAudioHardwareD2Ev
; Address            : 0x393310 - 0x393322
; =========================================================

393310:  PUSH            {R4,R6,R7,LR}
393312:  ADD             R7, SP, #8
393314:  MOV             R4, R0
393316:  ADDW            R0, R4, #0xB8C; this
39331A:  BLX             j__ZN15CAEStreamThreadD2Ev; CAEStreamThread::~CAEStreamThread()
39331E:  MOV             R0, R4
393320:  POP             {R4,R6,R7,PC}
