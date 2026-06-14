; =========================================================
; Game Engine Function: alcCaptureCloseDevice
; Address            : 0x1BC534 - 0x1BC654
; =========================================================

1BC534:  PUSH            {R4,R5,R11,LR}
1BC538:  ADD             R11, SP, #8
1BC53C:  MOV             R4, R0
1BC540:  LDR             R0, =(unk_3827A0 - 0x1BC54C)
1BC544:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BC548:  BL              j_EnterCriticalSection
1BC54C:  LDR             R0, =(dword_382838 - 0x1BC558)
1BC550:  ADD             R0, PC, R0; dword_382838
1BC554:  LDR             R2, [R0]
1BC558:  LDR             R1, [R0]
1BC55C:  CMP             R2, #0
1BC560:  BEQ             loc_1BC59C
1BC564:  LDR             R0, =(dword_382838 - 0x1BC578)
1BC568:  MOV             R2, #0x2895C
1BC570:  ADD             R0, PC, R0; dword_382838
1BC574:  LDR             R3, [R0]
1BC578:  CMP             R1, R4
1BC57C:  BEQ             loc_1BC598
1BC580:  LDR             R0, [R3,R2]!
1BC584:  LDR             R1, [R3]
1BC588:  CMP             R0, #0
1BC58C:  MOV             R0, R3
1BC590:  BNE             loc_1BC574
1BC594:  B               loc_1BC59C
1BC598:  MOV             R1, R3
1BC59C:  CMP             R1, #0
1BC5A0:  LDRNE           R1, [R0]
1BC5A4:  LDRBNE          R1, [R1,#5]
1BC5A8:  CMPNE           R1, #0
1BC5AC:  BNE             loc_1BC5F8
1BC5B0:  LDR             R1, =(byte_382798 - 0x1BC5C0)
1BC5B4:  LDR             R4, [R0]
1BC5B8:  LDRB            R0, [PC,R1]; byte_382798
1BC5BC:  CMP             R0, #0
1BC5C0:  BEQ             loc_1BC5CC
1BC5C4:  MOV             R0, #5; sig
1BC5C8:  BL              raise
1BC5CC:  LDR             R0, =(dword_38283C - 0x1BC5E4)
1BC5D0:  CMP             R4, #0
1BC5D4:  LDR             R1, =(unk_3827A0 - 0x1BC5F0)
1BC5D8:  MOVW            R2, #0xA001
1BC5DC:  ADD             R0, PC, R0; dword_38283C
1BC5E0:  ADDNE           R0, R4, #0x24 ; '$'
1BC5E4:  STR             R2, [R0]
1BC5E8:  ADD             R0, PC, R1; unk_3827A0 ; mutex
1BC5EC:  BL              j_LeaveCriticalSection
1BC5F0:  MOV             R0, #0
1BC5F4:  POP             {R4,R5,R11,PC}
1BC5F8:  LDR             R1, [R0]
1BC5FC:  MOV             R3, #0x2895C
1BC604:  LDR             R2, =(unk_3827A0 - 0x1BC618)
1BC608:  LDR             R1, [R1,R3]
1BC60C:  STR             R1, [R0]
1BC610:  ADD             R0, PC, R2; unk_3827A0 ; mutex
1BC614:  BL              j_LeaveCriticalSection
1BC618:  ADD             R5, R4, #8
1BC61C:  MOV             R0, R5; mutex
1BC620:  BL              j_EnterCriticalSection
1BC624:  MOV             R0, #0x28954
1BC62C:  LDR             R0, [R4,R0]
1BC630:  LDR             R1, [R0,#0x14]
1BC634:  MOV             R0, R4
1BC638:  BLX             R1
1BC63C:  MOV             R0, R5; mutex
1BC640:  BL              j_LeaveCriticalSection
1BC644:  MOV             R0, R4
1BC648:  BL              j_ALCdevice_DecRef
1BC64C:  MOV             R0, #1
1BC650:  POP             {R4,R5,R11,PC}
