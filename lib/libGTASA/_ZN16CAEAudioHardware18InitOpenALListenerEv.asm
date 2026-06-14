; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware18InitOpenALListenerEv
; Address            : 0x39251C - 0x39259E
; =========================================================

39251C:  PUSH            {R4,R6,R7,LR}
39251E:  ADD             R7, SP, #8
392520:  SUB             SP, SP, #0x18
392522:  MOV             R4, R0
392524:  MOVS            R0, #0
392526:  BLX             j_alcOpenDevice
39252A:  LDR             R1, =(unk_613E08 - 0x392534)
39252C:  STR.W           R0, [R4,#0xB80]
392530:  ADD             R1, PC; unk_613E08
392532:  BLX             j_alcCreateContext
392536:  STR.W           R0, [R4,#0xB84]
39253A:  BLX             j_alcMakeContextCurrent
39253E:  MOVW            R0, #0x100A
392542:  MOV.W           R1, #0x3F000000
392546:  BLX             j_alListenerf
39254A:  MOVW            R0, #0x1004
39254E:  MOVS            R1, #0
392550:  MOVS            R2, #0
392552:  MOVS            R3, #0
392554:  BLX             j_alListener3f
392558:  MOVW            R0, #0x1006
39255C:  MOVS            R1, #0
39255E:  MOVS            R2, #0
392560:  MOVS            R3, #0
392562:  BLX             j_alListener3f
392566:  LDR             R0, =(unk_613E18 - 0x39256E)
392568:  MOV             R1, SP
39256A:  ADD             R0, PC; unk_613E18
39256C:  VLD1.64         {D16-D17}, [R0]!
392570:  VLDR            D18, [R0]
392574:  MOV             R0, R1
392576:  VST1.64         {D16-D17}, [R0]!
39257A:  VSTR            D18, [R0]
39257E:  MOVW            R0, #0x100F
392582:  BLX             j_alListenerfv
392586:  MOVS            R0, #0
392588:  BLX             j_alDistanceModel
39258C:  ADR             R0, aOaltrash; "OALTrash"
39258E:  BLX             j__Z14OS_MutexCreatePKc; OS_MutexCreate(char const*)
392592:  LDR             R1, =(trashMutex_ptr - 0x392598)
392594:  ADD             R1, PC; trashMutex_ptr
392596:  LDR             R1, [R1]; trashMutex
392598:  STR             R0, [R1]
39259A:  ADD             SP, SP, #0x18
39259C:  POP             {R4,R6,R7,PC}
