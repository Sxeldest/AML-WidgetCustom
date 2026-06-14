; =========================================================
; Game Engine Function: sub_9B5A0
; Address            : 0x9B5A0 - 0x9B7C6
; =========================================================

9B5A0:  PUSH            {R4,R6,R7,LR}
9B5A2:  ADD             R7, SP, #8
9B5A4:  CMP             R0, #0
9B5A6:  IT EQ
9B5A8:  BLEQ            sub_8C524
9B5AC:  ADR             R1, dword_9B7D0
9B5AE:  ADD.W           R12, R0, #0xFC
9B5B2:  VLD1.64         {D16-D17}, [R1@128]
9B5B6:  ADR             R1, loc_9B7E0
9B5B8:  VMOV.I32        Q0, #0
9B5BC:  ADR             R2, dword_9B870
9B5BE:  VLD1.64         {D20-D21}, [R1@128]
9B5C2:  ADR             R1, loc_9B7F0
9B5C4:  MOVS            R4, #0x30 ; '0'
9B5C6:  VLD1.64         {D24-D25}, [R1@128]
9B5CA:  ADR             R1, loc_9B800
9B5CC:  VLD1.64         {D22-D23}, [R1@128]
9B5D0:  ADR             R1, loc_9B810
9B5D2:  VLD1.64         {D18-D19}, [R1@128]
9B5D6:  ADR             R1, dword_9B820
9B5D8:  VLD1.64         {D26-D27}, [R1@128]
9B5DC:  ADR             R1, dword_9B830
9B5DE:  VLD1.64         {D28-D29}, [R1@128]
9B5E2:  ADR             R1, dword_9B840
9B5E4:  VLD1.64         {D30-D31}, [R1@128]
9B5E8:  ADR             R1, dword_9B850
9B5EA:  VLD1.64         {D2-D3}, [R1@128]
9B5EE:  MOV             R1, R12
9B5F0:  VST1.32         {D2-D3}, [R1]!
9B5F4:  VMOV.F32        Q1, #1.0
9B5F8:  VST1.32         {D0-D1}, [R1]!
9B5FC:  VST1.32         {D30-D31}, [R1]
9B600:  ADR             R1, dword_9B860
9B602:  VLD1.64         {D30-D31}, [R1@128]
9B606:  ADD.W           R1, R0, #0xAC
9B60A:  VST1.32         {D2-D3}, [R1]!
9B60E:  VST1.32         {D16-D17}, [R1]!
9B612:  VST1.32         {D20-D21}, [R1]!
9B616:  VST1.32         {D0-D1}, [R1]!
9B61A:  VST1.32         {D24-D25}, [R1]
9B61E:  ADR             R1, dword_9B8B0
9B620:  VLD1.64         {D24-D25}, [R1@128]
9B624:  ADD.W           R1, R0, #0x12C
9B628:  VST1.32         {D22-D23}, [R1]!
9B62C:  VST1.32         {D18-D19}, [R1]!
9B630:  MOV             LR, R1
9B632:  VLD1.64         {D2-D3}, [R2@128]
9B636:  ADR             R2, dword_9B880
9B638:  VST1.32         {D26-D27}, [LR]!
9B63C:  MOV             R3, LR
9B63E:  VLD1.64         {D4-D5}, [R2@128]
9B642:  ADR             R2, dword_9B890
9B644:  VST1.32         {D28-D29}, [R3]!
9B648:  VST1.32         {D30-D31}, [R3]!
9B64C:  VST1.32         {D2-D3}, [R3]!
9B650:  VLD1.64         {D6-D7}, [R2@128]
9B654:  ADR             R2, dword_9B8A0
9B656:  VST1.32         {D4-D5}, [R3]!
9B65A:  VMOV.F32        S8, #-1.0
9B65E:  VLD1.64         {D0-D1}, [R2@128]
9B662:  ADR             R2, loc_9B8C0
9B664:  VST1.32         {D6-D7}, [R3]!
9B668:  VST1.32         {D0-D1}, [R3]!
9B66C:  VLD1.64         {D16-D17}, [R2@128]
9B670:  ADR             R2, dword_9B8D0
9B672:  VST1.32         {D24-D25}, [R3]!
9B676:  VLD1.64         {D26-D27}, [R2@128]
9B67A:  ADR             R2, loc_9B8E0
9B67C:  VST1.32         {D16-D17}, [R3]!
9B680:  VST1.32         {D26-D27}, [R3]!
9B684:  VST1.32         {D16-D17}, [R3]!
9B688:  VST1.32         {D22-D23}, [R3]!
9B68C:  VLD1.64         {D28-D29}, [R2@128]
9B690:  ADR             R2, loc_9B8F0
9B692:  VST1.32         {D16-D17}, [R3]!
9B696:  VLD1.64         {D20-D21}, [R2@128]
9B69A:  ADR             R2, loc_9B900
9B69C:  VST1.32         {D28-D29}, [R3]!
9B6A0:  VST1.32         {D20-D21}, [R3]!
9B6A4:  VLD1.64         {D30-D31}, [R2@128]
9B6A8:  MOV             R2, R3
9B6AA:  VST1.32         {D30-D31}, [R2],R4
9B6AE:  VLD1.32         {D22-D23}, [R3]!
9B6B2:  VST1.32         {D16-D17}, [R3]
9B6B6:  MOV.W           R3, #0x160
9B6BA:  VLD1.32         {D24-D25}, [R12],R3
9B6BE:  ADR             R3, dword_9B910
9B6C0:  VLD1.64         {D26-D27}, [R3@128]
9B6C4:  ADR             R3, dword_9B920
9B6C6:  VLD1.64         {D28-D29}, [R3@128]
9B6CA:  ADR             R3, loc_9B930
9B6CC:  VST1.32         {D26-D27}, [R2]!
9B6D0:  VLD1.64         {D30-D31}, [R3@128]
9B6D4:  ADR             R3, loc_9B940
9B6D6:  VST1.32         {D28-D29}, [R2]!
9B6DA:  VMOV            Q14, Q8
9B6DE:  VST1.32         {D30-D31}, [R2]!
9B6E2:  VLD1.64         {D0-D1}, [R3@128]
9B6E6:  ADR             R3, dword_9B950
9B6E8:  VST1.32         {D18-D19}, [R2]!
9B6EC:  VLD1.64         {D2-D3}, [R3@128]
9B6F0:  MOV.W           R3, #0x184
9B6F4:  VST1.32         {D0-D1}, [R2]!
9B6F8:  VLD1.32         {D0-D1}, [LR],R3
9B6FC:  ADR             R3, dword_9B960
9B6FE:  VADD.F32        Q1, Q0, Q1
9B702:  VLD1.64         {D18-D19}, [R3@128]
9B706:  ADR             R3, dword_9B970
9B708:  VST1.32         {D24-D25}, [R12]
9B70C:  VMLA.F32        Q10, Q1, Q9
9B710:  VLD1.64         {D24-D25}, [R3@128]
9B714:  ADR             R3, dword_9B980
9B716:  VADD.F32        S7, S3, S8
9B71A:  VLD1.64         {D26-D27}, [R3@128]
9B71E:  ADR             R3, aFff333; "fff?333?"
9B720:  VST1.32         {D20-D21}, [R2]!
9B724:  VMLA.F32        Q14, Q1, Q13
9B728:  VLD1.64         {D26-D27}, [R3@128]
9B72C:  ADR             R3, dword_9B9A0
9B72E:  VLD1.64         {D30-D31}, [R3@128]
9B732:  MOV.W           R3, #0x198
9B736:  VST1.32         {D22-D23}, [R2]!
9B73A:  VLD1.32         {D22-D23}, [R1],R3
9B73E:  ADR             R3, loc_9B9B0
9B740:  VSUB.F32        Q0, Q11, Q14
9B744:  VLD1.64         {D2-D3}, [R3@128]
9B748:  ADR             R3, dword_9B9C0
9B74A:  VSUB.F32        Q11, Q11, Q10
9B74E:  VST1.32         {D29[0]}, [R1@32]
9B752:  ADR             R1, dword_9B9F0
9B754:  VMOV            Q2, Q14
9B758:  VST1.32         {D28[1]}, [LR@32]
9B75C:  VMLA.F32        Q2, Q0, Q12
9B760:  VST1.32         {D28[0]}, [R2@32]
9B764:  VMLA.F32        Q10, Q11, Q9
9B768:  VLD1.64         {D24-D25}, [R3@128]
9B76C:  ADR             R3, (aFff+4); ""
9B76E:  VLD1.64         {D0-D1}, [R3@128]
9B772:  ADR             R3, dword_9B9E0
9B774:  VLD1.64         {D18-D19}, [R3@128]
9B778:  ADD.W           R3, R0, #0x2E8
9B77C:  ADD.W           R0, R0, #0x2EC
9B780:  VLD1.64         {D22-D23}, [R1@128]
9B784:  ADR             R1, loc_9BA00
9B786:  VST1.32         {D29[1]}, [R3@32]
9B78A:  VST1.32         {D20-D21}, [R0]!
9B78E:  VST1.32         {D4-D5}, [R0]!
9B792:  VST1.32         {D18-D19}, [R0]!
9B796:  VST1.32         {D0-D1}, [R0]!
9B79A:  VST1.32         {D26-D27}, [R0]!
9B79E:  VST1.32         {D30-D31}, [R0]!
9B7A2:  VST1.32         {D2-D3}, [R0]!
9B7A6:  VST1.32         {D24-D25}, [R0]!
9B7AA:  VST1.32         {D16-D17}, [R0]!
9B7AE:  VLD1.64         {D20-D21}, [R1@128]
9B7B2:  ADR             R1, loc_9BA10
9B7B4:  VST1.32         {D22-D23}, [R0]!
9B7B8:  VLD1.64         {D28-D29}, [R1@128]
9B7BC:  VST1.32         {D20-D21}, [R0]!
9B7C0:  VST1.32         {D28-D29}, [R0]
9B7C4:  POP             {R4,R6,R7,PC}
