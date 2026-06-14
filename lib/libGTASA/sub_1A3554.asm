; =========================================================
; Game Engine Function: sub_1A3554
; Address            : 0x1A3554 - 0x1A3588
; =========================================================

1A3554:  PUSH            {R4,R5,R7,LR}
1A3556:  ADD             R7, SP, #8
1A3558:  LDR             R0, =(_ZN8CGarages8aGaragesE_ptr - 0x1A3566)
1A355A:  MOVW            R1, #0x29B0
1A355E:  MOVW            R4, #0xD5D0
1A3562:  ADD             R0, PC; _ZN8CGarages8aGaragesE_ptr
1A3564:  MOVT            R4, #0xFFFF
1A3568:  LDR             R0, [R0]; CGarages::aGarages ...
1A356A:  ADD             R0, R1; this
1A356C:  LDR             R1, =(_ZTV14CAEAudioEntity_ptr - 0x1A3572)
1A356E:  ADD             R1, PC; _ZTV14CAEAudioEntity_ptr
1A3570:  LDR             R1, [R1]; `vtable for'CAEAudioEntity ...
1A3572:  ADD.W           R5, R1, #8
1A3576:  STR.W           R5, [R0,#-8]
1A357A:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
1A357E:  ADDS            R4, #0xD8
1A3580:  SUB.W           R0, R0, #0xD8
1A3584:  BNE             loc_1A3576
1A3586:  POP             {R4,R5,R7,PC}
