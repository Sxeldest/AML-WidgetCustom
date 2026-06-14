; =========================================================
; Game Engine Function: sub_1A9A90
; Address            : 0x1A9A90 - 0x1A9B02
; =========================================================

1A9A90:  PUSH            {R4-R7,LR}
1A9A92:  ADD             R7, SP, #0xC
1A9A94:  PUSH.W          {R11}
1A9A98:  LDR             R0, =(_ZN13CWaterCannons8aCannonsE_ptr - 0x1A9AA0)
1A9A9A:  LDR             R1, =(_ZTV25CAEWaterCannonAudioEntity_ptr - 0x1A9AA2)
1A9A9C:  ADD             R0, PC; _ZN13CWaterCannons8aCannonsE_ptr
1A9A9E:  ADD             R1, PC; _ZTV25CAEWaterCannonAudioEntity_ptr
1A9AA0:  LDR             R4, [R0]; CWaterCannons::aCannons ...
1A9AA2:  LDR             R0, [R1]; `vtable for'CAEWaterCannonAudioEntity ...
1A9AA4:  ADD.W           R5, R0, #8
1A9AA8:  ADDW            R0, R4, #0xAC4; this
1A9AAC:  STR.W           R5, [R4,#(dword_A7CE24 - 0xA7C360)]
1A9AB0:  BLX             j__ZN25CAEWaterCannonAudioEntity9TerminateEv; CAEWaterCannonAudioEntity::Terminate(void)
1A9AB4:  LDR             R0, =(_ZTV14CAEAudioEntity_ptr - 0x1A9ABA)
1A9AB6:  ADD             R0, PC; _ZTV14CAEAudioEntity_ptr
1A9AB8:  LDR             R0, [R0]; `vtable for'CAEAudioEntity ...
1A9ABA:  ADD.W           R6, R0, #8
1A9ABE:  ADDW            R0, R4, #0xACC; this
1A9AC2:  STR.W           R6, [R4,#(dword_A7CE24 - 0xA7C360)]
1A9AC6:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
1A9ACA:  ADD.W           R0, R4, #0x6F8; this
1A9ACE:  STR.W           R5, [R4,#(dword_A7CA58 - 0xA7C360)]
1A9AD2:  BLX             j__ZN25CAEWaterCannonAudioEntity9TerminateEv; CAEWaterCannonAudioEntity::Terminate(void)
1A9AD6:  ADD.W           R0, R4, #0x700; this
1A9ADA:  STR.W           R6, [R4,#(dword_A7CA58 - 0xA7C360)]
1A9ADE:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
1A9AE2:  ADD.W           R0, R4, #0x32C; this
1A9AE6:  STR.W           R5, [R4,#(dword_A7C68C - 0xA7C360)]
1A9AEA:  BLX             j__ZN25CAEWaterCannonAudioEntity9TerminateEv; CAEWaterCannonAudioEntity::Terminate(void)
1A9AEE:  STR.W           R6, [R4,#(dword_A7C68C - 0xA7C360)]
1A9AF2:  ADD.W           R0, R4, #0x334; this
1A9AF6:  POP.W           {R11}
1A9AFA:  POP.W           {R4-R7,LR}
1A9AFE:  B.W             j_j__ZN8CAESoundD2Ev; j_CAESound::~CAESound()
